import abc
import copy
import time

import numpy as np
import networkx as nx

import torch
import torch.nn as nn
import torch.nn.functional as F

import torch_geometric
import torch_geometric.transforms as T
from torch_geometric.nn import aggr
from torch_geometric.utils import degree
from torch_geometric.nn import GCNConv, SAGEConv, GATv2Conv
from torch_geometric.utils.undirected import is_undirected, to_undirected

from solver.rank.node_rank import NodeRank
from ..net_base import MCritic


def get_clones(module, N):
    return nn.ModuleList([copy.deepcopy(module) for i in range(N)])

# ######################## RL model ######################

class GNN_rank(NodeRank, nn.Module):
    r"""
    Rank nodes with the quantity of node resources.
    """
    def __init__(self, **kwargs):
        super(GNN_rank, self).__init__(**kwargs)
        # parameters           
        self.config = kwargs
        self.device = kwargs.get('device', 'cpu')
        # model
        self.fm_model = FactorizationMachine(**kwargs, fm_in_dims = kwargs['in_channels']-1) 
        self.actor = gnnScorer(**kwargs)
        kwargs.pop("in_channels")
        self.MCriticz = MCritic(kwargs)
        # timing
        self.gnn_time = 0.0
        self.rank_time = 0.0
    
    def estimate_future_obs(self, future_obs):
        return self.MCritic(future_obs)
    
    def rank(self, network, sort=True, timing=False):
        node_out = self.act(network, timing).squeeze()
        node_score = F.softmax(node_out)
        # rank
        Z = node_score.detach().cpu().numpy()
        if timing:
            rank_start_time = time.time()
        sorted_dict = self.to_dict(network, Z, sort=sort)
        if timing:
            self.rank_time += time.time() - rank_start_time
        return sorted_dict, node_score
        #  return: {node_id: rank}; # node_rank: list of ranks. 
    
    def act(self, obs, timing=False):
        if timing:
            gnn_start_time = time.time()
        x, edge_index = self.aggregate_graph(obs)
        actor_scores= self.actor(x, edge_index).squeeze()
        if timing:
            self.gnn_time += time.time() - gnn_start_time
        return actor_scores

    def aggregate_graph(self, network):
        nodes = torch.LongTensor(network.nodes).to(self.device)
        n_nodes = len(nodes)
        # edges:
        directed_edges = torch.from_numpy(np.array(network.edges)).T.to(self.device)
        edge_index = directed_edges
        edge_index = to_undirected(edge_index)
        # edge feats
        e_feat_extrema  = torch.FloatTensor(network.get_edge_attrs_data(network.get_edge_attrs('extrema'))).T.to(self.device)
        e_feat_resource = torch.FloatTensor(network.get_edge_attrs_data(network.get_edge_attrs('resource'))).T.to(self.device)
        if len(e_feat_extrema) == 0:
            e_feat = e_feat_resource
        else:
            e_feat = torch.hstack([e_feat_extrema, e_feat_resource, e_feat_extrema-e_feat_resource, torch.div(e_feat_resource,e_feat_extrema)])
        aggr_edges = torch.hstack((directed_edges[0], directed_edges[1]))
        aggr_x = torch.vstack((e_feat, e_feat))
        aggr_method = aggr.SumAggregation()
        aggr_e_feat = aggr_method(aggr_x, aggr_edges)
        # node features
        n_feat_extrema = torch.FloatTensor(network.get_node_attrs_data(network.get_node_attrs("extrema"))).T.to(self.device)
        n_feat_resource = torch.FloatTensor(network.get_node_attrs_data(network.get_node_attrs("resource"))).T.to(self.device)
        if len(n_feat_extrema) == 0:
            n_feat = n_feat_resource
        else:
            n_feat = torch.hstack([n_feat_extrema, n_feat_resource, n_feat_extrema-n_feat_resource, torch.div(n_feat_resource,n_feat_extrema)])
        # node degrees
        n_deg = degree(aggr_edges, num_nodes = n_nodes).reshape((n_nodes, -1))
        # all feats
        x = torch.cat((n_feat, aggr_e_feat, n_deg), dim=1)
        x = torch.cat((x, self.fm_model(x)),dim=1)
        # normalize:
        x = F.normalize(x, p=np.inf, dim=0) 
        return x, edge_index

# ######################## Score model ######################
class gnnScorer(nn.Module):
    def __init__(self, **kwargs):
        super(gnnScorer, self).__init__()
        in_channels, hidden_channels, out_channels = kwargs['in_channels'], kwargs['embedding_dim'], kwargs['hidden_dim']
        num_heads, num_layers, dropout_prob = kwargs['num_heads'], kwargs['num_gnn_layers'],kwargs['dropout_prob']
        
        self.convs = torch.nn.ModuleList()
        self.convs.append(SAGEConv(in_channels, hidden_channels, aggr ="mean"))#//2, heads = 2))#
        self.bns = torch.nn.ModuleList()
        self.bns.append(nn.BatchNorm1d(hidden_channels))
        for _ in range(num_layers - 2):
            self.convs.append(SAGEConv(hidden_channels, hidden_channels, aggr ="mean"))#//2, heads = 2))
            self.bns.append(nn.BatchNorm1d(hidden_channels))
        self.convs.append(SAGEConv(hidden_channels, 1, aggr ="mean"))#, heads = 2, concat = False))
        self.dropout = dropout_prob

    def reset_parameters(self):
        for conv in self.convs:
            conv.reset_parameters()
        for bn in self.bns:
            bn.reset_parameters()

    def forward(self, x, adj_t):
        for i, conv in enumerate(self.convs[:-1]):
            x = conv(x, adj_t)
            x = self.bns[i](x)
            x = F.relu(x)
            x = F.dropout(x, p=self.dropout, training=self.training)
        x = self.convs[-1](x, adj_t)
        return x

class Critic(nn.Module):
    def __init__(self, **kwargs):
        super(Critic, self).__init__()
        self.critic_v = gnnScorer(**kwargs, in_channels = kwargs['in_channels_v'])        
    def forward(self, x_v, adj_t_v, x_p, adj_t_p):
        """Return logits of actions"""
        scores_v = self.critic_v(x_v, adj_t_v)
        
        value_v = torch.sum(scores_v)
        value = value_v
        return value
    
# ######################## Util function ######################
class FactorizationMachine(nn.Module):
    def __init__(self, **kwargs):
        super(FactorizationMachine, self).__init__()
        self.n = kwargs['fm_in_dims']
        self.k = 3
        self.linear = nn.Linear(self.n, 1, bias=True)
        self.v = nn.Parameter(torch.Tensor(self.k, self.n))  # 注：权重矩阵是(k,n)的，与公式里的相反，目的是下一步能在n的维度上分布初始化
        nn.init.xavier_uniform_(self.v)

    def forward(self, x):
        """
        :param x: Long tensor of size ``(b, n)``
        :return: Long tensor of size ``(b, 1)``
        """
        x1 = self.linear(x)
        square_of_sum = torch.mm(x, self.v.T) * torch.mm(x, self.v.T)
        sum_of_square = torch.mm(x * x, self.v.T * self.v.T)
        x2 = 0.5 * torch.sum((square_of_sum - sum_of_square), dim=-1, keepdim=True)
        x = x1 + x2
        return x

