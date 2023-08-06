import numpy as np

from ..solver import Solver
from ..rank.node_rank import OrderNodeRank, GRCNodeRank, FFDNodeRank, NRMNodeRank, RWNodeRank, RandomNodeRank
from ..rank.edge_rank import OrderEdgeRank, FFDEdgeRank
from base import Controller, Solution

class NodeRankSolver(Solver):
    
    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        super(NodeRankSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        # node mapping
        self.matching_method = kwargs.get('matching_method', 'greedy')
        # link mapping
        self.shortest_method = kwargs.get('shortest_method', 'bfs_shortest')
        self.k_shortest = kwargs.get('k_shortest', 10)

    def solve(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        solution = Solution(vn)
        node_mapping_result = self.node_mapping(vn, pn, solution)
        if node_mapping_result:
            link_mapping_result = self.link_mapping(vn, pn, solution)
            if link_mapping_result:
                # SUCCESS
                solution['result'] = True
                return solution
            else:
                # FAILURE
                solution['route_result'] = False
        else:
            # FAILURE
            solution['place_result'] = False
        solution['result'] = False
        return solution

    def save(self, instance):
        vn, pn  = instance['vn'], instance['pn']
        vn_rank = self.node_rank(vn, sort=False)
        pn_rank = self.node_rank(pn, sort=False)
        vn_scores = np.array(list(vn_rank.values()))
        pn_scores = np.array(list(pn_rank.values()))
        return vn, vn_scores, pn, pn_scores

    def node_mapping(self, vn, pn, solution):
        r"""Attempt to accommodate VNF in appropriate physical node."""
        vn_rank = self.node_rank(vn)
        pn_rank = self.node_rank(pn)
        sorted_v_nodes = list(vn_rank)
        sorted_p_nodes = list(pn_rank)
        
        node_mapping_result = Controller.node_mapping(vn, pn, 
                                                        sorted_v_nodes=sorted_v_nodes, 
                                                        sorted_p_nodes=sorted_p_nodes, 
                                                        solution=solution, 
                                                        reusable=False, inplace=True, matching_method=self.matching_method)
        return node_mapping_result

    def link_mapping(self, vn, pn, solution):
        r"""Seek a path connecting """
        if self.edge_rank is None:
            sorted_v_edges = vn.edges
        else:
            vn_edges_rank_dict = self.edge_rank(vn)
            vn_edges_sort = sorted(vn_edges_rank_dict.items(), reverse=True, key=lambda x: x[1])
            sorted_v_edges = [edge_value[0] for edge_value in vn_edges_sort]

        link_mapping_result = Controller.link_mapping(vn, pn, solution=solution, 
                                                        sorted_v_edges=sorted_v_edges, 
                                                        shortest_method=self.shortest_method,
                                                        k=self.k_shortest, inplace=True)
        return link_mapping_result


class OrderRankSolver(NodeRankSolver):
    
    def __init__(self, name, reusable=False, verbose=1, **kwargs):
        super(OrderRankSolver, self).__init__(name='order_rank', reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = OrderNodeRank()
        self.edge_rank = None


class RandomRankSolver(NodeRankSolver):

    def __init__(self, reusable=False, verbose=1, **kwargs):
        super(RandomRankSolver, self).__init__(name='random_rank', reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = RandomNodeRank()
        self.edge_rank = None


class GRCRankSolver(NodeRankSolver):

    def __init__(self, name='grc', reusable=False, verbose=1, sigma=0.00001, d=0.85, **kwargs):
        super(GRCRankSolver, self).__init__(name='grc', reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = GRCNodeRank(sigma=sigma, d=d)
        self.edge_rank = None
        self.shortest_method = 'available_shortest'


class FFDRankSolver(NodeRankSolver):

    def __init__(self,name, reusable=False, verbose=1, **kwargs):
        super(FFDRankSolver, self).__init__(name='ffd_rank', reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = FFDNodeRank() 
        self.edge_rank = None


class NRMRankSolver(NodeRankSolver):

    def __init__(self, name='NRM_VNE',reusable=False, verbose=1, **kwargs):
        super(NRMRankSolver, self).__init__(name='NRM_VNE', reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = NRMNodeRank()
        self.edge_rank = None


class RandomWalkRankSolver(NodeRankSolver):

    def __init__(self, name='RW_MM', reusable=False, verbose=1, sigma=0.0001, p_J_u=0.15, p_F_u=0.85, **kwargs):
        super(RandomWalkRankSolver, self).__init__(name=name, reusable=reusable, verbose=verbose, **kwargs)
        self.node_rank = RWNodeRank(sigma, p_J_u, p_F_u)
        self.edge_rank = None


if __name__ == '__main__':
    pass