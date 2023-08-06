import abc
import copy
import os
from easydict import EasyDict

import torch

# from base import Controller


class Solver:
    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        __metaclass__ = abc.ABCMeta
        self.name = name
        self.num_arrived_vns = 0
        # self.controller = Controller()
        self.reusable = reusable # kwargs.get('reusable', False)
        self.verbose = verbose # kwargs.get('verbose', 1)
        self.num_arrived_v_nets = 0
        save_dir = kwargs.get('save_dir', 'save')
        solver_name = kwargs.get('solver_name', 'unknown_solver')
        run_id = kwargs.get('run_id', 'unknown_host-unknown_time')
        self.save_dir = os.path.join(save_dir, solver_name, run_id)
        # ranking strategy
        self.node_rank = None
        self.edge_rank = None
        self.node_ranking_method = kwargs.get('node_ranking_method', 'order')
        self.link_ranking_method = kwargs.get('link_ranking_method', 'order')
        # node mapping
        self.matching_method = kwargs.get('matching_method', 'greedy')
        # link mapping
        self.shortest_method = kwargs.get('shortest_method', 'k_shortest')
        self.k_shortest = kwargs.get('k_shortest', 10)
        # action
        self.allow_rejection = kwargs.get('allow_rejection', False)
        self.allow_revocable = kwargs.get('allow_revocable', False)
        self.basic_config = {
            'reusable': self.reusable,
            'node_ranking_method': self.node_ranking_method,
            'link_ranking_method': self.link_ranking_method,
            'matching_method': self.matching_method,
            'shortest_method': self.shortest_method,
            'k_shortest': self.k_shortest,
            'allow_revocable': self.allow_revocable,
            'allow_revocable': self.allow_revocable
        }
        # training
        self.use_cuda = kwargs.get('use_cuda', True)
        if self.use_cuda and torch.cuda.is_available() and kwargs['cuda_id']>=0:
            self.device = torch.device('cuda:'+str(kwargs['cuda_id']))
            self.device_name = torch.cuda.get_device_name(torch.cuda.current_device())
        else:
            self.device = torch.device('cpu')
            self.device_name = 'CPU'
        print("Using device: ", self.device)
        self.time_solve = 0
        
    @classmethod
    def from_config(cls, config, **kwargs):
        if not isinstance(config, dict): config = vars(config)
        # update
        config.update(kwargs)
        config = EasyDict(config)
        config = copy.deepcopy(config)
        reusable = config.get('reusable', False)
        verbose = config.get('verbose', 1)
        name = config.get("solver_name", "d-vne")
        return cls(name=name, **config)
        # return cls(name=name, reusable=reusable, verbose=verbose, **config)

    def solve(obs):
        return NotImplementedError

    # def learn(self, *args, **kwargs):
    #     return