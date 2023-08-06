import os
import csv
import copy
import time
import tqdm
import pprint
from easydict import EasyDict
from abc import abstractmethod
# from concurrent.futures import ProcessPoolExecutor, ThreadPoolExecutor, as_completed

import numpy as np

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.multiprocessing as mp
from torch.multiprocessing import Process, Pool
from torch.distributions import Categorical
from torch.utils.tensorboard import SummaryWriter

from solver import Solver
from solver.heuristics.node_rank import *
from solver.heuristics.bfs_trials import *

from .searcher import *
from .buffer import RolloutBuffer
from .utils import apply_mask_to_logit, get_observations_sample
from utils import test_running_time


class RLSolver(Solver):
    def __init__(self, **kwargs):
        super(RLSolver, self).__init__(**kwargs)
        # parameters
        # parameters
        self.config = EasyDict(kwargs)
        # baseline
        self.use_baseline_solver = kwargs.get('use_baseline_solver', False)
        if self.use_baseline_solver:
            self.baseline_solvers = {}
            baselin_solver_name =  kwargs.get('baselin_solver_name', 'grc')
            if baselin_solver_name == 'grc':
                self.baseline_solver = GRCRankSolver(**kwargs)
            elif baselin_solver_name == 'ffd_bfs':
                self.baseline_solver = FFDRankSolver(**kwargs)
            elif baselin_solver_name == 'self':
                self.baseline_solver = copy.deepcopy(self)
        self.allow_parallel = kwargs.get('allow_parallel', False)
        self.learnable = kwargs.get('learnable', 2)
        kwargs['device'] = self.device
        # rl
        self.gamma = kwargs.get('rl_gamma', 0.95)
        self.gae_lambda = kwargs.get('gae_lambda', 0.98)
        self.coef_critic_loss = kwargs.get('coef_critic_loss', 0.5)
        self.coef_entropy_loss = kwargs.get('coef_entropy_loss', 0.01)
        self.coef_mask_loss = kwargs.get('coef_mask_loss', 0.01)
        self.weight_decay = kwargs.get('weight_decay', 0.00001)
        self.lr_actor = kwargs.get('lr_actor', 0.005)
        self.lr_critic = kwargs.get('lr_critic', 0.001)
        self.lr_scheduler = None
        self.criterion_critic = nn.MSELoss()
        # nn
        self.embedding_dim = kwargs.get('embedding_dim', 64)
        self.dropout_prob = kwargs.get('dropout_prob', 0.5)
        self.batch_norm = kwargs.get('batch_norm', False)
        # train
        self.batch_size = kwargs.get('batch_size', 128)
        self.use_negative_sample = kwargs.get('use_negative_sample', False)
        self.target_steps = kwargs.get('target_steps', 128)
        self.eval_interval = kwargs.get('eval_interval', 10)
        # eval;
        self.k_searching = kwargs.get('k_searching', 4)
        self.decode_strategy = kwargs.get('decode_strategy', 'sample')
        # tricks
        self.mask_actions = kwargs.get('mask_actions', True)
        self.maskable_policy = kwargs.get('maskable_policy', True)
        self.norm_advantage = kwargs.get('norm_advantage', True)
        self.clip_grad = kwargs.get('clip_grad', True)
        self.max_grad_norm = kwargs.get('max_grad_norm', 1.)
        # log
        self.open_tb = kwargs.get('open_tb', True)
        self.log_dir = os.path.join(self.save_dir, 'log')
        self.model_dir = os.path.join(self.save_dir, 'models')
        self.writer = SummaryWriter(self.log_dir) if self.open_tb else None
        self.training_info = []
        self.buffer = RolloutBuffer()
        # save
        self.log_interval = kwargs.get('log_interval', 1)
        self.save_interval = kwargs.get('save_interval', 1)

        for dir in [self.save_dir, self.log_dir, self.model_dir]:
            if not os.path.exists(dir): 
                os.makedirs(dir)
        # counter
        self.update_time = 0
        self.time_step = 0

        # RL hyperparameters
        self.repeat_times = kwargs.get('repeat_times', 10)
        self.gae_lambda = kwargs.get('gae_lambda', 0.98)
        self.eps_clip = kwargs.get('eps_clip', 0.2)

        if self.verbose >= 1 and kwargs.get("num_train_epochs", 0) > 0:
            print(f'*' * 50)
            print(f'Key parameters of RL training arepoche as following: ')
            print(f'*' * 50)
            try:
                print(f" search width: {math.ceil(np.power(100, 1 / self.config['visit_depth']))}")
            except:
                pass
            print(f'       device: {self.device_name} by {self.device}')
            print(f'   learn mode: {self.learnable}')
            print(f'     parallel: {self.allow_parallel}')
            print(f'     rl_gamma: {self.gamma}')
            print(f'     lr_actor: {self.lr_actor}')
            print(f'    lr_critic: {self.lr_critic}')
            print(f'   batch_size: {self.batch_size}')
            print(f'embedding_dim: {self.embedding_dim}')
            print(f'coef_ent_loss: {self.coef_critic_loss}')
            print(f'coef_ent_loss: {self.coef_entropy_loss}')
            print(f'     norm_adv: {self.norm_advantage}')
            print(f'    clip_grad: {self.clip_grad}')
            print(f'max_grad_norm: {self.max_grad_norm}')
            print(f'*' * 50)
            print()
            # print(f'Logging training info at {os.path.join(self.log_dir, "training_info.csv")}')

    @abstractmethod
    def preprocess_obs(self, obs, device="cpu"):
        return NotImplementedError

    def solve_with_baseline(self, instance, baseline='grc'):
        if self.baseline_solver is None:
            self.baseline_solver = GRCRankSolver()
        solution = self.baseline_solver.solve(instance)
        solution_info = self.counter.count_solution(instance['vn'], solution)
        return solution_info

    def log(self, info, update_time, only_tb=False):
        if self.open_tb:
            for key, value in info.items():
                self.writer.add_scalar(key, value, update_time)
        if only_tb:
            return
        log_fpath = os.path.join(self.log_dir, 'training_info.csv')
        write_head = not os.path.exists(log_fpath)
        with open(log_fpath, 'a+', newline='') as f:
            writer = csv.writer(f)
            if write_head:
                writer.writerow(['update_time'] + list(info.keys()))
            writer.writerow([update_time] + list(info.values()))
        if self.verbose >= 2:
            if update_time % 1000 == 0:
                info_key_str = ' & '.join([f'{k}' for k, v in info.items() if sum([s in k for s in ['loss', 'prob', 'return', 'penalty']])])
                print(f'             {update_time:06d} | ' + info_key_str)
            info_str = ' & '.join([f'{v:+3.4f}' for k, v in info.items() if sum([s in k for s in ['loss', 'prob', 'return', 'penalty']])])
            print(f'Update time: {update_time:06d} | ' + info_str)
        return True

    def get_action_prob_dist(self, observation, mask=None):
        with torch.no_grad():
            action_logits = self.policy.act(observation)
        if mask is not None and self.mask_actions:
            candicate_action_logits = apply_mask_to_logit(action_logits, mask) 
        else:
            candicate_action_logits = action_logits
        action_prob_dist = F.softmax(candicate_action_logits, dim=-1)
        return action_prob_dist, candicate_action_logits

    def select_action(self, observation, mask=None, sample=True):
        with torch.no_grad():
            action_logits = self.policy.act(observation)
        # print("action_logits: ", action_logits)
        if mask is not None and self.mask_actions:
            candicate_action_logits = apply_mask_to_logit(action_logits, mask) 
        else:
            candicate_action_logits = action_logits

        if self.mask_actions and self.maskable_policy:
            candicate_action_probs = F.softmax(candicate_action_logits, dim=-1)
            candicate_action_dist = Categorical(probs=candicate_action_probs)
        else:
            candicate_action_probs = F.softmax(action_logits, dim=-1)
            candicate_action_dist = Categorical(probs=candicate_action_dist)
        # print("candicate_action_logits: ", candicate_action_logits)
        if sample:
            action = candicate_action_dist.sample()
        else:
            action = candicate_action_logits.argmax(-1)
        # print("action", action)
        action_logprob = candicate_action_dist.log_prob(action)
        action = action.reshape(-1, )
        # action = action.squeeze(-1).cpu()
        # print("action_logprob: ",action_logprob)
        return action, action_logprob

    def evaluate_actions(self, old_observations, old_actions, masks=None, return_others=False):
        actions_logits = self.policy.act(old_observations)
        actions_probs = F.softmax(actions_logits, dim=-1)

        if masks is not None:
            candicate_actions_logits = apply_mask_to_logit(actions_logits, masks)
        else:
            candicate_actions_logits = actions_logits

        candicate_actions_probs = F.softmax(candicate_actions_logits, dim=-1)

        dist = Categorical(actions_probs)
        candicate_dist = Categorical(candicate_actions_probs)

        policy_dist = candicate_dist if self.mask_actions and self.maskable_policy else dist

        action_logprobs = policy_dist.log_prob(old_actions)
        dist_entropy = policy_dist.entropy()

        values = self.policy.evaluate(old_observations).squeeze(-1)

        other = {}
        if return_others:
            if masks is not None:
                mask_actions_probs = actions_probs * (~masks.bool())
                other['mask_actions_probs'] = mask_actions_probs.sum(-1).mean()
                if hasattr(self.policy, 'predictor'):
                    predicted_masks_logits = self.policy.predict(old_observations)
                    print(predicted_masks_logits)
                    prediction_loss = F.binary_cross_entropy(predicted_masks_logits, masks.float())
                    other['prediction_loss'] = prediction_loss
                    predicted_masks = torch.where(predicted_masks_logits > 0.5, 1., 0.)
                    correct_count = torch.eq(predicted_masks.bool(), masks.bool()).sum(-1).float().mean(0)
                    acc = correct_count / predicted_masks.shape[-1]
                    print(prediction_loss, correct_count, acc)

        return values, action_logprobs, dist_entropy, other

    def estimate_obs(self, observation):
        return self.policy.evaluate(observation).squeeze(-1)

    def save_model(self, checkpoint_fname):
        checkpoint_fname = os.path.join(self.model_dir, checkpoint_fname)
        # torch.save(self.policy.state_dict(), checkpoint_fname)
        torch.save({
            'policy': self.policy.state_dict(),
            'optimizer': self.optimizer.state_dict(),
            # 'lr_scheduler_state_dict': self.lr_scheduler.state_dict()
        }, checkpoint_fname)
        print(f'Save model to {checkpoint_fname}\n') if self.verbose >= 0 else None

    def load_model(self, checkpoint_path):
        print('---Attempting to load the trained model')
        try:
            checkpoint = torch.load(checkpoint_path)
            if 'policy' not in checkpoint:
                self.policy.load_state_dict(torch.load(checkpoint_path, map_location=lambda storage, loc: storage))
            else:
                # load part of model
                model_dict = self.policy.state_dict()
                state_dict = {k: v for k, v in checkpoint['policy'].items() if k in model_dict}
                model_dict.update(state_dict)
                self.policy.load_state_dict(model_dict)
                # # load full model
                # self.policy.load_state_dict(checkpoint['policy'])
                # self.optimizer.load_state_dict(checkpoint['optimizer'])
            print(f'Loaded model from {checkpoint_path}') if self.verbose >= 0 else None
        except Exception as e:
            print(f'Load failed from {checkpoint_path}\nInitilized with random parameters') if self.verbose >= 0 else None

    def train_mode(self):
        self.policy.train()
        if hasattr(self, 'searcher'):
            delattr(self, 'searcher')

    def meta_train_mode(self):
        self.policy.train()
        decode_strategy = self.decode_strategy
        k = self.k_searching
        assert k >= 1, f'k should greater than 0. (k={k})'
        # greedy search
        if decode_strategy in [0, 'random']:
            searcher = RandomSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions,
                                    maskable_policy=self.maskable_policy)
        # greedy search
        elif decode_strategy in [1, 'greedy']:
            searcher = GreedySearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions,
                                    maskable_policy=self.maskable_policy)
        # sample search
        elif decode_strategy in [1, 'sample', 'sampling']:
            searcher = SampleSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions, 
                                    maskable_policy=self.maskable_policy)
        # beam search
        elif decode_strategy in [2, 'beam', 'beam_search']:
            searcher = BeamSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions, 
                                    maskable_policy=self.maskable_policy)
        # recovable search
        elif decode_strategy in [3, 'r', 'recovable']:
            searcher = RecovableSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions, 
                                    maskable_policy=self.maskable_policy)
        else:
            raise NotImplementedError
        self.searcher = searcher
        return
    
    def eval_mode(self, decode_strategy=None, k=None):
        if decode_strategy is None: decode_strategy = self.decode_strategy
        if k is None: k = self.k_searching
        assert k >= 1, f'k should greater than 0. (k={k})'
        self.policy.eval()
        # greedy search
        if decode_strategy in [0, 'random']:
            searcher = RandomSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions,
                                    maskable_policy=self.maskable_policy)
        # greedy search
        elif decode_strategy in [1, 'greedy']:
            searcher = GreedySearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions,
                                    maskable_policy=self.maskable_policy)
        # sample search
        elif decode_strategy in [1, 'sample', 'sampling']:
            searcher = SampleSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions, 
                                    maskable_policy=self.maskable_policy)
        # beam search
        elif decode_strategy in [2, 'beam', 'beam_search']:
            searcher = BeamSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions, 
                                    maskable_policy=self.maskable_policy)
        # recovable search
        elif decode_strategy in [3, 'r', 'recovable']:
            searcher = RecovableSearcher(policy=self.policy, 
                                    preprocess_obs_func=self.preprocess_obs, 
                                    k=k, device=self.device,
                                    mask_actions=self.mask_actions, 
                                    maskable_policy=self.maskable_policy)
        else:
            raise NotImplementedError
        self.searcher = searcher
        return


    # @test_running_time
    def solve(self, instance, decode_strategy=None, k=None):
        v_net, p_net = instance['vn'], instance['pn']
        sub_env = self.SubEnv(p_net, v_net, **self.basic_config)

        solution = self.searcher.find_solution(sub_env)
        return solution

    
    def validate_online(self, env, checkpoint_path=None):
        print(f"{'-' * 20}  Validate  {'-' * 20}") if self.verbose >= 0 else None
        if checkpoint_path is not None: self.load_model(checkpoint_path)

        pbar = tqdm.tqdm(desc=f'Validate', total=env.num_vns) if self.verbose <= 1 else None
        
        instance = env.reset(0)
        while True:
            action, _ = self.solve_online(instance)
            solution = action[0]
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
        summary_info = env.summary_records(stage = "infer", epoch_id="00")
        if self.verbose == 0:
            pprint.pprint(summary_info)
        print(f"\n{'-' * 20}     Done    {'-' * 20}\n") if self.verbose >= 0 else None

    def solve_online(self, instance, decode_strategy=None, k=None):
        instance = self.preprocess_obs(instance)
        action, action_logprob = self.select_action(instance, mask=None, sample=False)
        return action[0]
    
    def meta_solve(self, instance, sample=False):
        v_net, p_net = instance['vn'], instance['pn']
        # save
        action_his = []
        action_logprob_his = 0
        # 
        sub_env = self.SubEnv(p_net, v_net, **self.basic_config)
        sub_obs = sub_env.get_observation()
        sub_done = False
        while not sub_done:
            mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
            tensor_sub_obs = self.preprocess_obs(sub_obs, self.device)
            action, action_logprob = self.select_action(tensor_sub_obs, mask=mask, sample=sample)
            action_his.append(action)
            # value = self.estimate_obs(tensor_sub_obs)
            next_sub_obs, sub_reward, sub_done, sub_info = sub_env.step(action[0])
            if sub_done:
                break
            sub_obs = next_sub_obs
            action_logprob_his += action_logprob
        action_his = torch.hstack(action_his)
        return sub_env.solution, action_his, action_logprob_his

    def validate(self, env, epoch_id="", stage="validate", checkpoint_path=None, timing=False):
        print(f"\n{'-' * 20}  Validate  {'-' * 20}\n") if self.verbose >= 0 else None
        if checkpoint_path is not None: self.load_model(checkpoint_path)
        self.eval_mode()
        instance = env.reset(0)
        
        pbar = tqdm.tqdm(desc=f'Validate', total=env.num_vns) if self.verbose <= 1 else None
        while True:
            solution = self.solve(instance)
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

    def learn(self, env, num_epochs=1, start_epoch=0, save_timestep=1000, **kwargs):
        # main env
        self.start_time = time.time()
        best_score = -np.inf
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            self.train_mode()
            # env
            instance = env.reset()
            # count
            success_count = 0
            epoch_logprobs = []
            revenue2cost_list = []
            pbar = tqdm.tqdm(desc=f'Train', total=env.num_vns) if self.verbose <= 1 else None
            for i in range(env.num_vns):
                ### -- baseline -- ##
                if self.use_baseline_solver: # or self.use_negative_sample
                    baseline_solution = self.baseline_solver.solve(instance)
                    baseline_solution_info = self.counter.count_solution(instance['vn'], baseline_solution)
                else:
                    baseline_solution_info = {
                        'result': True,
                        'vn_rc_ratio': 0
                    }
                ### --- sub env --- ###
                sub_buffer = RolloutBuffer()
                v_net, p_net = instance['vn'], instance['pn']
                sub_env = self.SubEnv(p_net, v_net, **self.basic_config)
                sub_obs = sub_env.get_observation()
                sub_done = False
                while not sub_done:
                    mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
                    tensor_sub_obs = self.preprocess_obs(sub_obs, self.device)
                    action, action_logprob = self.select_action(tensor_sub_obs, mask=mask, sample=True)
                    value = self.estimate_obs(tensor_sub_obs)
                    next_sub_obs, sub_reward, sub_done, sub_info = sub_env.step(action[0])

                    sub_buffer.add(sub_obs, action, sub_reward, sub_done, action_logprob, value=value)
                    sub_buffer.action_masks.append(mask)

                    if sub_done:
                        break

                    sub_obs = next_sub_obs
                    
                solution = sub_env.solution
                # sub_env.solution['result'] or self.use_negative_sample:  #  or True
                if self.use_negative_sample:
                    if baseline_solution_info['result'] or sub_env.solution['result']:
                        revenue2cost_list.append(sub_reward)
                        if sub_env.solution['result']: success_count = success_count + 1 
                        # sub_logprob = torch.cat(sub_logprob_list, dim=0).mean().unsqueeze(dim=0)
                        sub_buffer.compute_mc_returns(gamma=self.gamma)
                        self.buffer.merge(sub_buffer)
                        epoch_logprobs += sub_buffer.logprobs
                        self.time_step += 1
                    else:
                        pass
                elif sub_env.solution['result']:  #  or True
                    revenue2cost_list.append(sub_reward)
                    if sub_env.solution['result']: success_count = success_count + 1 
                    # sub_logprob = torch.cat(sub_logprob_list, dim=0).mean().unsqueeze(dim=0)
                    sub_buffer.compute_mc_returns(gamma=self.gamma)
                    self.buffer.merge(sub_buffer)
                    epoch_logprobs += sub_buffer.logprobs
                    self.time_step += 1
                else:
                    pass

                # update parameters
                if self.buffer.size() >= self.target_steps:
                    loss = self.update()
                    # print(f'loss: {loss.item():+2.4f}, mean r2c: {np.mean(revenue2cost_list):+2.4f}')
                ### --- sub env --- ###
                instance, reward, done, info = env.step(solution)
                if pbar is not None: 
                    pbar.update(1)
                    pbar.set_postfix({
                        'ac': f'{info["success_count"] / info["vn_count"]:1.2f}',
                        'r2c': f'{info["total_r2c"]:1.2f}',
                        'inservice': f'{info["inservice_count"]:05d}',
                    })
                # epoch finished
                if done:
                    # instance = env.reset()
                    break
            if pbar is not None: pbar.close()
            sub_summary_info = env.summary_records(stage = "Train", epoch_id=epoch_id)
            epoch_logprobs_tensor = torch.cat(epoch_logprobs, dim=0)
            # print(f'epoch {epoch_id:4d}, success_count {success_count:5d}, r2c {info["total_r2c"]:1.4f}, mean logprob {epoch_logprobs_tensor.mean():2.4f}\n')
            self.save_model(f'model-{epoch_id}.pkl')
            if sub_summary_info['acceptance_rate'] > best_score:
                best_score = sub_summary_info['acceptance_rate']
                self.save_model(f'model.pkl')
            # validate
            if  (epoch_id + 1) % self.eval_interval == 0:
                summary_info =self.validate(env, epoch_id = epoch_id)

        self.end_time = time.time()
        print(f'\nTotal training time: {(self.end_time - self.start_time) / 3600:4.6f}')

    def online_learn(self, env, num_epochs=1, start_epoch=0, save_timestep=1000, compute_return_method='gae'):
        # main env
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            obs = env.reset()
            success_count = 0
            for i in range(env.num_vns):
                # mask = np.expand_dims(env.generate_action_mask(), axis=0)
                tensor_obs = self.preprocess_obs(obs, self.device)
                action, action_logprob = self.select_action(tensor_obs, mask=None, sample=True)
                with torch.no_grad():
                    value = self.estimate_obs(tensor_obs)
                next_obs, reward, done, info = env.step(action[0])

                self.buffer.add(obs, action, reward, done, action_logprob, value=value)
                # self.buffer.action_masks.append(mask)

                # if done:
                #     self.buffer.clear()
                #     break

                obs = next_obs
                self.time_step += 1

                # update parameters
                if done and self.buffer.size() >= self.batch_size:  # done and 
                    with torch.no_grad():
                        last_value = float(self.estimate_obs(self.preprocess_obs(next_obs, self.device)).detach()[0]) if not done else 0.
                    self.buffer.compute_returns_and_advantages(last_value, gamma=self.gamma, gae_lambda=self.gae_lambda, method=compute_return_method)
                    loss = self.update()
            
            if (epoch_id + 1) != (start_epoch + num_epochs) and (epoch_id + 1) % self.eval_interval == 0:
                self.validate_online(env)

            self.save_model(f'model-{epoch_id}.pkl')

    def estimate_future_obs(self, future_instance):
        return self.policy.estimate_future_obs(future_instance)
    
    def meta_learn(self, env, num_epochs=1, start_epoch=0, save_timestep=1000,  **kwargs):
        self.start_time = time.time()
        best_score = -np.inf
        for epoch_id in range(start_epoch, start_epoch + num_epochs):
            self.meta_train_mode()
            instance = env.reset()
            epoch_logprobs = []
            pbar = tqdm.tqdm(desc=f'Post-Train epoch {epoch_id}', total=env.num_vns) if self.verbose <= 1 else None
            ### --- sub env --- ###
            buffer = RolloutBuffer()
            for i in range(env.num_vns):
                ### -- baseline -- ##
                if self.use_baseline_solver: # or self.use_negative_sample
                    baseline_solution = self.baseline_solver.solve(instance)
                    baseline_solution_info = self.counter.count_solution(instance['vn'], baseline_solution)
                else:
                    baseline_solution_info = {
                        'result': True,
                        'vn_rc_ratio': 0
                    }
                
                solution, action_his, actions_logprob = self.meta_solve(instance, sample=True)
                next_instance, reward, done, info = env.step(solution)

                buffer.add(instance, action_his, reward, done, actions_logprob, value=torch.FloatTensor([0]))
                instance = next_instance
                
                # update buffer
                if buffer.size() >= self.config.target_steps:
                    self.time_step += 1
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
                
                    if pbar is not None: 
                        pbar.update(self.config.target_steps)
                        pbar.set_postfix({
                            'lr': self.optimizer.defaults['lr'],
                            'loss': f'{loss:.3f}',
                            'ac': f'{info["success_count"] / info["vn_count"]:1.2f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:05d}',
                        })
                    if done:
                        break
            if pbar is not None: pbar.close()
            sub_summary_info = env.summary_records(stage = "Post-Train", epoch_id=epoch_id)
            # epoch_logprobs_tensor = torch.cat(epoch_logprobs, dim=0)
            # print(f'epoch {epoch_id:4d}, success_count {success_count:5d}, r2c {info["total_r2c"]:1.4f}, mean logprob {epoch_logprobs_tensor.mean():2.4f}\n')
            self.save_model(f'post_model-{epoch_id}.pkl')
            # validate
            if  (epoch_id + 1) % self.eval_interval == 0:
                summary_info = self.validate(env, epoch_id = epoch_id)
                if summary_info['acceptance_rate'] > best_score:
                    best_score = summary_info['acceptance_rate']
                    self.save_model(f'post_model.pkl')

        self.end_time = time.time()
        print(f'\nTotal post-training time: {(self.end_time - self.start_time) / 3600:4.6f}')
        return True
    
    ######################################### outer-level update #########################################
    def meta_evaluate_actions(self, old_observations, old_actions, masks=None, return_others=False):
        values, action_logprobs, dist_entropys, others = [], [], [], defaultdict(list)
        # pbar = tqdm.tqdm(desc=f'evaluating actions', total=len(old_observations)) if self.verbose <= 1 else None
        for old_observation, old_action in zip(old_observations, old_actions):
            value, action_logprob, dist_entropy, other = self.meta_evaluate_action(old_observation, old_action)
            values.append(value)
            action_logprobs.append(action_logprob)
            dist_entropys.append(dist_entropy)
            # others.append(other)
            others['mask_actions_probs'].append(other.get('mask_actions_probs', torch.zeros(1)))
            others['prediction_loss'].append(other.get('prediction_loss', torch.zeros(1)))
        
        others['mask_actions_probs'] = torch.sum(torch.hstack(others['mask_actions_probs']))
        others['prediction_loss'] = torch.sum(torch.hstack(others['prediction_loss']))
        # 
        return torch.hstack(values), torch.hstack(action_logprobs), torch.hstack(dist_entropys), others
    
    def meta_evaluate_action(self, old_observation, old_action, masks=None, return_others=False):
        old_action = old_action.squeeze()
        instance = old_observation

        vn, pn  = instance['vn'], instance['pn']
        # action his
        act_id = 0
        action_logprob_his = torch.FloatTensor([0]).to(self.device)
        # sub env
        sub_env = self.SubEnv(pn, vn, **self.basic_config)
        sub_obs = sub_env.get_observation()
        sub_done = False
        while not sub_done:
            mask = np.expand_dims(sub_env.generate_action_mask(), axis=0)
            tensor_sub_obs = self.preprocess_obs(sub_obs, self.device)
            action = old_action[act_id]
            # action, action_logprob = self.select_action(tensor_sub_obs, mask=mask, sample=True)
            action_logits = self.policy.act(tensor_sub_obs)
            
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
            if sub_done:
                break
            sub_obs = next_sub_obs
            action_logprob_his += action_logprob
        # print("------ instance log prob: ", actions_logprob, "------")
        # 
        dist_entropy = torch.FloatTensor([0])  #empty policy_dist.entropy()
        value =  self.estimate_obs(old_observation) if self.config.update_algo !="pg" else torch.FloatTensor([0])

        # if return_others:
        #     other = {}
        #     if masks is not None:
        #         mask_actions_probs = actions_probs * (~masks.bool())
        #         other['mask_actions_probs'] = mask_actions_probs.sum(-1).mean()
        #         if hasattr(self.policy_v, 'predictor'):
        #             predicted_masks_logits = self.policy_v.predict(old_observation)
        #             print(predicted_masks_logits)
        #             prediction_loss = F.binary_cross_entropy(predicted_masks_logits, masks.float())
        #             other['prediction_loss'] = prediction_loss
        #             predicted_masks = torch.where(predicted_masks_logits > 0.5, 1., 0.)
        #             correct_count = torch.eq(predicted_masks.bool(), masks.bool()).sum(-1).float().mean(0)
        #             acc = correct_count / predicted_masks.shape[-1]
        #             print(prediction_loss, correct_count, acc)
        #     return values, action_logprobs, dist_entropy, other
        # print(action_logprob_his)
        return value, action_logprob_his, dist_entropy, {}
    
    def ppo_update(self, ):
        assert self.buffer.size() >= self.config.batch_size
        batch_observations = self.buffer.observations
        batch_actions = self.buffer.actions
        batch_old_action_logprobs = torch.hstack(self.buffer.logprobs).detach()
        batch_rewards = torch.FloatTensor(self.buffer.rewards).to(self.device)
        batch_returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        batch_values = self.buffer.values
        # if len(self.buffer.action_masks) != 0 and self.mask_actions:
        #     batch_masks = torch.IntTensor(np.concatenate(self.buffer.action_masks, axis=0)).to(self.device)
        # else:
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
            # values, action_logprobs, dist_entropy, other = self.meta_evaluate_actions(observations, actions, masks=masks, return_others=False)
            # evaluate all samples to get culmulative values
            batch_values, batch_action_logprobs, _, _ = self.meta_evaluate_actions(batch_observations, batch_actions, masks=masks, return_others=False)
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
                grad_clipped = torch.nn.utils.clip_grad_norm_(self.policy.parameters(), self.max_grad_norm)
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
        _, action_logprobs, _, _ = self.meta_evaluate_actions(observations, actions_his, masks=masks, return_others=False)
        # print("action logprobs",action_logprobs, "returns:", returns)
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

    def a2c_update(self, ):
        batch_logprobs = self.buffer.logprobs
        batch_values = self.buffer.values
        observations = self.buffer.observations
        actions_his = self.buffer.actions
        rewards = torch.FloatTensor(self.buffer.rewards).to(self.device)
        returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        # values = torch.hstack(self.buffer.values)
        # action_logprobs = torch.hstack(self.buffer.logprobs)
        
        # if len(self.buffer.action_masks) != 0 and self.mask_actions:
        #     masks = torch.IntTensor(np.concatenate(self.buffer.action_masks, axis=0)).to(self.device)
        # else:
        masks = None
        values, action_logprobs, _, _ = self.meta_evaluate_actions(observations, actions_his, masks=masks, return_others=False)
        # returned values
        if self.config.reward_type in ["1step"]:
            return_values =  values.to(self.device)
        elif self.config.reward_type in ["mstep"]:
            return_values =  torch.hstack(self.buffer.compute_truncated_values(values, self.gamma))
        advantages = returns - return_values.detach()
        # print("rewards: ", rewards, "returns: ", returns)
        # print("values: ", values,  "return_values: ", return_values)
        
        if self.norm_advantage:
            advantages = (advantages - advantages.mean()) / (advantages.std() + 1e-8)
        actor_loss = - (action_logprobs * advantages).mean()
        # comppute critic loss
        if self.config.reward_type in ["1step", "mstep"]:
            critic_loss = F.mse_loss(rewards, values)
        
        # entropy_loss = dist_entropy.mean()
        # print("actor_loss:", actor_loss, "critic_loss:", critic_loss)
        loss = actor_loss + self.coef_critic_loss * critic_loss #+ self.coef_entropy_loss * entropy_loss

        self.optimizer.zero_grad()
        loss.backward()
        if self.clip_grad:
            grad_clipped = torch.nn.utils.clip_grad_norm_(self.policy.parameters(), self.max_grad_norm)
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

