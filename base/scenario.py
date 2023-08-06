import tqdm
import pprint
import os
import copy
import time

import math
import scipy
import numpy as np
import networkx as nx

import torch

from base import Solution, Counter, Recorder
from data.generator import Generator
from utils import count_parameters

class Scenario:
    def __init__(self, env, solver, config):
        self.env = env
        self.solver = solver
        self.config = config
        self.verbose = config.verbose

class BasicScenario(Scenario):

    def __init__(self, env, solver, config):
        super(BasicScenario, self).__init__(env, solver, config)
        self.solve_time = 0.0

    def reset(self):
        pass

    def run(self, num_epochs=1, start_epoch=0):
        init_env = self.env
        # load pretrained model
        if hasattr(self.solver, 'load_model') and self.config.pretrained_model_path != '':
            self.solver.load_model(self.config.pretrained_model_path)
        # execute pretrain
        if hasattr(self.solver, 'learn') and self.config.num_pretrain_epochs > 0:
            print(f"\n{'-' * 20}  Pretrain  {'-' * 20}\n")
            self.solver.learn(self.env, num_epochs=self.config.num_pretrain_epochs, kwargs =self.config)
            print(f"\n{'-' * 20}    Pretrain Done    {'-' * 20}\n")
            # load trained model
            self.solver.load_model(os.path.join(self.env.recorder.save_dir, 'models','model.pkl'))
        # outer layer rl
        if hasattr(self.solver, 'meta_learn') and self.config.num_train_epochs > 0:
            self.solver.meta_learn(self.env, num_epochs=self.config.num_train_epochs, kwargs =self.config)
            # load post-trained model
            self.solver.load_model(os.path.join(self.env.recorder.save_dir, 'models','post_model.pkl'))
        # eval mode
        if hasattr(self.solver, 'eval_mode') :
            self.solver.eval_mode()
        # 
        for epoch_id in range(1):  
            total_start = time.time()
            print(f'\nEpoch {epoch_id}') if self.verbose >= 2 else None
            if hasattr(self.solver, 'validate') :
                self.solver.validate(self.env, stage = "infer", epoch_id="00", checkpoint_path=None, timing=True)
                self.solve_time = self.solver.time_solve
            else:
                instance = self.env.reset()
                pbar = tqdm.tqdm(desc=f'Running with {self.solver.name} in epoch {epoch_id}', total=self.env.num_vns) if self.verbose <= 1 else None

                instance_cnt = 0
                while True:
                    instance_cnt += 1
                    solve_start_time = time.time()
                    solution = self.solver.solve(instance)
                    self.solve_time += time.time() - solve_start_time
                    next_instance, _, done, info = self.env.step(solution)
                
                    if pbar is not None: 
                        pbar.update(1)
                        pbar.set_postfix({
                            'ac': f'{info["success_count"] / info["vn_count"]:1.3f}',
                            'r2c': f'{info["total_r2c"]:1.2f}',
                            'inservice': f'{info["inservice_count"]:04d}',
                        })

                    if done:
                        break
                    instance = next_instance

                if pbar is not None: pbar.close()            
                summary_info = self.env.summary_records(epoch_id=epoch_id)
                if self.verbose == 0:
                    pprint.pprint(summary_info)

            # timing
            solve_time = self.solve_time
            total_time = time.time() - total_start
            simul_time = total_time - solve_time
            print(f"Solve Time: {time2hms(solve_time)}, or {solve_time:.4f} seconds")
            print(f"Simul Time: {time2hms(simul_time)}, or {simul_time:.4f} seconds")
            print(f"Total Time: {time2hms(total_time)}, or {total_time:.4f} seconds")
        with open(os.path.join(self.env.recorder.save_dir, "records", "log.txt"),'a') as f:
            print(f"Sim Time:{simul_time:.4f}, Solve Time: {solve_time:.4f}, Total Time: {total_time:.4f}", file=f)
            
            
class RLScenario(Scenario):
    def __init__(self, env, solver, config):
        super(RLScenario, self).__init__(env, solver, config)

    def reset(self):
        pass

    def run(self, num_epochs=1, start_epoch=0):
        # execute pretrain
        run_model_path = self.config.pretrained_model_path
        if hasattr(self.solver, 'learn') and (self.config.num_pretrain_epochs >0):
            self.solver.learn(self.env)
            run_model_path =  os.path.join(self.env.recorder.save_dir, "models", "rl_model.pth")
        if hasattr(self.solver, 'meta_learn') and self.config.num_train_epochs > 0:
            self.solver.load_model(self.env, run_model_path)
            self.solver.meta_learn(self.env, num_epochs=self.config.num_train_epochs, kwargs =self.config)
            # load post-trained model
            run_model_path = os.path.join(self.env.recorder.save_dir, 'models','post_model.pth')
            
        print(f"\n\n{'-' * 20}    Inference    {'-' * 20}\n")
        self.solver.load_model(self.env, run_model_path)
        total_time_start = time.time()
        if self.config.rl_mode:
            self.solver.rl_validate(self.env, stage = "infer-RL", epoch_id="01", checkpoint_path=None, timing=True, visualize = self.config.visualize)
        else:
            self.solver.validate(self.env, stage = "infer", epoch_id="00", checkpoint_path=None, timing=True)
        # get solving time
        total_time = time.time() - total_time_start
        solve_time = self.solver.time_nn + self.solver.time_rank + self.solver.time_search
        simul_time = total_time - solve_time
        print(f"GNN time: {time2hms(self.solver.time_nn)} Rank Time: {time2hms(self.solver.time_rank)} Search Time: {time2hms(self.solver.time_search)}")
        print(f"Solve Time: {time2hms(solve_time)}, or {solve_time:.4f} seconds")
        print(f"Simul Time: {time2hms(simul_time)}, or {simul_time:.4f} seconds")
        print(f"Total Time: {time2hms(total_time)}, or {total_time:.4f} seconds")
        with open(os.path.join(self.env.recorder.save_dir, "records", "log.txt"),'a') as f:
                print(f"GNN time: {self.solver.time_nn:.4f} Rank Time: {self.solver.time_rank:.4f} Search Time: {self.solver.time_search:.4f}, \
                      Sim Time:{simul_time:.4f}, Total Solving Time: {solve_time:.4f}, Total Time: {total_time:.4f}", file=f)
    
                
def time2hms(seconds):
    m, s = divmod(seconds, 60)
    h, m = divmod(m, 60)
    return "%02d:%02d:%.4f" % (h, m, s)