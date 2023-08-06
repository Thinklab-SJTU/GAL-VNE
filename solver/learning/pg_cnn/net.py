import abc
import copy
import time

import numpy as np
import networkx as nx

import torch
import torch.nn as nn
import torch.nn.functional as F

from ..net_base import MCritic

class ActorCritic(nn.Module):
    
    def __init__(self, feature_dim, action_dim, embedding_dim=64, kwargs = None):
        super(ActorCritic, self).__init__()
        self.device = kwargs.get('device')
        self.actor = Actor(feature_dim, action_dim, embedding_dim)
        self.critic = Critic(feature_dim, action_dim, embedding_dim)
        self.MCritic = MCritic(kwargs)

    def estimate_future_obs(self, future_obs):
        return self.MCritic(future_obs)
    
    def act(self, x):
        return self.actor(x)

    def evaluate(self, obs):
        """Return logits of actions"""
        values = self.critic(obs)
        return values

class Actor(nn.Module):
    def __init__(self, feature_dim, action_dim, embedding_dim=64):
        super(Actor, self).__init__()
        self.net = nn.Sequential(
            nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
            nn.ReLU(),
            nn.Flatten(),
        )

    def forward(self, obs):
        """Return logits of actions"""
        action_logits = self.net(obs)
        # action_logits = self.relu(out)
        return action_logits

    def act(self, obs):
        return self(obs)

class Critic(nn.Module):
    def __init__(self, feature_dim, action_dim, embedding_dim=64):
        super(Critic, self).__init__()
        self.net = nn.Sequential(
            nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
            nn.Flatten(),
            nn.ReLU(),
            nn.Linear(action_dim, 1)
        )
        
    def forward(self, obs):
        """Return logits of actions"""
        values = self.net(obs)
        return values
