import os
import tqdm

import numpy as np

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.distributions import Categorical

from ..utils import apply_mask_to_logit, get_observations_sample
from base import Solution
from ..buffer import RolloutBuffer
from .sub_env import SubEnv
from .net import Actor
from ..rl_solver import RLSolver, PGSolver
from base import Controller

class PGSeq2SeqSolver(PGSolver):

    def __init__(self, **kwargs):
        super(PGSeq2SeqSolver, self).__init__(**kwargs)
        feature_dim = 3  # (n_attrs, e_attrs, dist, degree)
        action_dim = 100
        self.SubEnv = SubEnv
        kwargs['device'] = self.device
        self.policy = Actor(feature_dim, action_dim, self.embedding_dim, kwargs).to(self.device)
        self.optimizer = torch.optim.Adam([
            {'params': self.policy.parameters(), 'lr': self.lr_actor},
        ])

    def preprocess_obs(self, observation, device='cpu'):
        observation = torch.FloatTensor(observation).unsqueeze(dim=0).to(self.device)
        return observation

    def preprocess_batch_obs(self, obs_batch):
        r"""Preprocess the observation to adapte to batch mode."""
        observation = torch.FloatTensor(np.array(obs_batch)).to(self.device)
        return observation
    
    def solve(self, instance):
        v_net, p_net = instance['vn'], instance['pn']
        sub_env = SubEnv(p_net, v_net)
        SOS = torch.IntTensor(np.array([p_net.num_nodes])).to(self.device)
        sub_obs = sub_env.get_observation()
        input = SOS
        outputs, hidden = self.policy.encode(self.preprocess_obs(sub_obs))
        for v_node_id in list(v_net.nodes):
            mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
            action, action_logprob, hidden = self.select_action(input, hidden, mask=mask, sample=False)
            _, reward, done, info = sub_env.step(action)
            input = action.int().squeeze().to(self.device)
            if done:
                return sub_env.solution

    def select_action(self, input, hidden, mask=None, sample=True):
        action_logits, hidden = self.policy.decode(input, hidden)

        action_probs = F.softmax(action_logits, dim=-1)
        dist = Categorical(action_probs)

        if mask is not None:
            mask = torch.IntTensor(mask).to(self.device).expand_as(action_logits) + 1e-9
            candicate_action_logits = action_logits.detach() + mask.log()
        else:
            candicate_action_logits = action_logits.detach()
        if sample:
            candicate_dist = Categorical(logits=candicate_action_logits)
            action = candicate_dist.sample()
        else:
            action = candicate_action_logits.argmax(-1)
        action_logprob = dist.log_prob(action)
        return action, action_logprob, hidden

    def learn(self, env, num_epochs=1, start_epoch=0, batch_size=32, save_timestep=1000, **kwargs):
        self.time_step = 0
        best_score = -np.inf
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            instance = env.reset()
            v_net, p_net = instance['vn'], instance['pn']
            SOS = torch.IntTensor(np.array([p_net.num_nodes])).to(self.device)
            success_count = 0
            epoch_logprobs = []
            
            sub_buffer = RolloutBuffer()
            pbar = tqdm.tqdm(desc=f'Train epoch {epoch_id}', total=env.num_vns) if self.verbose <= 1 else None
            for i in range(2000):
                self.train_mode()
                ### --- sub env --- ###
                v_net, p_net = instance['vn'], instance['pn']
                sub_env = SubEnv(p_net, v_net)
                # solution
                solution = Solution(v_net)
                sub_obs = sub_env.get_observation()
                action_logprob_list, action_list, done_list = [], [], []

                outputs, hidden = self.policy.encode(self.preprocess_obs(sub_obs))
                input = SOS
                for v_node_id in list(v_net.nodes):
                    mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
                    action, action_logprob, hidden = self.select_action(input, hidden, mask=mask, sample=True)
                    _, sub_reward, sub_done, sub_info = sub_env.step(action)

                    # buffer
                    sub_buffer.observations.append((instance, input))
                    sub_buffer.dones.append(sub_done)
                    sub_buffer.rewards.append(sub_reward)
                    sub_buffer.logprobs.append(action_logprob)
                    sub_buffer.actions.append(action)
                    self.time_step += 1
                    # update
                    input = action.int().squeeze().to(self.device)
                    action_logprob_list.append(action_logprob)
                    if sub_done:
                        break

                if sub_env.solution['result']:
                    success_count += 1
                    solution = sub_env.solution
                    sub_logprob = torch.cat(action_logprob_list, dim=0).mean().unsqueeze(dim=0)
                    epoch_logprobs.append(sub_logprob)
                else:
                    solution = Solution(v_net)

                instance, reward, done, info = env.step(solution)

                # update parameters
                if self.time_step !=0 and sub_env.solution['result'] and self.time_step % batch_size == 0:
                    sub_buffer.compute_mc_returns(gamma=self.gamma)
                    self.buffer.merge(sub_buffer)
                    sub_buffer = RolloutBuffer()
                    self.update()
                ### --- sub env end --- ###

                    if pbar is not None: 
                        pbar.update(batch_size)
                        pbar.set_postfix({
                            'ac': f'{info["success_count"] / info["vn_count"]:1.2f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:05d}',
                        })
                # epoch finished
                if done:
                    break
            if pbar is not None: pbar.close()
            summary_info = env.summary_records(stage = "pretrain", epoch_id=epoch_id,)
            epoch_logprobs_tensor = torch.cat(epoch_logprobs, dim=0)
            print(f'epoch {epoch_id:4d}, success_count {success_count:5d}, r2c {info["total_r2c"]:1.4f}, mean logprob {epoch_logprobs_tensor.mean():2.4f}')
            self.save_model(f'model-{epoch_id}.pkl')
            if summary_info['acceptance_rate'] > best_score:
                best_score = summary_info['acceptance_rate']
                self.save_model(f'model.pkl')
            # validate
            if (epoch_id + 1) != (start_epoch + num_epochs) and (epoch_id + 1) % self.eval_interval == 0:
                self.validate(env, epoch_id, stage="validate", checkpoint_path=None)
    
    def evaluate_actions(self, old_observations, old_actions, masks=None, return_others=False):
        new_action_logprobs = []
        # new_values = []
        for (instance,input), action in zip(old_observations, old_actions):
            # print("instance", instance, action, input)
            ### --- sub env --- ###
            v_net, p_net = instance['vn'], instance['pn']
            sub_env = SubEnv(p_net, v_net)
            sub_obs = sub_env.get_observation()

            outputs, hidden = self.policy.encode(self.preprocess_obs(sub_obs))
            # mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
            # action, action_logprob, hidden = self.select_action(input, hidden, mask=mask, sample=True)
            action_logits, hidden = self.policy.decode(input, hidden)
            action_probs = F.softmax(action_logits, dim=-1)
            action_probs = action_probs.squeeze()
            dist = Categorical(action_probs)
            action_logprob = dist.log_prob(torch.LongTensor([action]).to(action_probs.device))
            _, sub_reward, sub_done, sub_info = sub_env.step(action)

            new_action_logprobs.append(action_logprob)
            # sub_logprob = torch.cat(action_logprob_list, dim=0).mean().unsqueeze(dim=0)
            # new_action_logprobs.append(action_logprob_list)
            # value
            # new_values.append()
        new_action_logprobs = torch.hstack(new_action_logprobs)
        return None, new_action_logprobs, None, None

    def validate(self, env, epoch_id="00", stage = "validate", checkpoint_path=None, timing = False):
        print(f"\n{'-' * 20}  Validate  {'-' * 20}\n") if self.verbose >= 0 else None
        if checkpoint_path is not None: self.load_model(checkpoint_path)
        self.eval_mode()
        instance = env.reset(0)
        
        pbar = tqdm.tqdm(desc=f'Validate', total=env.num_vns) if self.verbose <= 1 else None
        while True:
            self.eval_mode()
            ### --- sub env --- ###
            v_net, p_net = instance['vn'], instance['pn']
            SOS = torch.IntTensor(np.array([p_net.num_nodes])).to(self.device)
            sub_env = SubEnv(p_net, v_net)
            # solution
            solution = Solution(v_net)
            sub_obs = sub_env.get_observation()
            action_logprob_list, action_list, done_list = [], [], []

            outputs, hidden = self.policy.encode(self.preprocess_obs(sub_obs))
            input = SOS
            for v_node_id in list(v_net.nodes):
                mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
                action, action_logprob, hidden = self.select_action(input, hidden, mask=mask, sample=True)
                _, sub_reward, sub_done, sub_info = sub_env.step(action)

                self.time_step += 1
                # update
                input = action.int().squeeze(1).to(self.device)
                if sub_done:
                    break

            if sub_env.solution['result']:
                solution = sub_env.solution
                # sub_logprob = torch.cat(action_logprob_list, dim=0).mean().unsqueeze(dim=0)
                # epoch_logprobs.append(sub_logprob)
            else:
                solution = Solution(v_net)

            next_instance, _, done, info = env.step(solution)

            if pbar is not None: 
                pbar.update(1)
                pbar.set_postfix({
                    'ac': f'{info["success_count"] / info["vn_count"]:1.2f}',
                    'r2c': f'{info["total_r2c"]:1.2f}',
                    'inservice': f'{info["inservice_count"]:05d}',
                })

            if done:
                break
            instance = next_instance

        if pbar is not None: pbar.close()
        summary_info = env.summary_records(stage = stage, epoch_id=epoch_id)
        if self.verbose == 0:
            pprint.pprint(summary_info) 
        print(f"{'-' * 20}     Done    {'-' * 20}\n") if self.verbose >= 0 else None
        return summary_info
    
    def update(self, ):
        observations = self.buffer.observations
        actions = self.buffer.actions
        returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        masks = torch.IntTensor(np.concatenate(self.buffer.action_masks, axis=0)).to(self.device) if len(self.buffer.action_masks) != 0 else None
        _, action_logprobs, _, _ = self.evaluate_actions(observations, actions, masks=masks, return_others=True)
        
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
        self.log(info, self.update_time, only_tb=False)

        self.buffer.clear()
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        self.update_time += 1
        return loss

    def meta_solve(self, instance, sample=False):
        v_net, p_net = instance['vn'], instance['pn']
        # save
        action_his = []
        action_logprob_his = 0
        # 
        sub_env = SubEnv(p_net, v_net)
        SOS = torch.IntTensor(np.array([p_net.num_nodes])).to(self.device)
        sub_obs = sub_env.get_observation()
        input = SOS
        outputs, hidden = self.policy.encode(self.preprocess_obs(sub_obs))
        # 
        sub_done = False
        # start
        for v_node_id in list(v_net.nodes):
            mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
            action, action_logprob, hidden = self.select_action(input, hidden, mask=mask, sample=sample)
            _, sub_reward, sub_done, sub_info = sub_env.step(action)
            input = action.int().squeeze(1).to(self.device)
            action_his.append(action)
            # value = self.estimate_obs(tensor_sub_obs)
            action_logprob_his += action_logprob
            if sub_done:
                break
        action_his = torch.hstack(action_his)
        return sub_env.solution, action_his, action_logprob_his
    
    def meta_evaluate_action(self, old_observation, old_action, masks=None, return_others=False):
        instance = old_observation
        vn, pn  = instance ['vn'], instance ['pn']
        # action his
        act_id = 0
        action_logprob_his = torch.FloatTensor([[0]]).to(self.device)
        # sub env
        sub_env = self.SubEnv(pn, vn, **self.basic_config)
        SOS = torch.IntTensor(np.array([pn.num_nodes])).to(self.device)
        sub_obs = sub_env.get_observation()
        input = SOS
        outputs, hidden = self.policy.encode(self.preprocess_obs(sub_obs))

        sub_done = False
        while not sub_done:
            mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
            action_logits, hidden = self.policy.decode(input, hidden)
            action = old_action[act_id]
            # action, action_logprob = self.select_action(tensor_sub_obs, mask=mask, sample=True)
            _, sub_reward, sub_done, sub_info = sub_env.step(action)
            input = action.int().squeeze().to(self.device)
            
            candicate_action_logits = apply_mask_to_logit(action_logits, mask) 
            if self.mask_actions and self.maskable_policy:
                candicate_action_probs = F.softmax(candicate_action_logits, dim=-1)
                candicate_action_dist = Categorical(probs=candicate_action_probs)
            else:
                candicate_action_probs = F.softmax(action_logits, dim=-1)
                candicate_action_dist = Categorical(probs=candicate_action_dist)
            action_logprob = candicate_action_dist.log_prob(action)
            # action = action.reshape(-1, )
            # sub env step
            next_sub_obs, sub_reward, sub_done, sub_info = sub_env.step(action)
            act_id +=1
            sub_obs = next_sub_obs
            action_logprob_his += action_logprob
            if sub_done:
                break
        # print("------ instance log prob: ", actions_logprob, "------")
        # 
        dist_entropy = torch.FloatTensor([0])  
        value = torch.FloatTensor([0]) 

        return value, action_logprob_his, dist_entropy, {}    
    