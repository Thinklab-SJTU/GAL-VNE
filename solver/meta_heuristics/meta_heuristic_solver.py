import copy
import random
import numpy as np
import multiprocessing as mp
from collections import defaultdict
from concurrent.futures import ThreadPoolExecutor

from ..solver import Solver
from ..rank.node_rank import rank_nodes
from base import Solution
from base import Controller, Counter

# INFEASIBLE_FITNESS = float('inf')
INFEASIBLE_FITNESS = float('inf')
# INFEASIBLE_FITNESS = 100


class MetaHeuristicSolver(Solver):

    def __init__(self, **kwargs):
        super(MetaHeuristicSolver, self).__init__(**kwargs)
        """
        """
        self.infeasible_fitness = INFEASIBLE_FITNESS
        self.fitness_recorder = FitnessRecorder()

    def get_parallel_executor(self, num_individuals, m_type='thread'):
        num_processes = min(num_individuals, mp.cpu_count())
        if m_type == 'thread':
            parallel_executor = ThreadPoolExecutor(num_processes)
        elif m_type == 'process':
            parallel_executor = mp.Pool(num_processes)
        else:
            return ValueError(f'Param m_type should be selected from [thread, process]: {m_type}')
        return parallel_executor

    def get_mt_pool(self, num_individuals):
        num_processes = min(num_individuals, mp.cpu_count())
        mt_pool = ThreadPoolExecutor(num_processes)
        return mt_pool

    def get_mp_pool(self, num_individuals):
        num_processes = min(num_individuals, mp.cpu_count())
        mp_pool = mp.Pool(num_processes)
        return mp_pool

    def solve(self, instance):
        v_net, p_net = instance['vn'], instance['pn']
        self.v_net = v_net
        self.p_net = p_net
        rank_nodes(v_net, self.node_ranking_method)
        # rank_nodes(p_net, self.node_ranking_method)
        self.ready(v_net, p_net)
        # construct candidates
        self.candidates_dict = Controller.construct_candidates_dict(v_net, p_net)
        self.fitness_recording = list()
        if {} in self.candidates_dict.values():
            return Solution(v_net)
        self.best_individual = None
        solution = self.meta_run(v_net, p_net)
        if solution['violation'] > 0:
            return Solution(v_net)
        # depoly with solution
        if solution['result']:
            Controller.deploy(v_net, p_net, solution)
        return solution

    def ready(self, v_net, p_net):
        rank_nodes(p_net, method=self.node_ranking_method)
        return

    def meta_run(self, v_net, p_net):
        raise NotImplementedError

    def evolve(self, v_net, p_net):
        raise NotImplementedError

    def update_best_individual(self, population):
        if self.best_individual is None:
            self.best_individual = population[0]
        for individual in population:
            if individual.best_fitness < self.best_individual.best_fitness:
                self.best_individual = individual
        return self.best_individual

    def reinitialize(self, individual):
        node_slots = self.generate_initial_node_slots(individual.v_net, individual.p_net, select_method='random')
        individual.update_position(node_slots)
        Controller.deploy_with_node_slots(individual.v_net, individual.p_net, node_slots, individual.solution, inplace=False)
        individual.best_solution = copy.deepcopy(individual.solution)
        return individual

    def construct_candidates_dict(self, v_net, p_net):
        self.candidates_dict = Controller.construct_candidates_dict(v_net, p_net)
        # for v_node_id in range(v_net.num_nodes):
        #     hop_range_neighbors = nx.single_source_shortest_path_length(p_net, p_node_id, cutoff=self.hop_range)
        #     for candidate in candidates_dict[v_node_id]:
        #         if candidate not in hop_range_neighbors:
        #             candidates_dict[v_node_id].remove(candidate)
        return self.candidates_dict

    def generate_initial_node_slots(self, v_net, p_net, select_method='random'):
        node_slots = {}
        for v_node_id in v_net.ranked_nodes:
            p_candicate_id = self.select_p_candicate(v_node_id, list(node_slots.values()), p_node_weights=p_net.node_ranking_values, method=select_method)
            node_slots[v_node_id] = p_candicate_id
        return node_slots

    def get_p_condicates(self, v_node_id, selected_p_nodes=[]):
        if self.reusable:
            candicate_nodes = self.candidates_dict[v_node_id]
        else:
            candicate_nodes = list(set(self.candidates_dict[v_node_id]).difference(set(selected_p_nodes)))
        return candicate_nodes

    def select_p_candicate(self, v_node_id, selected_p_nodes=[], p_node_weights=None, method='random'):
        # get p candicates
        p_candicates = np.array(self.get_p_condicates(v_node_id, selected_p_nodes))
        if len(p_candicates) == 0:
            return -1
        # set p node weights
        if p_node_weights is None:
            p_node_weights = np.array([1 / len(p_candicates)] * len(p_candicates))
        else:
            p_node_weights = p_node_weights[p_candicates]
        if sum(p_node_weights) <= 0:
            p_node_weights = np.array([1 / len(p_node_weights)] * len(p_node_weights))
        # set select method
        if method == 'random':
            p_candicate = random.choices(p_candicates, weights=p_node_weights, k=1)[0]
        if method == 'greedy':
            p_max_weight_index = np.argmax(p_node_weights)
            p_candicate = p_candicates[p_max_weight_index]
        return p_candicate

    def get_fitness_list(self, population):
        return [ind.fitness for ind in population]

    def normalize_fitnesses(self, fitness_list):
        fitness_list = []
        temp_list = [value for value in value_list if value !=float("inf")]
        if len(temp_list) != 0:
            max_value = np.max(temp_list)
            min_value = np.min(temp_list)
            if max_value == min_value:
                for i in range(len(value_list)):
                    if value_list[i] != float('inf'):
                        value_list[i] = 0
            else:
                value_list = [(value - min_value) / (max_value - min_value) for value in value_list]
        return value_list


