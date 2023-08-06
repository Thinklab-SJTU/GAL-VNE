import copy
import numpy as np
import networkx as nx

import torch

from base import Solution, Controller, Counter
from .hopfield_network import HopfieldNetwork
from ...solver import Solver
from ...rank.node_rank import GRCNodeRank, RandomNodeRank
from solver.heuristics.node_rank import GRCRankSolver, RandomWalkRankSolver


class NeuroSolver(Solver):
    
    name = 'neuro_vine'

    def __init__(self, **kwargs):
        super(NeuroSolver, self).__init__(**kwargs)
        self.k = 10#2.5
        self.alpha = 10
        self.beta = 7.0
        self.gamma = 3.0
        self.grc_rank = RandomNodeRank() # GRCNodeRank() #
        self.sub_solver = RandomWalkRankSolver(**kwargs) #GRCRankSolver(reusable=self.reusable, verbose=self.verbose) #
        # device
        # self.use_cuda = kwargs.get('use_cuda', True)
        # if self.use_cuda and torch.cuda.is_available() and kwargs['cuda_id']>=0:
        #     self.device = torch.device('cuda:'+str(kwargs['cuda_id']))
        #     self.device_name = torch.cuda.get_device_name(torch.cuda.current_device())
        # else:
        #     self.device = torch.device('cpu')
        #     self.device_name = 'CPU'

    def rank_node(self, network):
        n_attrs = network.get_node_attrs(['resource'])
        node_attrs_data = np.array(network.get_node_attrs_data(n_attrs)).T
        node_attrs_benchmark = np.expand_dims(node_attrs_data.max(axis=0), axis=0)
        norm_node_attrs_data = node_attrs_data / node_attrs_benchmark
        node_rank_vector = self.beta * norm_node_attrs_data.mean(axis=-1)
        return node_rank_vector

    def rank_edge(self, network):
        e_attrs = network.get_edge_attrs(['resource'])
        adjacency_attrs_data = network.get_adjacency_attrs_data(e_attrs)
        adjacency_attrs_data = np.array([adjacency_attrs_data[i].toarray() for i in range(len(adjacency_attrs_data))])
        adjacency_attrs_benchmark = np.expand_dims(adjacency_attrs_data.max(axis=-1).max(axis=-1), axis=[1, 2])
        # edge_wights = np.divide(adjacency_attrs_benchmark - adjacency_attrs_data, adjacency_attrs_benchmark)
        edge_wights = adjacency_attrs_benchmark - np.divide(adjacency_attrs_data, adjacency_attrs_benchmark)

        edge_wights = edge_wights.mean(axis=0)  # (num_nodes, num_nodes)

        G = nx.Graph(edge_wights)
        distances = nx.floyd_warshall(G)
        distance_max = 0
        for i in range(network.num_nodes):
            for j in range(i, network.num_nodes):
                if distances[i][j] > distance_max:
                    distance_max = distances[i][j]

        edge_rank_matrix = np.ones((network.num_nodes, network.num_nodes))
        for i in range(network.num_nodes):
            for j in range(i, network.num_nodes):
                edge_rank_matrix[i,j] = self.gamma * distances[i][j] / distance_max
                edge_rank_matrix[j,i] = self.gamma * distances[j][i] / distance_max
        return edge_rank_matrix

    def solve(self, instance):
        vn, pn = instance['vn'], instance['pn']
        # Enter Event
        chi = self.rank_node(pn)
        psi = self.rank_edge(pn)
        num_preselect_nodes = self.number_of_node_selection(vn)
        zeta = num_preselect_nodes if num_preselect_nodes <= pn.num_nodes else pn.num_nodes
        
        h_net = HopfieldNetwork(chi, psi, zeta)
        pn_node_rank_vector = h_net.execute()

        pn_subgraph_nodes = [i for i, value in enumerate(pn_node_rank_vector) if value > 0.5]
        solution = self.bfs_solve(vn, pn, pn_subgraph_nodes) #self.grc_solve(vn, pn, pn_subgraph_nodes)
        # pn_subgraph_nodes = [i for i, value in enumerate(pn_node_rank_vector) if i <= zeta]

        # pn_subgraph = pn.subgraph(pn_subgraph_nodes)
        # pn_copy = copy.deepcopy(pn)
        # n_attrs = pn.get_node_attrs(['resource'])
        # for p_node_id in pn.nodes:
        #     if p_node_id in pn_subgraph_nodes:
        #         continue
        #     for n_attr in n_attrs:
        #         pn.nodes[p_node_id][n_attr.name] = 0

        # solution = self.sub_solver.solve(vn, pn)

        # n_attrs = pn.get_node_attrs(['resource'])
        # for p_node_id in pn.nodes:
        #     if p_node_id in pn_subgraph_nodes:
        #         continue
        #     for n_attr in n_attrs:
        #         pn.nodes[p_node_id][n_attr.name] = pn_copy.nodes[p_node_id][n_attr.name]
        
        return solution

    def grc_solve(self, vn, pn, pn_subgraph_nodes):
        def node_mapping(vn, pn):
            r"""Attempt to accommodate VNF in appropriate physical node."""
            vn_rank = self.grc_rank(vn)
            pn_rank = self.grc_rank(pn)
            sorted_v_nodes = list(vn_rank)
            sorted_p_nodes = list(pn_rank)
            sorted_p_nodes = list(set(sorted_p_nodes).intersection(set(pn_subgraph_nodes)))
            node_mapping_result = Controller.node_mapping(vn, pn, 
                                                            sorted_v_nodes=sorted_v_nodes, 
                                                            sorted_p_nodes=sorted_p_nodes, 
                                                            solution=self.solution, 
                                                            reusable=False, inplace=True, matching_method=self.matching_method)
            return node_mapping_result

        def link_mapping(vn, pn):
            r"""Seek a path connecting """
            if self.edge_rank is None:
                sorted_v_edges = vn.edges
            else:
                vn_edges_rank_dict = self.edge_rank(vn)
                vn_edges_sort = sorted(vn_edges_rank_dict.items(), reverse=True, key=lambda x: x[1])
                sorted_v_edges = [edge_value[0] for edge_value in vn_edges_sort]

            link_mapping_result = Controller.link_mapping(vn, pn, solution=self.solution, 
                                                            sorted_v_edges=sorted_v_edges, 
                                                            shortest_method=self.shortest_method,
                                                            k=self.k_shortest, inplace=True)
            return link_mapping_result
        self.solution = Solution(vn)
        node_mapping_result = node_mapping(vn, pn)
        if node_mapping_result:
            link_mapping_result = link_mapping(vn, pn)
            if link_mapping_result:
                # SUCCESS
                self.solution['result'] = True
                return self.solution
            else:
                # FAILURE
                self.solution['route_result'] = False
        else:
            # FAILURE
            self.solution['place_result'] = False
        self.solution['result'] = False
        return self.solution

    def bfs_solve(self, vn, pn, pn_subgraph_nodes):        
        vn_nodes_rank = self.grc_rank.rank(vn)
        pn_nodes_rank = self.grc_rank.rank(pn)
        largest_rank_vid = list(vn_nodes_rank.keys())[0]
        vn_node_level = nx.single_source_shortest_path_length(vn, largest_rank_vid)
        vn_node_level_rank_list = []
        for node, level in vn_node_level.items():
            vn_node_level_rank_list.append({'node': node, 'level': level, 'rank': vn_nodes_rank[node]})
        sorted_vn_node = sorted(vn_node_level_rank_list, key=lambda r: (r['level'], -r['rank'])) #increasing order of level, decreasing order of rank

        sorted_v_nodes = [n['node'] for n in sorted_vn_node]
        sorted_p_nodes = [n for n in pn_nodes_rank]
        sorted_p_nodes = list(set(sorted_p_nodes).intersection(set(pn_subgraph_nodes)))
        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node)
        return solution

    def number_of_node_selection(self, vn):
        return int(self.k * vn.num_nodes)
    # def hopfield_network(self, chi, psi, zeta):
    #     alpha = 10
    #     net_weights = np.ones((len(chi), len(chi)))
    #     for i in range(zeta):
    #         net_weights[i,i] = 0
    #     i_weight = np.ones(len(chi)) * -(2*zeta-1)
    #     T = -2 * (psi + alpha * net_weights)
    #     I = -(chi + alpha * i_weight)
    #     return (T, I)