import os
from easydict import EasyDict

import numpy as np

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.distributions import Categorical

from .sub_env import SubEnv
from .net import Actor#, ActorCritic, Critic
from ..rl_solver import *
from base import Solution


class PgBFSSolver(PGSolver):
    name = 'pg_bfs'
    def __init__(self, **kwargs):
        super(PgBFSSolver, self).__init__(**kwargs)
        feature_dim = 3  # (n_attrs, e_attrs, dist, degree)
        # 
        self.time_nn = 0
        self.time_rank = 0 
        self.time_search =0
        kwargs['device'] = self.device
        # model
        self.policy = Actor(feature_dim,  self.embedding_dim, kwargs).to(self.device)
        self.optimizer = torch.optim.Adam([
            {'params': self.policy.parameters(), 'lr': self.lr_actor},
        ])

        self.preprocess_obs = obs_as_tensor
    
    def select_action(self, instance):
        vn, pn = instance['vn'], instance['pn']
        obs = torch.FloatTensor(self.sub_env.get_observation(pn)).to(self.device) #[1,100,4]
        # print("obs: ", obs, obs.shape)
        actions_logits = self.policy.act(obs)
        actions_probs = F.softmax(actions_logits, dim=-1).squeeze(0)
        # print("actions_probs", actions_probs.shape)
        # sorting
        sorted_v_nodes = [n for n in vn.nodes]
        node_scores = actions_probs.detach().cpu().numpy()
        p_node_rank = {node_id: node_scores[i] for i, node_id in enumerate(pn.nodes)}
        p_node_rank = sorted(p_node_rank.items(), reverse=True, key=lambda x: x[1])
        p_node_rank = {i: v for i, v in p_node_rank}
        sorted_p_nodes = list(p_node_rank.keys())
        p_mask = torch.zeros_like(actions_probs).bool()
        p_mask[sorted_p_nodes[:len(sorted_v_nodes)]] = True
        # logprob
        # masked_logit = torch.where(p_mask>0, actions_probs, 1)
        masked_logit = actions_probs[p_mask]
        # print("actions_probs: ", actions_probs)
        logprobs = torch.sum(torch.log(masked_logit))
        # deploy
        # solution = self.rl_two_stage_solve(instance, sorted_v_nodes, sorted_p_nodes)
        solution = self.rl_solve(instance, sorted_v_nodes, sorted_p_nodes)
        return solution, (p_mask, obs), logprobs 

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
                                        reusable=False, inplace=True, matching_method="greedy")#self.matching_method)
        
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
                                                        shortest_method= "k_shortest",# "k_shortest",
                                                        k=self.k_shortest, inplace=True)
        return link_mapping_result
    
    def meta_learn(self, env, num_epochs=1, start_epoch=0, save_timestep=1000,  **kwargs):
        print(f"\n{'-' * 20}  Meta-Learn  {'-' * 20}") if self.verbose >= 0 else None
        init_env = copy.deepcopy(env)
        best_score = -np.inf
        self.start_time = time.time()
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            self.train_mode()
            # sub env, env used for training 
            buffer = RolloutBuffer()
            instance = env.reset()
            self.sub_env = SubEnv(instance['pn'], instance['vn'], **self.basic_config)
            pbar = tqdm.tqdm(desc=f'RL train {self.config.solver_name} epoch {epoch_id}', total=env.num_vns) if self.verbose <= 1 else None
            for i in range(env.num_vns):
                ### --- env --- ###
                solution, action, actions_logprob = self.select_action(instance)
                next_instance, reward, done, info = env.step(solution)
                
                buffer.add(instance, action, reward, done, actions_logprob, value=0)
                # buffer.action_masks.append(mask)
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
                    if self.config.update_algo=="pg":
                        update_info = self.pg_update()
                    elif self.config.update_algo=="ppo":
                        update_info = self.ppo_update()
                    elif self.config.update_algo=="a2c":
                        update_info = self.a2c_update()
                    else:
                        assert 0, f"{self.config.update_algo} Not implemented!"
                    loss = update_info.get("loss", 0)

                    ### --- env --- ###
                    if pbar is not None: 
                        pbar.update(self.config.target_steps)
                        pbar.set_postfix({
                            'lr': self.optimizer.defaults['lr'],
                            'loss': f'{loss:.3f}',
                            'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:04d}',
                        })
                else:
                    pass
                # epoch finished
            pbar.close()
            sub_summary_info = env.summary_records(stage = "RL", epoch_id=epoch_id, is_verbose=self.config.verbose)
            if  (epoch_id + 1) % self.eval_interval == 0:
                summary_info = self.validate(init_env, epoch_id, checkpoint_path=None)
                # 
                save_dir = env.recorder.save_dir
                if summary_info['acceptance_rate'] > best_score:
                    best_score = summary_info['acceptance_rate']
                    torch.save({'policy': self.policy.state_dict(),
                                'optimizer_state_dict': self.optimizer.state_dict(),
                                'best_score': best_score},
                            os.path.join(save_dir, 'models/post_model.pth'))
                    print(f"saved meta-RL model to {os.path.join(save_dir, 'models/post_model.pth')} at epoch {epoch_id}")

        self.end_time = time.time()
        elapsed_time = (self.end_time - self.start_time)
        if self.config.num_train_epochs >0:
            print(f'Total training time: { elapsed_time//3600} hours {(elapsed_time%3600)/60:2f} minutes')
    
    def learn(self, env, num_epochs=1, start_epoch=0, save_timestep=1000, config=None, **kwargs):
        print(f"\n{'-' * 20}  Learn  {'-' * 20}") if self.verbose >= 0 else None
        init_env = copy.deepcopy(env)
        best_score = -np.inf
        self.start_time = time.time()
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            self.train_mode()
            # sub env, env used for training 
            buffer = RolloutBuffer()
            instance = env.reset()
            self.sub_env = SubEnv(instance['pn'], instance['vn'], **self.basic_config)
            pbar = tqdm.tqdm(desc=f'RL train with {self.config.solver_name} in epoch {epoch_id}', total=env.num_vns) if self.verbose <= 1 else None
            for i in range(env.num_vns):
                ### --- env --- ###
                solution, action, actions_logprob = self.select_action(instance)
                next_instance, reward, done, info = env.step(solution)
                
                buffer.add(instance, action, reward, done, actions_logprob, value=0)
                # buffer.action_masks.append(mask)
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
                    update_info = self.update()
                    loss = update_info.get("loss", 0)

                    ### --- env --- ###
                    if pbar is not None: 
                        pbar.update(self.config.target_steps)
                        pbar.set_postfix({
                            'lr': self.optimizer.defaults['lr'],
                            'loss': f'{loss:.3f}',
                            'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:04d}',
                        })
                else:
                    pass
                # epoch finished
            pbar.close()
            sub_summary_info = env.summary_records(stage = "RL", epoch_id=epoch_id, is_verbose=self.config.verbose)
            if  (epoch_id + 1) % self.eval_interval == 0:
                summary_info = self.validate(init_env, epoch_id, checkpoint_path=None)
                # 
                save_dir = env.recorder.save_dir
                if summary_info['acceptance_rate'] > best_score:
                    best_score = summary_info['acceptance_rate']
                    torch.save({'policy': self.policy.state_dict(),
                                'optimizer_state_dict': self.optimizer.state_dict(),
                                'best_score': best_score},
                            os.path.join(save_dir, 'models/rl_model.pth'))
                    print(f"saved RL model to {os.path.join(save_dir, 'models/rl_model.pth')} at epoch {epoch_id}")

        self.end_time = time.time()
        elapsed_time = (self.end_time - self.start_time)
        if self.config.num_train_epochs >0:
            print(f'Total training time: { elapsed_time//3600} hours {(elapsed_time%3600)/60:2f} minutes')
    
    def validate(self, env, epoch_id="", stage="RL_validate", checkpoint_path=None, timing=False):
        print(f"\n{'-' * 20}  Validate  {'-' * 20}") if self.verbose >= 0 else None
        self.train_mode()
        # sub env, env used for training 
        instance = env.reset()
        self.sub_env = SubEnv(instance['pn'], instance['vn'], **self.basic_config)
        pbar = tqdm.tqdm(desc=f'RL validate with {self.config.solver_name} in epoch {epoch_id}', total=env.num_vns) if self.verbose <= 1 else None
        for i in range(env.num_vns):
            ### --- env --- ###
            solution, action, actions_logprob = self.select_action(instance)
            next_instance, reward, done, info = env.step(solution)
            instance = next_instance
            ### --- env --- ###
            if pbar is not None: 
                pbar.update(1)
                pbar.set_postfix({
                    'lr': self.optimizer.defaults['lr'],
                    'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                    'r2c': f'{info["total_r2c"]:1.2f}',
                    'inservice': f'{info["inservice_count"]:04d}',
                })
            # epoch finished
        pbar.close()
        sub_summary_info = env.summary_records(stage = "validate", epoch_id=epoch_id, is_verbose=self.config.verbose)
        return sub_summary_info
    
    def rl_validate(self, env, epoch_id="", stage="RL_validate", checkpoint_path=None, timing=False, visualize = False):
        return self.validate(env, epoch_id=epoch_id, stage=stage, checkpoint_path=checkpoint_path, timing=timing)
    
    def load_model(self, env, pretrained_model_path=''):
        if pretrained_model_path !="":
            checkpoint = torch.load(pretrained_model_path, map_location=self.device)
            # load part of model
            model_dict = self.policy.state_dict()
            state_dict = {k: v for k, v in checkpoint['policy'].items() if k in model_dict}
            model_dict.update(state_dict)
            self.policy.load_state_dict(model_dict)
            # load full model
            # self.policy.load_state_dict(checkpoint['policy'])
            # self.optimizer.load_state_dict(checkpoint['optimizer_state_dict'])
            print(f'--- Loaded model from {pretrained_model_path}') if self.verbose >= 0 else None
        else:
            print(f"--- Load empty model")
    
    def update(self, ):
        observations = self.buffer.observations
        actions_his = self.buffer.actions
        returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        masks = None
        # action_logprobs = torch.hstack(self.buffer.logprobs).to(self.device)
        values, action_logprobs, _, _ = self.evaluate_actions(observations, actions_his, masks=masks, return_others=False)
        
        loss = - (action_logprobs * returns).mean()

        self.optimizer.zero_grad()
        loss.backward()
        if self.clip_grad:
            torch.nn.utils.clip_grad_norm_(self.policy.parameters(), self.max_grad_norm)
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
    
    def meta_evaluate_action(self, old_observation, old_action, masks=None, return_others=False):
        instance = old_observation
        (p_mask, obs) = old_action
        vn, pn  = instance ['vn'], instance ['pn']
        # 
        actions_logits = self.policy.act(obs)
        actions_probs = F.softmax(actions_logits, dim=-1).squeeze(0)
        # action his
        masked_logit = actions_probs[p_mask]
        action_logprob_his = torch.sum(torch.log(masked_logit))
        # 
        dist_entropy = torch.FloatTensor([0])  #empty policy_dist.entropy()
        value = torch.FloatTensor([0]) ## 
        return value, action_logprob_his, dist_entropy, {}
def obs_as_tensor(obs, device):
    # one
    if isinstance(obs, list):
        obs_batch = obs
        r"""Preprocess the observation to adapte to batch mode."""
        observation = torch.FloatTensor(np.array(obs_batch)).to(device)
        return observation
    # batch
    else:
        observation = obs
        observation = torch.FloatTensor(observation).unsqueeze(dim=0).to(device)
        return observation

  