class LocalSearch(MetaHeuristicSolver):

    def __init__(self, **kwargs):
        super(LocalSearch, self).__init__(**kwargs)

    def generate_neigbor(self):
        return 


class Individual:
    """
    Minimize the objective (deployment cost)
    """
    def __init__(self, id, v_net, p_net, ranked_v_nodes=None):
        self.id = id
        self.v_net = v_net
        self.p_net = copy.deepcopy(p_net)
        if ranked_v_nodes is None:
            self.ranked_v_nodes = list(v_net.nodes)
        else:
            self.ranked_v_nodes = ranked_v_nodes
        self.solution = Solution(v_net)
        for v_node_id in self.ranked_v_nodes:
            self.solution.node_slots[v_node_id] = -1
        self.best_solution = copy.deepcopy(self.solution)

    # def calc_fitness(self, solution):
    #     # maximize
    #     if solution['result']:
    #         return -solution['vn_cost']
    #     return 0

    def calc_fitness(self, solution):
        # minimize
        if solution['result']:
            return solution['vn_cost'] / solution['vn_revenue']
        return INFEASIBLE_FITNESS

    def update_solution(self, node_slots={}, link_paths={}):
        self.solution.node_slots.update(node_slots)

    def update_best_solution(self, ):
        if self.fitness < self.best_fitness:
            self.best_solution = copy.deepcopy(self.solution)

    def is_feasible(self):
        return self.solution['violation'] <= 0

    @property
    def feasiblity(self):
        return self.solution['violation'] <= 0

    @property
    def selected_p_nodes(self):
        return list(self.solution.node_slots.values())

    @property
    def placed_v_nodes(self):
        return list(self.solution.node_slots.keys())

    @property
    def fitness(self):
        return self.calc_fitness(self.solution)

    @property
    def best_fitness(self, ):
        return self.calc_fitness(self.best_solution)


class FitnessRecorder:

    def __init__(self):
        self.recordings = defaultdict(dict)
        self.global_best = defaultdict(dict)
    
    def record(self, iter_id, id_fitness_dict):
        self.recordings['iter_id'].update(id_fitness_dict)



class ParallelExecutor:

    def __init__(self, num_individuals, m_type='thread'):
        num_processes = min(num_individuals, mp.cpu_count())
        if m_type == 'thread':
            self.parallel_executor = ThreadPoolExecutor(num_processes)
        elif m_type == 'process':
            self.parallel_executor = mp.Pool(num_processes)
        else:
            return ValueError(f'Param m_type should be selected from [thread, process]: {m_type}')
        return self.parallel_executor

    def map(self, fn, *iterables, **kwargs):
        return self.parallel_executor.map(fn, *iterables, **kwargs)