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

class MCritic(nn.Module):
    def __init__(self, kwargs):
        super(MCritic, self).__init__()
        self.device = kwargs.get('device')
        self.fm_model = FactorizationMachine(**kwargs, fm_in_dims = 4-1) 
        self.gnn = gnnScorer(**kwargs,in_channels = 4)
        self.lin1 = nn.Linear(kwargs["offline_steps"], 8)
        self.lin2 = nn.Linear(8, 1)
        
    def forward(self, future_obs):
        total_score = []
        for obs in future_obs:
            x_i, edge_i = self.aggregate_graph(obs)
            score_i = self.gnn(x_i, edge_i) # n_nodes, 1
            total_score.append(torch.sum(score_i))
        score = torch.stack(total_score)
        score = F.relu(self.lin1(score))
        score = self.lin2(score)
        return score

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
        # print(f"edge_feats: {e_feat.shape}, edge index: {edge_index.shape}, directed_edges: {directed_edges.shape}")
        aggr_edges = torch.hstack((directed_edges[0], directed_edges[1]))
        aggr_x = torch.vstack((e_feat, e_feat))
        # print(f"aggr x: {aggr_x.shape}, aggr edges: {aggr_edges.shape}") 
        aggr_method = aggr.SumAggregation()
        aggr_e_feat = aggr_method(aggr_x, aggr_edges)
        # print(f"aggr_e_feat: {aggr_e_feat.shape}")# N,4
        # node features
        n_feat_extrema = torch.FloatTensor(network.get_node_attrs_data(network.get_node_attrs("extrema"))).T.to(self.device)
        n_feat_resource = torch.FloatTensor(network.get_node_attrs_data(network.get_node_attrs("resource"))).T.to(self.device)
        if len(n_feat_extrema) == 0:
            n_feat = n_feat_resource
        else:
            n_feat = torch.hstack([n_feat_extrema, n_feat_resource, n_feat_extrema-n_feat_resource, torch.div(n_feat_resource,n_feat_extrema)])
        # print( "n_feat", n_feat.shape)# N,2 .reshape((n_nodes, -1))
        # node degrees
        n_deg = degree(aggr_edges, num_nodes = n_nodes).reshape((n_nodes, -1))
        # all feats
        x = torch.cat((n_feat, aggr_e_feat, n_deg), dim=1)
        x = torch.cat((x, self.fm_model(x)),dim=1)
        # normalize:
        x = F.normalize(x, p=np.inf, dim=0)
        # print("node feature shape: ",  x.shape) 
        return x, edge_index
# ######################## Score model ######################
class gnnScorer(nn.Module):
    def __init__(self, **kwargs):
        super(gnnScorer, self).__init__()
        in_channels, hidden_channels, out_channels = kwargs['in_channels'], kwargs['embedding_dim'], kwargs['hidden_dim']
        num_heads, num_layers, dropout_prob = kwargs['num_heads'], kwargs['num_gnn_layers'],kwargs['dropout_prob']
        
        self.convs = nn.ModuleList()
        self.convs.append(SAGEConv(in_channels, hidden_channels, aggr ="mean"))#//2, heads = 2))#
        self.bns = nn.ModuleList()
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