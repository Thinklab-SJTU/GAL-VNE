import abc
import copy
import time

import numpy as np
import networkx as nx

import torch
import torch.nn as nn
import torch.nn.functional as F

from ..net_base import MCritic


class Actor(nn.Module):
    def __init__(self, feature_dim, embedding_dim=64, kwargs = None):
        super(Actor, self).__init__()
        self.device = kwargs.get('device')
        # # linear layer
        # self.net = nn.Sequential(
        #     nn.Linear(feature_dim, embedding_dim),
        #     # nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
        #     nn.ReLU(),
        #     nn.Linear(embedding_dim, 1),
        #     nn.Flatten(),
        #     # nn.ReLU(),
        # )
        # cnn layer
        self.net = nn.Sequential(
            nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
            nn.ReLU(),
            nn.Flatten(),
        )
        self.MCritic = MCritic(kwargs)

    def estimate_future_obs(self, future_obs):
        return self.MCritic(future_obs)

    def forward(self, obs):
        """Return logits of actions"""
        # print("actor obs: ", obs.shape)
        action_logits = self.net(obs)
        # print("actor action_logits: ", action_logits.shape)
        return action_logits
    
    def act(self, obs):
        return self(obs)

# class Critic(nn.Module):
#     def __init__(self, feature_dim, action_dim, embedding_dim=64):
#         super(Critic, self).__init__()
#         self.net = nn.Sequential(
#             nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
#             nn.Flatten(),
#             nn.ReLU(),
#             nn.Linear(action_dim, 1)
#         )
        
#     def forward(self, obs):
#         """Return logits of actions"""
#         values = self.net(obs)
#         return values