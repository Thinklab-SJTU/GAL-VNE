import abc
import copy
import time

import numpy as np
import networkx as nx

import torch
import torch.nn as nn
import torch.nn.functional as F

from ..net_base import MCritic


# class Actor(nn.Module):
#     def __init__(self, feature_dim, action_dim, embedding_dim=64):
#         super(Actor, self).__init__()
#         self.net = nn.Sequential(
#             nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
#             nn.ReLU(),
#             nn.Flatten(),
#         )
        
#     def forward(self, obs):
#         """Return logits of actions"""
#         action_logits = self.net(obs)
#         # action_logits = self.relu(out)
#         return action_logits

#     def act(self, obs):
#         return self(obs)



class Actor(nn.Module):
    def __init__(self, feature_dim, action_dim, embedding_dim=64, kwargs = None):
        super(Actor, self).__init__()
        self.encoder = Encoder(feature_dim, action_dim, embedding_dim)
        self.decoder = Decoder(feature_dim, action_dim, embedding_dim)
        
        self.net = nn.Sequential(
            nn.Conv2d(1, 1, kernel_size=[1, feature_dim], stride=[1, 1]),
            nn.ReLU(),
            nn.Flatten(),
        )
        self.MCritic = MCritic(kwargs)

    def estimate_future_obs(self, future_obs):
        return self.MCritic(future_obs)
    
    def encode(self, x):
        return self.encoder(x)

    def decode(self, x, hidden):
        return self.decoder(x, hidden)
    
    def forward(self, obs):
        """Return logits of actions"""
        action_logits = self.net(obs)
        # action_logits = self.relu(out)
        return action_logits

    def act(self, obs):
        return self(obs)

class Encoder(nn.Module):

    def __init__(self, feature_dim, action_dim, embedding_dim=64):
        super(Encoder, self).__init__()
        self.emb = nn.Linear(feature_dim, embedding_dim)
        self.rnn = nn.LSTM(embedding_dim, embedding_dim)

    def forward(self, x):
        x = x.permute(1, 0, 2)
        embeddings = F.relu(self.emb(x))
        outputs, (hidden, cell) = self.rnn(embeddings)
        # print("hidden:", hidden.shape, cell.shape)
        return outputs, hidden.squeeze(0)


class Decoder(nn.Module):
    
    def __init__(self, feature_dim, action_dim, embedding_dim=64):
        super(Decoder, self).__init__()
        self.emb = nn.Embedding(action_dim+1, embedding_dim)
        self.rnn = nn.LSTM(embedding_dim, embedding_dim)
        self.lin = nn.Linear(embedding_dim, action_dim)

    def forward(self, x, hidden):
        x = x.unsqueeze(0)
        embedding = F.relu(self.emb(x))
        output, hidden = self.rnn(embedding, hidden)
        logits = self.lin(output)
        return logits, hidden