class PGSolver(RLSolver):
    def __init__(self, **kwargs):
        super(PGSolver, self).__init__(**kwargs)

    def update(self, ):
        observations = self.preprocess_obs(self.buffer.observations, self.device)
        actions = torch.LongTensor(self.buffer.actions).to(self.device)
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


class PGWithBaselineSolver(RLSolver):

    def __init__(self, **kwargs):
        super(PGWithBaselineSolver, self).__init__(**kwargs)

    def update(self, ):
        observations = self.preprocess_obs(self.buffer.observations, self.device)
        actions = torch.LongTensor(self.buffer.actions).to(self.device)
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


class A2CSolver(RLSolver):

    def __init__(self, **kwargs):
        super(A2CSolver, self).__init__(**kwargs)
        self.repeat_times = 1

    def update(self, ):
        print("self.buffer.observations: ", self.buffer.observations)
        batch_logprobs = torch.cat(self.buffer.logprobs, dim=0).to(self.device)
        # batch_values = torch.cat(self.buffer.values, dim=0).to(self.device)
        observations = self.preprocess_obs(self.buffer.observations, self.device)
        actions = torch.LongTensor(self.buffer.actions).to(self.device)
        returns = torch.FloatTensor(self.buffer.returns).to(self.device)
        if len(self.buffer.action_masks) != 0 and self.mask_actions:
            masks = torch.IntTensor(np.concatenate(self.buffer.action_masks, axis=0)).to(self.device)
        else:
            masks = None
        values, action_logprobs, dist_entropy, other = self.evaluate_actions(observations, actions, masks=masks, return_others=True)
        advantages = returns - values.detach()
        if self.norm_advantage:
            advantages = (advantages - advantages.mean()) / (advantages.std() + 1e-8)
        actor_loss = - (action_logprobs * advantages).mean()
        critic_loss = F.mse_loss(returns, values)
        entropy_loss = dist_entropy.mean()
        loss = actor_loss + self.coef_critic_loss * critic_loss + self.coef_entropy_loss * entropy_loss

        self.optimizer.zero_grad()
        loss.backward()
        if self.clip_grad:
            torch.nn.utils.clip_grad_norm_(self.policy.parameters(), self.max_grad_norm)
        self.optimizer.step()

        info = {
            'lr': self.optimizer.defaults['lr'],
            'loss/loss': loss.detach().cpu().numpy(),
            'loss/actor_loss': actor_loss.detach().cpu().numpy(),
            'loss/critic_loss': critic_loss.detach().cpu().numpy(),
            'loss/entropy_loss': entropy_loss.detach().cpu().numpy(),
            'value/logprob': action_logprobs.detach().mean().cpu().numpy(),
            'value/return': returns.detach().mean().cpu().numpy()
        }
        self.log(info, self.update_time, only_tb=False)

        self.buffer.clear()
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        self.update_time += 1
        return loss


