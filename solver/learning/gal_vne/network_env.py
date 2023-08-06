import copy

import numpy as np

from base import SolutionStepEnvironment
from solver.rank.node_rank import rank_nodes


class graphLevelEnv(SolutionStepEnvironment):
    def __init__(self, p_net, v_net_simulator, recorder, kwargs):
        super(graphLevelEnv, self).__init__(p_net, v_net_simulator,recorder, **kwargs)
    
    def ready(self, event_id=0):
        self.vn_reward = 0
        return super().ready(event_id)

    def step(self, solution):
        # Enter 
        # Success
        if solution['result']:
            self.curr_solution = solution
            self.curr_solution['description'] = 'Success'
        # Failure
        else:
            failure_reason = self.get_failure_reason(solution)
            self.rollback_for_failure(reason=failure_reason)
        # record = self.recorder.self.v_net, self.p_net, self.solution)
        record = self.count_and_add_record()
        done = self.transit_obs()
        return self.get_observation(), self.compute_reward(solution), done, self.get_info(record)

    def compute_reward(self, solution):
        pn_node_resource_utilization = self.recorder.state['pn_node_resource_utilization'] if self.recorder.state['pn_node_resource_utilization'] is not None else 0
        pn_edge_resource_utilization = self.recorder.state['pn_edge_resource_utilization'] if self.recorder.state['pn_edge_resource_utilization'] is not None else 0
        try:
            if solution['result']:
                    reward = solution['vn_rc_ratio'] + pn_node_resource_utilization + pn_edge_resource_utilization
            elif solution['place_result'] and solution['route_result']:
                reward = pn_node_resource_utilization + pn_edge_resource_utilization
            else:
                reward = pn_node_resource_utilization + pn_edge_resource_utilization
        except:
            print("rewards:", solution['vn_rc_ratio'], pn_node_resource_utilization , pn_edge_resource_utilization)
            assert 0
        return reward

    def get_observation(self):
        return {'vn': self.curr_vn, 'pn': self.pn}

    def get_info(self, record={}):
        info = copy.deepcopy(record)
        return info

    def get_node_load_balance(self, p_node_id):
        n_attrs = self.pn.get_node_attrs(['resource'])
        if len(n_attrs) > 1:
            n_resources = np.array([self.pn.nodes[p_node_id][n_attr.name] for n_attr in n_attrs])
            load_balance = np.std(n_resources)
        else:
            n_attr = self.pn.get_node_attrs(['extrema'])[0]
            load_balance = self.pn.nodes[p_node_id][n_attr.originator] / self.pn.nodes[p_node_id][n_attr.name]
        return load_balance
