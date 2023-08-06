import os
import copy
import math
import time
from threading import Thread
from easydict import EasyDict
from collections import defaultdict
import shutil

import numpy as np

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.distributions import Categorical

from data.generator import Generator
from base import Solution, Counter, Recorder
from data import PhysicalNetwork, VNSimulator
from utils import count_parameters, vis_g
from .net import GNN_rank, Critic
from ..rl_solver import *
from .network_env import graphLevelEnv
from solver.learning.utils import apply_mask_to_logit, apply_zero_mask_to_logit

class GALVNESolver(RLSolver, nn.Module):
    name = 'gal_vne'
    def __init__(self, **kwargs):
        nn.Module.__init__(self)
        RLSolver.__init__(self, **kwargs)
        # parameters
        self.config = EasyDict(kwargs)
        self.other_config = copy.deepcopy(self.config)
        self.other_config.pop('vns_sub_setting')
        self.other_config.pop('vns_setting')
        # 
        self.EnvClass = kwargs['EnvClass']
        self.read_samples = kwargs.get("read_samples", False)
        # solver parameters
        # node mapping
        self.matching_method = kwargs.get('matching_method', 'greedy')
        # link mapping
        self.shortest_method = kwargs.get('shortest_method', 'bfs_shortest')
        self.k_shortest = kwargs.get('k_shortest', 10)
        # PPO params
        self.repeat_times = kwargs.get('repeat_times', 10)
        self.gae_lambda = kwargs.get('gae_lambda', 0.98)
        self.eps_clip = kwargs.get('eps_clip', 0.2)
        # model
        if self.config.baselin_solver_name == 'RW':
            self.ranker = RWNodeRank()
        elif self.config.baselin_solver_name == 'GRC':
            self.ranker = GRCNodeRank()
        elif self.config.baselin_solver_name == 'NRM':
            self.ranker = NRMNodeRank()
        self.policy_v = GNN_rank(**kwargs, in_channels = 4, device = self.device)
        self.policy_p = GNN_rank(**kwargs, in_channels = 10, device = self.device)
        self.critic = Critic(**kwargs, in_channels_v = 4, in_channels_p = 10, device = self.device)
        self = self.to(self.device)
        print(f"num of params: {count_parameters(self)}")
        # optimizer
        self.optimizer = torch.optim.Adam(
            self.parameters(), 
            lr= self.config.lr, weight_decay= self.config.weight_decay)

        if self.config.read_samples:
            self.load_env = self.read_data()
        # timer
        self.time_nn = 0.0
        self.time_rank = 0.0
        self.time_search = 0.0
    
    def env_close(self):
        try:
            if os.path.exists(self.config.sub_vns_dataset_dir):
                shutil.rmtree(self.config.sub_vns_dataset_dir)
        except OSError as e:
            print("Error: %s : %s" % (self.config.sub_vns_dataset_dir, e.strerror))
    
    def env_ready(self, env):
        # env
        summary_dir = os.path.join(env.recorder.save_dir, "rl")
        record_dir = summary_dir
        os.makedirs(record_dir, exist_ok=True)
        # 
        vn_simulator = VNSimulator.from_setting(self.config.get('vns_sub_setting'), True, self.other_config)
        rl_recorder = Recorder(summary_dir=summary_dir, save_dir=record_dir, if_temp_save_records=True)
        env = graphLevelEnv(env.init_pn, vn_simulator, recorder=rl_recorder, kwargs=vars(self.config))
        # data
        if not self.config.fix_sub_env:
            Generator.generate_dataset(self.config, pn=False, vns=False, sub_vns = True, save=True)
        env.vns_dataset_dir = self.config.sub_vns_dataset_dir
        return env
        
    def train_mode(self):
        self.policy_v.train()
        self.policy_p.train()
        self.train()
    
    def estimate_obs(self, observation):
        x_v, adj_t_v = self.policy_v.aggregate_graph(observation['vn'])
        x_p, adj_t_p = self.policy_p.aggregate_graph(observation['pn'])
        return self.critic(x_v, adj_t_v, x_p, adj_t_p)

    def select_action(self, instance, mask=None, sample=True, visualize=False,timing=False):
        '''
            instance = {'vn': vn, 'pn': pn}
        '''
        vn, pn  = instance['vn'], instance['pn']
        # pn scores
        pn_node_dict, _ = self.policy_p.rank(pn, timing=timing) 
        sorted_pn_nodes = list(pn_node_dict)
        # vn scores
        initial_scores = self.policy_v.act(instance['vn']).squeeze(-1) # [n_nodes]
        initial_action_logits = F.softmax(initial_scores, dim=-1)
        if visualize:
            print("RL scores: ", initial_action_logits.detach().cpu())
        if sample:
            # mask
            n_actions = initial_action_logits.shape[0]
            mask = torch.ones_like(initial_action_logits).to(self.device)
            sorted_vn_nodes = []
            action_his = []
            total_action_logits = 0
            for _ in range(n_actions):
                # update mask
                candicate_action_logits = apply_zero_mask_to_logit(initial_action_logits, mask)
                candicate_action_logits = candicate_action_logits/candicate_action_logits.sum()
                candicate_action_dist = Categorical(candicate_action_logits)
                # sample
                if sample:
                    action = candicate_action_dist.sample()
                else:
                    action = candicate_action_logits.argmax(-1)
                action_logprob = candicate_action_dist.log_prob(action)
                # mask
                action_his.append(action)
                mask[action] = 0
                # records
                sorted_vn_nodes.append(action.item())
                total_action_logits += action_logprob
        else:
            sorted_vn_nodes = list(self.policy_v.to_dict(vn, initial_action_logits.detach().cpu().numpy(), sort=True))
            total_action_logits = 0
            action_his = [torch.zeros_like(initial_action_logits)]
        sorted_vn_nodes  = list(sorted_vn_nodes)
        return (sorted_vn_nodes, sorted_pn_nodes), total_action_logits, torch.vstack(action_his)

    def evaluate_actions(self, old_observations, old_actions, masks=None, return_others=False):
        values, action_logprobs, dist_entropys, others = [], [], [], defaultdict(list)
        for old_observation, old_action in zip(old_observations, old_actions):
            value, action_logprob, dist_entropy, other = self.evaluate_action(old_observation, old_action, return_others = return_others)
            values.append(value)
            action_logprobs.append(action_logprob)
            dist_entropys.append(dist_entropy)
            others['mask_actions_probs'].append(other.get('mask_actions_probs', torch.zeros(1)))
            others['prediction_loss'].append(other.get('prediction_loss', torch.zeros(1)))
        
        others['mask_actions_probs'] = torch.sum(torch.hstack(others['mask_actions_probs']))
        others['prediction_loss'] = torch.sum(torch.hstack(others['prediction_loss']))
        return torch.hstack(values), torch.hstack(action_logprobs), torch.hstack(dist_entropys), others
    
    def evaluate_action(self, old_observation, old_action, masks=None, return_others=False):
        instance = old_observation
        vn, pn  = instance ['vn'], instance ['pn']
        # vn scores
        initial_scores = self.policy_v.act(instance['vn']).squeeze(-1) # [n_nodes]
        initial_action_logits = F.softmax(initial_scores, dim=-1)
        # mask
        mask = torch.ones_like(initial_action_logits).to(self.device)
        action_logprobs = 0
        for act_idx in range(len(old_action)):
            old_act = old_action[act_idx]
            # update mask
            candicate_action_logits = apply_zero_mask_to_logit(initial_action_logits, mask) 
            candicate_action_logits = candicate_action_logits/candicate_action_logits.sum() 
            candicate_action_dist = Categorical(candicate_action_logits)
            action_logprob = candicate_action_dist.log_prob(old_act)
            # mask
            mask[old_act] = 0
            action_logprobs += action_logprob
        # 
        dist_entropy = torch.FloatTensor([0])  
        if return_others:
            values = self.estimate_obs(old_observation)
        else: 
            values = torch.FloatTensor([0])
        return values, action_logprobs, dist_entropy, {}

    def learn(self, env):
        ##########################  pretrain         ##########################
        if (self.config.num_pretrain_epochs > 0):
            print(f"\n{'-' * 20}  Pretrain  {'-' * 20}\n")
            self.pretrain(env, num_epochs=self.config.num_pretrain_epochs, start_epoch=0)
            self.load_model(env)
        else:
            self.load_model(env, self.config.pretrained_model_path)
        ##########################  prepare rl env   ##########################
        self.env_close()
        return True

    
    def eval_mode(self):
        self.policy_v.gnn_time = 0.0
        self.policy_v.rank_time = 0.0
        self.policy_p.gnn_time = 0.0
        self.policy_p.rank_time = 0.0
        self.eval()
    
    def meta_learn(self, env, num_epochs=1, start_epoch=0, save_timestep=1000,  **kwargs):
        print(f"\n{'-' * 20}  RL train  {'-' * 20}\n")
        init_env = copy.deepcopy(env)
        best_score = -np.inf
        self.start_time = time.time()
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            self.train_mode()
            # sub env used for training
            self.rlenv = self.env_ready(init_env)
            buffer = RolloutBuffer()
            # reset env
            instance = self.rlenv.reset()
            pbar = tqdm.tqdm(desc=f'RL train with {self.config.solver_name} in epoch {epoch_id}', total=self.rlenv.num_vns) if self.verbose <= 1 else None
            
            for i in range(self.rlenv.num_vns):
                ### --- self.rlenv --- ###
                actions, actions_logprob, action_his = self.select_action(instance, sample=True)
                # solve problem
                if self.config.two_stage:
                    solution = self.rl_two_stage_solve(instance, sorted_v_nodes = actions[0], sorted_p_nodes = actions[1])
                else:
                    solution = self.rl_solve(instance, sorted_v_nodes = actions[0], sorted_p_nodes = actions[1])
                next_instance, reward, done, info = self.rlenv.step(solution)
                

                buffer.add(instance, action_his, reward, done, actions_logprob, value=value)
                instance = next_instance
                
                if buffer.size() >= self.config.target_steps:
                    # buffer.compute_mc_returns(gamma=self.gamma)
                    if self.config.reward_type =="1step":
                        buffer.compute_direct_returns()
                    elif self.config.reward_type in ["mstep"]:
                        buffer.compute_truncated_returns(gamma = self.gamma)
                    self.buffer.merge(buffer)
                    buffer = RolloutBuffer()

                # update parameters
                if self.buffer.size() >= self.config.target_steps:
                    if self.config.update_algo=="pg":
                        update_info = self.pg_update()
                    elif self.config.update_algo=="ppo":
                        update_info = self.ppo_update()
                    elif self.config.update_algo=="a2c":
                        update_info = self.a2c_update()
                    else:
                        assert 0, f"{self.config.update_algo} Not implemented!"
                    loss = update_info.get("loss", 0)
                    
                    ### --- self.rlenv --- ###
                    if pbar is not None: 
                        pbar.update(self.config.target_steps)
                        pbar.set_postfix({
                            'lr': self.optimizer.defaults['lr'],
                            'loss': f'{loss:.3f}',
                            'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:04d}',
                        })
                # epoch finished
            pbar.close()
            sub_summary_info = self.rlenv.summary_records(stage = "RL", epoch_id=epoch_id, is_verbose=self.config.verbose)
            if  (epoch_id + 1) % self.eval_interval == 0:
                summary_info = self.rl_validate(init_env, epoch_id, checkpoint_path=None)
                save_dir = env.recorder.save_dir
                if summary_info['acceptance_rate'] > best_score:
                    best_score = summary_info['acceptance_rate']
                    torch.save({'policy': self.state_dict(),
                                'optimizer_state_dict': self.optimizer.state_dict(),
                                'best_score': best_score},
                            os.path.join(save_dir, 'models/rl_model.pth'))
                    print(f"saved RL model to {os.path.join(save_dir, 'models/rl_model.pth')} at epoch {epoch_id}")

        self.end_time = time.time()
        elapsed_time = (self.end_time - self.start_time)
        if self.config.num_train_epochs >0:
            print(f'Total training time: { elapsed_time//3600} hours {(elapsed_time%3600)/60:2f} minutes')
            print(f"used RL model in {os.path.join(env.recorder.save_dir, 'models/rl_model.pth')}")
    
    def pretrain(self, env, num_epochs=1, start_epoch=0):
        init_env = copy.deepcopy(env)
        best_score = -np.inf
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            self.train_mode()
            print(f'\nEpoch {epoch_id}') if self.verbose >= 2 else None
            # sub env used for training
            if not self.config.fix_sub_env:
                Generator.generate_dataset(self.config, pn=False, vns=False, sub_vns = True, save=True)
            sub_env = self.EnvClass.sub_env_from_config(self.config)
            sub_env.vns_dataset_dir = self.config.sub_vns_dataset_dir
            instance = sub_env.reset()
            branch = "two_stage" if self.config.two_stage else "joint"
            pbar = tqdm.tqdm(desc=f'Pretrain {self.config.solver_name} ({branch}) EP-{epoch_id}', total=sub_env.num_vns) if self.verbose <= 1 else None
            
            loss_list = []
            while True:
                # execute embeding process
                if self.config.two_stage:
                    solution, rank_loss, reg_loss = self.two_stage_solve(instance, visualize=False)
                else:
                    solution, rank_loss, reg_loss = self.solve(instance, visualize=False)
                loss_list.append(rank_loss+reg_loss)
                # step
                next_instance, _, done, info = sub_env.step(solution)
                
                if len(loss_list) >= self.config.pretrain_batch_size: 
                    # update parameters
                    self.optimizer.zero_grad()
                    loss = torch.hstack(loss_list).mean()
                    loss.backward()
                    # if self.config.clip_grad:
                    #     torch.nn.utils.clip_grad_norm_(self.parameters(), self.config.max_grad_norm)
                    self.optimizer.step()
                    loss_list = []
                    
                    if pbar is not None: 
                        pbar.update(self.config.pretrain_batch_size)
                        pbar.set_postfix({
                            'lr': self.optimizer.defaults['lr'],
                            'loss': f'{rank_loss.item():.4f}',
                            'reg': f'{reg_loss:.5f}',
                            'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:04d}',
                        })
                if done:
                    break
                instance = next_instance
  
            if pbar is not None: pbar.close()
            # if epoch_id==start_epoch+num_epochs-1: 
            sub_summary_info = sub_env.summary_records(stage = "pretrain", epoch_id=epoch_id, is_verbose=self.config.verbose)
            # validate
            if  (epoch_id + 1) % self.eval_interval == 0:
                summary_info = self.validate(init_env, epoch_id, checkpoint_path=None)
                # save trained model to path
                save_dir = env.recorder.save_dir
                if summary_info['acceptance_rate'] > best_score:
                    best_score = summary_info['acceptance_rate']
                    torch.save({'policy': self.state_dict(),
                                'optimizer_state_dict': self.optimizer.state_dict(),
                                'best_score': best_score,},
                            os.path.join(save_dir, 'models/supervised_model.pth'))
                    print(f"saved supervised imitation model to {os.path.join(save_dir, 'models/supervised_model.pth')} at epoch {epoch_id}")
        return best_score
        
    def rl_solve(self, instance, sorted_v_nodes, sorted_p_nodes, timing=False):
        vn, pn  = instance['vn'], instance['pn']
        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node, max_depth=self.config['visit_depth'])
        return solution
    
    def rl_two_stage_solve(self, instance, sorted_v_nodes, sorted_p_nodes):
        vn, pn  = instance['vn'], instance['pn']        
        solution = Solution(vn)
        node_mapping_result = Controller.node_mapping(vn, pn, 
                                                sorted_v_nodes=sorted_v_nodes, 
                                                sorted_p_nodes=sorted_p_nodes, 
                                                solution=solution, 
                                                reusable=False, inplace=True, matching_method=self.matching_method)
        
        if node_mapping_result:
            link_mapping_result = self.link_mapping(vn, pn, solution)
            if link_mapping_result:
                # SUCCESS
                solution['result'] = True
            else:
                # FAILURE
                solution['route_result'] = False
                solution['result'] = False
        else:
            # FAILURE
            solution['place_result'] = False
            solution['result'] = False
        # print("solution: ",vars(solution))
        return solution

    def solve(self, instance, read_samples=False, visualize=False, timing=False):
        # 
        if read_samples:
            vn, vn_heuristic_scores, pn, pn_heuristic_scores = instance
            vn_heuristic_scores, pn_heuristic_scores = torch.from_numpy(vn_heuristic_scores).float(), torch.from_numpy(pn_heuristic_scores).float()
        else:
            vn, pn  = instance['vn'], instance['pn']
            vn_heuristic_scores, pn_heuristic_scores = None, None
        # 
        # ############################ Policy Network ############################
        if timing:
            gnn_start_time = time.time()
        vn_nodes_rank, vn_nodes_score = self.policy_v.rank(vn,timing=timing)
        pn_nodes_rank, pn_nodes_score = self.policy_p.rank(pn,timing=timing)
        if timing:
            gnn_end_time = time.time()

        # 
        # ############################ post-search ############################
        if timing:
            search_start = time.time()
        largest_rank_vid = list(vn_nodes_rank.keys())[0]
        vn_node_level = nx.single_source_shortest_path_length(vn, largest_rank_vid)
        vn_node_level_rank_list = []
        for node, level in vn_node_level.items():
            vn_node_level_rank_list.append({'node': node, 'level': level, 'rank': vn_nodes_rank[node]})
        sorted_vn_node = sorted(vn_node_level_rank_list, key=lambda r: (r['level'], -r['rank']))

        sorted_v_nodes = [n['node'] for n in sorted_vn_node]
        sorted_p_nodes = [n for n in pn_nodes_rank]
        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node, max_depth=self.config['visit_depth'])
        if timing:
            search_end = time.time()
            self.time_search += search_end - search_start
        # ############################ post-search end ############################
        
        loss, reg_loss = 0, 0
        if self.training or visualize:
            # compute supervised loss
            if self.config.learnable==0:
                loss = self.supervised_rank_loss(vn, vn_nodes_score, vn_heuristic_scores, read_samples, visualize)
                if self.config.l2reg_rate>0:
                    vn_energy = self.energy_loss(vn_nodes_score, vn)
                    reg_loss = self.config.l2reg_rate*vn_energy
            elif self.config.learnable==1:
                loss = self.supervised_rank_loss(pn, pn_nodes_score, pn_heuristic_scores, read_samples,  visualize)
                if self.config.l2reg_rate>0:
                    pn_energy = self.energy_loss(pn_nodes_score,  pn)
                    reg_loss = self.config.l2reg_rate*pn_energy
            elif self.config.learnable==2:
                if visualize:  
                    print(f"---------- VN ---------\n")
                    vis_g(vn)
                    print("solution: ", vars(solution))
                vn_loss = self.supervised_rank_loss(vn, vn_nodes_score, vn_heuristic_scores, read_samples, visualize)
                if visualize: assert 0
                pn_loss = self.supervised_rank_loss(pn, pn_nodes_score, pn_heuristic_scores, read_samples, visualize)
                loss = vn_loss + pn_loss
                if self.config.l2reg_rate>0:
                    vn_energy = self.energy_loss(vn_nodes_score, vn)
                    pn_energy = self.energy_loss(pn_nodes_score, pn)
                    # print("loss: ", loss.item(), "vn_energy: ", vn_energy, "pn_energy: ", pn_energy)
                    reg_loss = self.config.l2reg_rate*(vn_energy + pn_energy)
        return solution, loss, reg_loss
    
    def link_mapping(self, vn, pn, solution):
        r"""Seek a path connecting """
        if self.edge_rank is None:
            sorted_v_edges = vn.edges
        else:
            vn_edges_rank_dict = self.edge_rank(vn)
            vn_edges_sort = sorted(vn_edges_rank_dict.items(), reverse=True, key=lambda x: x[1])
            sorted_v_edges = [edge_value[0] for edge_value in vn_edges_sort]

        link_mapping_result = Controller.link_mapping(vn, pn, solution=solution, 
                                                        sorted_v_edges=sorted_v_edges, 
                                                        shortest_method=self.shortest_method,
                                                        k=self.k_shortest, inplace=True)
        return link_mapping_result
    
    def two_stage_solve(self, instance, visualize=False, timing=False):
        vn, pn  = instance['vn'], instance['pn']
        solution = Solution(vn)
        # ####################### Policy Network Phase #######################
        vn_rank, vn_nodes_score = self.policy_v.rank(vn, timing=timing)
        pn_rank, pn_nodes_score = self.policy_p.rank(pn, timing=timing)
        # ####################### Policy Network Phase end #######################
        
        # ####################### Post-search Phase #######################
        if timing:
            search_start = time.time()
        # 
        sorted_v_nodes = list(vn_rank)
        sorted_p_nodes = list(pn_rank)
        
        node_mapping_result = Controller.node_mapping(vn, pn, 
                                                sorted_v_nodes=sorted_v_nodes, 
                                                sorted_p_nodes=sorted_p_nodes, 
                                                solution=solution, 
                                                reusable=False, inplace=True, matching_method=self.matching_method)
        
        if node_mapping_result:
            link_mapping_result = self.link_mapping(vn, pn, solution)
            if link_mapping_result:
                # SUCCESS
                solution['result'] = True
            else:
                # FAILURE
                solution['route_result'] = False
                solution['result'] = False
        else:
            # FAILURE
            solution['place_result'] = False
            solution['result'] = False
        # print("solution: ",vars(solution))
        if timing:
            search_end = time.time()
            self.time_search += search_end - search_start
        # ####################### Post-search Phase end #######################
        # compute supervised loss
        reg_loss = 0
        if self.training:
            vn_loss = self.supervised_rank_loss(vn, vn_nodes_score, visualize)
            pn_loss = self.supervised_rank_loss(pn, pn_nodes_score, visualize)
            loss = vn_loss + pn_loss
            if self.config.l2reg_rate>0:
                vn_energy = self.energy_loss(vn_nodes_score, vn)
                pn_energy = self.energy_loss(pn_nodes_score, pn)
                reg_loss = self.config.l2reg_rate*(vn_energy + pn_energy)
        else: 
            loss = torch.zeros(1)
        return solution, loss, reg_loss
    
    
    def ppo_update(self, ):
        assert self.buffer.size() >= self.config.batch_size
        batch_observations = self.buffer.observations
        batch_actions = self.buffer.actions
        batch_old_action_logprobs = torch.hstack(self.buffer.logprobs).detach()
        batch_rewards = torch.FloatTensor(self.buffer.rewards).to(self.device)
        batch_returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        batch_masks = None

        sample_times = 1 + int(self.buffer.size() * self.repeat_times / self.config.batch_size)
        loss_logs = []
        for i in range(sample_times):
            sample_indices = torch.randint(0, self.buffer.size(), size=(self.config.batch_size,)).long().to(self.device)
            observations  = get_observations_sample(batch_observations, sample_indices)
            actions, returns = get_observations_sample(batch_actions, sample_indices), batch_returns[sample_indices]
            rewards = batch_rewards[sample_indices]
            old_action_logprobs = batch_old_action_logprobs[sample_indices]
            masks = batch_masks[sample_indices] if batch_masks is not None else None
            # evaluate actions and observations
            # values, action_logprobs, dist_entropy, other = self.evaluate_actions(observations, actions, masks=masks, return_others=False)
            # evaluate all samples to get culmulative values
            batch_values, batch_action_logprobs, _, _ = self.evaluate_actions(batch_observations, batch_actions, masks=masks, return_others=True)
            if self.config.reward_type =="1step":
                batch_return_values =  (batch_values).to(self.device)
            elif self.config.reward_type =="mstep":
                batch_return_values =  torch.FloatTensor(self.buffer.compute_truncated_values(batch_values, self.gamma)).to(self.device)
            values, return_values, action_logprobs = batch_values[sample_indices], batch_return_values[sample_indices], batch_action_logprobs[sample_indices]
            
            # calculate advantage
            advantages = returns - return_values.detach()
            if self.norm_advantage:
                advantages = (advantages - advantages.mean()) / (advantages.std() + 1e-9)
            ratio = torch.exp(action_logprobs - old_action_logprobs)
            surr1 = ratio * advantages
            surr2 = torch.clamp(ratio, 1. - self.eps_clip, 1. + self.eps_clip) * advantages
            actor_loss = - torch.min(surr1, surr2).mean()
            critic_loss = self.criterion_critic(rewards, values)
            # entropy_loss = dist_entropy.mean()

            # mask_loss = other.get('mask_actions_probs', 0)
            # prediction_loss = other.get('prediction_loss', 0)

            loss = actor_loss + self.coef_critic_loss * critic_loss
                # - self.coef_entropy_loss * entropy_loss + self.coef_mask_loss * mask_loss + prediction_loss
            loss_logs.append(loss)
            # update parameters
            self.optimizer.zero_grad()
            loss.backward()
            if self.clip_grad:
                grad_clipped = torch.nn.utils.clip_grad_norm_(self.parameters(), self.max_grad_norm)
            self.optimizer.step()
    
            if self.open_tb and self.update_time % self.log_interval == 0:
                info = {
                    'lr': self.optimizer.defaults['lr'],
                    'loss/loss': loss.detach().cpu().numpy(),
                    'loss/actor_loss': actor_loss.detach().cpu().numpy(),
                    'loss/critic_loss(coef)': self.coef_critic_loss *critic_loss.detach().cpu().numpy(),
                    # 'loss/entropy_loss': entropy_loss.detach().cpu().numpy(),
                    'value/logprob': action_logprobs.detach().mean().cpu().numpy(),
                    'value/old_action_logprob': old_action_logprobs.detach().mean().cpu().numpy(),
                    'value/value': values.detach().mean().cpu().numpy(),
                    'value/return': returns.mean().cpu().numpy(),
                    'value/return_values': return_values.detach().mean().cpu().numpy(),
                    'value/advantage': advantages.detach().mean().cpu().numpy(),
                    'value/rewards': rewards.mean().cpu().numpy(),
                    'grad/grad_clipped': grad_clipped.detach().cpu().numpy()
                }
                only_tb = not (i == sample_times-1)
                self.log(info, self.update_time, only_tb=only_tb)
            self.update_time += 1
        self.buffer.clear()
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        loss_logs = torch.hstack(loss_logs)
        return {"loss": torch.mean(loss_logs)}
    
    def pg_update(self, ):
        observations = self.buffer.observations
        actions_his = self.buffer.actions
        returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        masks = None
        # action_logprobs = torch.hstack(self.buffer.logprobs).to(self.device)
        _, action_logprobs, _, _ = self.evaluate_actions(observations, actions_his, masks=masks, return_others=False)
        
        loss = - (action_logprobs * returns).mean()

        self.optimizer.zero_grad()
        loss.backward()
        if self.clip_grad:
            torch.nn.utils.clip_grad_norm_(self.parameters(), self.max_grad_norm)
        self.optimizer.step()

        info = {
            'lr': self.optimizer.defaults['lr'],
            'loss/loss': loss.detach().cpu(),
            'value/logprob': action_logprobs.detach().mean().cpu(),
            'value/return': returns.detach().mean().cpu(),
        }
        info_str = self.log(info, self.update_time, only_tb=False)

        self.buffer.clear()
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        self.update_time += 1
        return {'loss':loss.detach()}

    def a2c_update(self, ):
        batch_logprobs = self.buffer.logprobs
        batch_values = self.buffer.values
        observations = self.buffer.observations
        actions_his = self.buffer.actions
        rewards = torch.FloatTensor(self.buffer.rewards).to(self.device)
        returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        masks = None
        values, action_logprobs, _, _ = self.evaluate_actions(observations, actions_his, masks=masks, return_others=True)
        # returned values
        if self.config.reward_type =="1step":
            return_values =  values.to(self.device)
        elif self.config.reward_type in ["mstep"]:
            return_values =  torch.FloatTensor(self.buffer.compute_truncated_values(values, self.gamma)).to(self.device)
        
        advantages = returns - return_values.detach()
        if self.norm_advantage:
            advantages = (advantages - advantages.mean()) / (advantages.std() + 1e-8)
        actor_loss = - (action_logprobs * advantages).mean()
        if self.config.reward_type in ["1step", "mstep"]:
            critic_loss = F.mse_loss(rewards, values)
        # entropy_loss = dist_entropy.mean()
        loss = actor_loss + self.coef_critic_loss * critic_loss #+ self.coef_entropy_loss * entropy_loss

        self.optimizer.zero_grad()
        loss.backward()
        if self.clip_grad:
            grad_clipped = torch.nn.utils.clip_grad_norm_(self.parameters(), self.max_grad_norm)
        self.optimizer.step()

        info = {
            'lr': self.optimizer.defaults['lr'],
            'loss/loss': loss.detach().cpu().numpy(),
            'loss/actor_loss': actor_loss.detach().cpu().numpy(),
            'loss/critic_loss': critic_loss.detach().cpu().numpy(),
            'value/rewards': np.mean(self.buffer.rewards),
            # 'loss/entropy_loss': entropy_loss.detach().cpu().numpy(),
            'value/advantage': advantages.detach().mean().cpu().numpy(),
            'value/logprob': action_logprobs.detach().mean().cpu().numpy(),
            'value/return': returns.detach().mean().cpu().numpy(),
            'value/return_values': return_values.detach().mean().cpu().numpy(),
            'grad/grad_clipped': grad_clipped.detach().cpu().numpy()
        }
        self.log(info, self.update_time, only_tb=False)

        self.buffer.clear()
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        self.update_time += 1
        return {'loss':loss.detach()}

    def load_model(self, env, pretrained_model_path=''):
        checkpoint_path = ""
        if pretrained_model_path != '':
            checkpoint_path = self.config.pretrained_model_path
        else:
            pretrain_load_path = os.path.join(env.recorder.save_dir, 'models/supervised_model.pth')
            train_load_path = os.path.join(env.recorder.save_dir, 'models/rl_model.pth')
            if os.path.exists(train_load_path):
                checkpoint_path = train_load_path
            elif os.path.exists(pretrain_load_path):
                checkpoint_path = pretrain_load_path
        # 
        if checkpoint_path !="":
            checkpoint = torch.load(checkpoint_path, map_location=self.device)
            # load part of model
            model_dict = self.state_dict()
            state_dict = {k: v for k, v in checkpoint['policy'].items() if k in model_dict}
            model_dict.update(state_dict)
            self.load_state_dict(model_dict)
            # load full model
            # self.load_state_dict(checkpoint['policy'])
            # self.optimizer.load_state_dict(checkpoint['optimizer_state_dict'])
        else:
            print("--- load empty model")
        print(f'Loaded pretrained model from {checkpoint_path}') if self.verbose >= 0 else None

    def supervised_rank_loss(self, net, order_pred_score, order_true_score = None, read_samples = False, visualize=False):
        device = order_pred_score.device
        if read_samples:
            order_true_score = order_true_score.to(device)
        else:
            true_rank = self.ranker.rank(net) #{n1: score1, n2: score2, ...} sorted by increasing scores
            # sort by node id: sorted---> small to large
            order_true = sorted(true_rank.items(), key=lambda item:item[0]) # {id: score} id increasing
            order_true_score = torch.FloatTensor([_[1] for _ in order_true]).to(device)

        rank_loss = F.mse_loss(order_pred_score, order_true_score)
        if visualize:
            order_pred_score, order_true_score = order_pred_score.detach().cpu(), order_true_score.cpu()
            print("order_pred_score", order_pred_score)
            print("order_true_score", order_true_score)
            _, pred_sort = torch.sort(-order_pred_score)
            _, true_sort = torch.sort(-order_true_score)
            print("------")
            print("pred_rank", pred_sort)#, order_pred_score.detach().cpu())
            print("true_rank", true_sort)#, order_true_score.cpu())
        return rank_loss

    def energy_loss(self, x, network):
        device = x.device
        Lap = torch.from_numpy(nx.normalized_laplacian_matrix(network).toarray()).float().to(device)
        energy = torch.matmul(torch.matmul(x.unsqueeze(0), Lap),x).item()
        return energy

    def validate(self, env, epoch_id="", stage="validate", checkpoint_path=None, timing=False):
        print(f"{'-' * 20}  Validate  {'-' * 20}") if self.verbose >= 0 else None
        env = copy.deepcopy(env)
        
        self.eval_mode()
        instance = env.reset()
        branch = "two_stage" if self.config.two_stage else "joint"
        pbar = tqdm.tqdm(desc=f"{stage}-{branch}", total=env.num_vns) if self.verbose <= 1 else None
        
        while True:
            if self.config.two_stage:
                solution, _, _ = self.two_stage_solve(instance, timing=timing, visualize = self.config.visualize)
            else:
                if self.config.visualize: print("vn id: ", env.curr_event['vn_id'])
                if_visualize = self.config.visualize and env.curr_event['vn_id']==33
                solution, _, _ = self.solve(instance, timing=timing, visualize = if_visualize)
            next_instance, _, done, info = env.step(solution)

            if pbar is not None: 
                pbar.update(1)
                pbar.set_postfix({
                    'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                    'r2c': f'{info["total_r2c"]:1.2f}',
                    'inservice': f'{info["inservice_count"]:05d}',
                })

            if done:
                break
            instance = next_instance

        if pbar is not None: pbar.close()
        summary_info = env.summary_records(stage = stage, epoch_id=epoch_id, is_verbose=self.config.verbose)
        if self.verbose == 0:
            pprint.pprint(summary_info)
        print(f"{'-' * 20}     Done    {'-' * 20}\n") if self.verbose >= 0 else None
        # timing
        if timing:
            self.time_nn = self.policy_v.gnn_time + self.policy_p.gnn_time
            self.time_rank = self.policy_v.rank_time + self.policy_p.rank_time
        return summary_info
    
    def rl_validate(self, env, epoch_id="", stage="RL_validate", checkpoint_path=None, timing=False, visualize = False):
        print(f"{'-' * 20}  Validate  {'-' * 20}") if self.verbose >= 0 else None
        # if checkpoint_path is not None: self.load_model(checkpoint_path)
        env = copy.deepcopy(env)
        
        self.eval_mode()
        instance = env.reset()
        pbar = tqdm.tqdm(desc=stage, total=env.num_vns) if self.verbose <= 1 else None
        
        while True:
            obs = instance
            if self.config.visualize: print("vn id: ", env.curr_event['vn_id'])
            if_visualize = self.config.visualize and env.curr_event['vn_id']==33
            actions, actions_logprob, _ = self.select_action(obs, sample=False, visualize = if_visualize, timing=timing)
            # 
            if timing:
                search_start_time = time.time()
            # solve problem
            if self.config.two_stage:
                solution = self.rl_two_stage_solve(obs, sorted_v_nodes = actions[0], sorted_p_nodes = actions[1])
            else:
                solution = self.rl_solve(obs, sorted_v_nodes = actions[0], sorted_p_nodes = actions[1])
            # 
            if timing: 
                self.time_search += time.time() - search_start_time
            # visualize
            if if_visualize:  
                print(f"---------- VN ---------\n")
                vis_g(obs['vn'])
                print("vn actions: ", actions[0])
                assert 0, "RL validate visualization"
            next_instance, _, done, info = env.step(solution)

            if pbar is not None: 
                pbar.update(1)
                pbar.set_postfix({
                    'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                    'r2c': f'{info["total_r2c"]:1.2f}',
                    'inservice': f'{info["inservice_count"]:05d}',
                })

            if done:
                break
            instance = next_instance

        if timing: 
            self.time_nn = self.policy_v.gnn_time + self.policy_p.gnn_time
            self.time_rank = self.policy_v.rank_time + self.policy_p.rank_time
        if pbar is not None: pbar.close()
        summary_info = env.summary_records(stage = stage, epoch_id=epoch_id, is_verbose=self.config.verbose)
        if self.verbose == 0:
            pprint.pprint(summary_info)
        print(f"{'-' * 20}     Done    {'-' * 20}\n") if self.verbose >= 0 else None
        return summary_info

def get_observations_sample(obs_batch, indices):
    return [obs_batch[i] for i in indices]

def time2hms(seconds):
    m, s = divmod(seconds, 60)
    h, m = divmod(m, 60)
    return "%02d:%02d:%.4f" % (h, m, s)