class PPOSolver(RLSolver):

    def __init__(self, **kwargs):
        super(PPOSolver, self).__init__(**kwargs)

    def update(self, ):
        assert self.buffer.size() >= self.batch_size

        batch_observations = self.preprocess_obs(self.buffer.observations, self.device)
        batch_actions = torch.LongTensor(self.buffer.actions).to(self.device)
        batch_old_action_logprobs = torch.cat(self.buffer.logprobs, dim=0).to(self.device).detach()
        batch_rewards = torch.FloatTensor(self.buffer.rewards).to(self.device)

        batch_returns = torch.FloatTensor(self.buffer.returns).to(self.device)

        if len(self.buffer.action_masks) != 0 and self.mask_actions:
            batch_masks = torch.IntTensor(np.concatenate(self.buffer.action_masks, axis=0)).to(self.device)
        else:
            batch_masks = None

        sample_times = 1 + int(self.buffer.size() * self.repeat_times / self.batch_size)
        for i in range(sample_times):
            sample_indices = torch.randint(0, self.buffer.size(), size=(self.batch_size,)).long().to(self.device)
            observations  = get_observations_sample(batch_observations, sample_indices)
            actions, returns = batch_actions[sample_indices], batch_returns[sample_indices]
            old_action_logprobs = batch_old_action_logprobs[sample_indices]
            masks = batch_masks[sample_indices] if batch_masks is not None else None
            # evaluate actions and observations
            values, action_logprobs, dist_entropy, other = self.evaluate_actions(observations, actions, masks=masks, return_others=True)
            
            # calculate advantage
            advantages = returns - values.detach()
            if self.norm_advantage and values.numel() != 0:
                advantages = (advantages - advantages.mean()) / (advantages.std() + 1e-9)
            ratio = torch.exp(action_logprobs - old_action_logprobs)
            surr1 = ratio * advantages
            surr2 = torch.clamp(ratio, 1. - self.eps_clip, 1. + self.eps_clip) * advantages
            actor_loss = - torch.min(surr1, surr2).mean()
            critic_loss = self.criterion_critic(returns, values)
            entropy_loss = dist_entropy.mean()

            mask_loss = other.get('mask_actions_probs', 0)
            prediction_loss = other.get('prediction_loss', 0)

            loss = actor_loss + self.coef_critic_loss * critic_loss - self.coef_entropy_loss * entropy_loss + self.coef_mask_loss * mask_loss + prediction_loss
            # update parameters
            self.optimizer.zero_grad()
            loss.backward()
            if self.clip_grad:
                grad_clipped = torch.nn.utils.clip_grad_norm_(self.policy.parameters(), self.max_grad_norm)
            self.optimizer.step()
    
            if self.open_tb and self.update_time % self.log_interval == 0:
                info = {
                    'lr': self.optimizer.defaults['lr'],
                    'loss/loss': loss.detach().cpu().numpy(),
                    'loss/actor_loss': actor_loss.detach().cpu().numpy(),
                    'loss/critic_loss': critic_loss.detach().cpu().numpy(),
                    'loss/entropy_loss': entropy_loss.detach().cpu().numpy(),
                    'value/logprob': action_logprobs.detach().mean().cpu().numpy(),
                    'value/old_action_logprob': old_action_logprobs.mean().cpu().numpy(),
                    'value/value': values.detach().mean().cpu().numpy(),
                    'value/return': returns.mean().cpu().numpy(),
                    'value/advantage': advantages.detach().mean().cpu().numpy(),
                    'value/reward': batch_rewards.mean().cpu().numpy(),
                    'grad/grad_clipped': grad_clipped.detach().cpu().numpy()
                }
                only_tb = not (i == sample_times-1)
                self.log(info, self.update_time, only_tb=only_tb)

            self.update_time += 1

        # print(f'loss: {loss.detach():+2.4f} = {actor_loss.detach():+2.4f} & {critic_loss:+2.4f} & {entropy_loss:+2.4f} & {mask_loss:+2.4f}, ' +
        #         f'action log_prob: {action_logprobs.mean():+2.4f} (old: {batch_old_action_logprobs.detach().mean():+2.4f}), ' +
        #         f'mean reward: {returns.detach().mean():2.4f}', file=self.fwriter) if self.verbose >= 0 else None
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        
        self.buffer.clear()
        return loss.detach()


