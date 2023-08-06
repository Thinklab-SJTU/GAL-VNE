import networkx as nx
import numpy as np
from abc import abstractclassmethod

from base.controller import Controller
from ..solver import Solver
from ..rank.node_rank import OrderNodeRank, GRCNodeRank, FFDNodeRank, NRMNodeRank, RWNodeRank, RandomNodeRank

class BFSSolver(Solver):
    
    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        super(BFSSolver, self).__init__(name, reusable=reusable, verbose=verbose, **kwargs)

    def select_action(self, obs):
        return self.solve(obs['vn'], obs['pn'])

    @abstractclassmethod
    def solve(self, vn, pn):
        raise NotImplementedError

    def save(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        vn_rank = self.node_rank(vn, sort=False)
        pn_rank = self.node_rank(pn, sort=False)
        vn_scores = np.array(list(vn_rank.values()))
        pn_scores = np.array(list(pn_rank.values()))
        return vn, vn_scores, pn, pn_scores

class OrderRankBFSSolver(BFSSolver):

    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        super(OrderRankBFSSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = OrderNodeRank()

    def solve(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        vn_rank = self.node_rank.rank(vn)
        pn_rank = self.node_rank.rank(pn)

        sorted_v_nodes = list(vn_rank)
        sorted_p_nodes = list(pn_rank)

        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node)
        return solution


class RandomRankBFSSolver(BFSSolver):

    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        super(RandomRankBFSSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = RandomNodeRank()

    def solve(self, instance):
        vn, pn  = instance['vn'], instance['pn']

        vn_rank = self.node_rank.rank(vn)
        pn_rank = self.node_rank.rank(pn)

        sorted_v_nodes = list(vn_rank)
        sorted_p_nodes = list(pn_rank)

        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node)
        return solution


class RandomWalkRankBFSSolver(BFSSolver):
    
    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        super(RandomWalkRankBFSSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = RWNodeRank()

    def solve(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        
        vn_nodes_rank = self.node_rank.rank(vn)
        pn_nodes_rank = self.node_rank.rank(pn)
        largest_rank_vid = list(vn_nodes_rank.keys())[0]
        vn_node_level = nx.single_source_shortest_path_length(vn, largest_rank_vid)
        vn_node_level_rank_list = []
        for node, level in vn_node_level.items():
            vn_node_level_rank_list.append({'node': node, 'level': level, 'rank': vn_nodes_rank[node]})
        sorted_vn_node = sorted(vn_node_level_rank_list, key=lambda r: (r['level'], -r['rank'])) #increasing order of level, decreasing order of rank

        sorted_v_nodes = [n['node'] for n in sorted_vn_node]
        sorted_p_nodes = [n for n in pn_nodes_rank]
        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node, shortest_method='all_shortest')
        return solution
    
class FFDRankBFSSolver(BFSSolver):
    def __init__(self,name='ffd_rank_bfs', reusable=False, verbose=1, **kwargs):
        super(FFDRankBFSSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = FFDNodeRank() 
        self.edge_rank = None
    
    def solve(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        vn_nodes_rank = self.node_rank.rank(vn)
        pn_nodes_rank = self.node_rank.rank(pn)
        largest_rank_vid = list(vn_nodes_rank.keys())[0]
        vn_node_level = nx.single_source_shortest_path_length(vn, largest_rank_vid)
        vn_node_level_rank_list = []
        for node, level in vn_node_level.items():
            vn_node_level_rank_list.append({'node': node, 'level': level, 'rank': vn_nodes_rank[node]})
        sorted_vn_node = sorted(vn_node_level_rank_list, key=lambda r: (r['level'], -r['rank']))

        sorted_v_nodes = [n['node'] for n in sorted_vn_node]
        sorted_p_nodes = [n for n in pn_nodes_rank]
        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node,)
        return solution

class GRCRankBFSSolver(BFSSolver):
    def __init__(self, name='grc_bfs', reusable=False, verbose=1, sigma=0.00001, d=0.85, **kwargs):
        super(BFSSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = GRCNodeRank(sigma=sigma, d=d)
        self.edge_rank = None
        self.shortest_method = 'available_shortest'
    
    def solve(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        vn_nodes_rank = self.node_rank.rank(vn)
        pn_nodes_rank = self.node_rank.rank(pn)
        largest_rank_vid = list(vn_nodes_rank.keys())[0]
        vn_node_level = nx.single_source_shortest_path_length(vn, largest_rank_vid)
        vn_node_level_rank_list = []
        for node, level in vn_node_level.items():
            vn_node_level_rank_list.append({'node': node, 'level': level, 'rank': vn_nodes_rank[node]})
        sorted_vn_node = sorted(vn_node_level_rank_list, key=lambda r: (r['level'], -r['rank']))

        sorted_v_nodes = [n['node'] for n in sorted_vn_node]
        sorted_p_nodes = [n for n in pn_nodes_rank]
        pn_init_node = sorted_p_nodes[0]
        solution = Controller.bfs_deploy(vn, pn, sorted_v_nodes, pn_init_node,)
        return solution