class ARPPOSolver(RLSolver):

    def __init__(self, **kwargs):
        super(ARPPOSolver, self).__init__(**kwargs)
        self.repeat_times = kwargs.get('repeat_times', 10)
        self.gae_lambda = kwargs.get('gae_lambda', 0.98)
        self.eps_clip = kwargs.get('eps_clip', 0.2)

    def update(self, ):
        assert self.buffer.size() >= self.batch_size

        batch_observations = self.preprocess_obs(self.buffer.observations, self.device)
        batch_actions = torch.LongTensor(self.buffer.actions).to(self.device)
        batch_old_action_logprobs = torch.cat(self.buffer.logprobs, dim=0).to(self.device).detach()
        batch_rewards = torch.FloatTensor(self.buffer.rewards).to(self.device)

        mean_batch_rewards = batch_rewards.mean()

        batch_returns = torch.FloatTensor(self.buffer.returns).to(self.device)

        if len(self.buffer.action_masks) != 0 and self.mask_actions:
            batch_masks = torch.IntTensor(np.concatenate(self.buffer.action_masks, axis=0)).to(self.device)
        else:
            batch_masks = None

        sample_times = 1 + int(self.buffer.size() * self.repeat_times / self.batch_size)
        for i in range(sample_times):
            sample_indices = torch.randint(0, self.buffer.size(), size=(self.batch_size,)).long()
            observations  = get_observations_sample(batch_observations, sample_indices)
            actions, returns = batch_actions[sample_indices], batch_returns[sample_indices]
            old_action_logprobs = batch_old_action_logprobs[sample_indices]
            masks = batch_masks[sample_indices] if batch_masks is not None else None
            # evaluate actions and observations
            values, action_logprobs, dist_entropy, other = self.evaluate_actions(observations, actions, masks=masks, return_others=True)
            
            # calculate advantage
            advantages = returns - values.detach()
            if self.norm_advantage and values.numel() != 0:
                advantages = (advantages - advantages.mean()) / (advantages.std() + 1e-9)
            ratio = torch.exp(action_logprobs - old_action_logprobs)
            surr1 = ratio * advantages
            surr2 = torch.clamp(ratio, 1. - self.eps_clip, 1. + self.eps_clip) * advantages
            actor_loss = - torch.min(surr1, surr2).mean()
            critic_loss = self.criterion_critic(returns, values)
            entropy_loss = dist_entropy.mean()

            mask_loss = other.get('mask_actions_probs', 0)
            prediction_loss = other.get('prediction_loss', 0)

            loss = actor_loss + self.coef_critic_loss * critic_loss - self.coef_entropy_loss * entropy_loss + self.coef_mask_loss * mask_loss + prediction_loss
            # update parameters
            self.optimizer.zero_grad()
            loss.backward()
            if self.clip_grad:
                grad_clipped = torch.nn.utils.clip_grad_norm_(self.policy.parameters(), self.max_grad_norm)
            self.optimizer.step()
    
            if self.open_tb and self.update_time % self.log_interval == 0:
                info = {
                    'lr': self.optimizer.defaults['lr'],
                    'loss/loss': loss.detach().cpu().numpy(),
                    'loss/actor_loss': actor_loss.detach().cpu().numpy(),
                    'loss/critic_loss': critic_loss.detach().cpu().numpy(),
                    'loss/entropy_loss': entropy_loss.detach().cpu().numpy(),
                    'value/logprob': action_logprobs.detach().mean().cpu().numpy(),
                    'value/old_action_logprob': old_action_logprobs.mean().cpu().numpy(),
                    'value/value': values.detach().mean().cpu().numpy(),
                    'value/return': returns.mean().cpu().numpy(),
                    'value/advantages': advantages.mean().cpu().numpy(),
                    'value/reward': batch_rewards.mean().cpu().numpy(),
                    'grad/grad_clipped': grad_clipped.detach().cpu().numpy()
                }
                only_tb = not (i == sample_times-1)
                self.log(info, self.update_time, only_tb=only_tb)

            self.update_time += 1

        # print(f'loss: {loss.detach():+2.4f} = {actor_loss.detach():+2.4f} & {critic_loss:+2.4f} & {entropy_loss:+2.4f} & {mask_loss:+2.4f}, ' +
        #         f'action log_prob: {action_logprobs.mean():+2.4f} (old: {batch_old_action_logprobs.detach().mean():+2.4f}), ' +
        #         f'mean reward: {returns.detach().mean():2.4f}', file=self.fwriter) if self.verbose >= 0 else None
        self.lr_scheduler.step() if self.lr_scheduler is not None else None
        
        self.buffer.clear()
        return loss.detach()
