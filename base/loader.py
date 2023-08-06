from base import SolutionStepEnvironment
from solver.heuristics.node_rank import *
from solver.heuristics.joint_pr import *
from solver.heuristics.bfs_trials import *
from solver.heuristics.fit import *


def load_solver(solver_name):
    # rank
    if solver_name == 'RW_MM':
        Env, Solver = SolutionStepEnvironment, RandomWalkRankSolver
    elif solver_name == 'GRC_VNE':
        Env, Solver = SolutionStepEnvironment, GRCRankSolver
    elif solver_name == 'SimRank_MM':
        Env, Solver = SolutionStepEnvironment, FFDRankSolver
    elif solver_name == 'NRM_VNE':
        Env, Solver = SolutionStepEnvironment, NRMRankSolver
    elif solver_name == 'SimRank_BFS':
        Env, Solver = SolutionStepEnvironment, FFDJointPRSolver
    elif solver_name == 'RW_BFS':
        Env, Solver = SolutionStepEnvironment, RandomWalkRankBFSSolver
    # mip/lp-based
    elif solver_name == 'r_vne':
        from solver.exact.r_vne import RandomizedRoundingSolver
        Env, Solver = SolutionStepEnvironment, RandomizedRoundingSolver
    elif solver_name == 'd_vne':
        from solver.exact.d_vne import DeterministicRoundingSolver
        Env, Solver = SolutionStepEnvironment, DeterministicRoundingSolver
    # meta-heuristic
    elif solver_name == 'pso_vne':
        from solver.meta_heuristics.particle_swarm_optimization_solver import ParticleSwarmOptimizationSolver
        Env, Solver = SolutionStepEnvironment, ParticleSwarmOptimizationSolver
    elif solver_name == 'sa_vne':
        from solver.meta_heuristics.simulated_annealing_solver import SimulatedAnnealingSolver
        Env, Solver = SolutionStepEnvironment, SimulatedAnnealingSolver
    # ml
    elif solver_name == 'MaVEn':
        from solver.learning.mcts_vne import MCTSSolver
        Env, Solver = SolutionStepEnvironment, MCTSSolver
    elif solver_name == 'Neuro_ViNE':
        from solver.learning.neuro_vne.neuro_vne import NeuroSolver
        Env, Solver = SolutionStepEnvironment, NeuroSolver
    # rl
    elif solver_name == 'gal_vne':
        from solver.learning.gal_vne.gal_vne import GALVNESolver
        Env, Solver = SolutionStepEnvironment, GALVNESolver
    elif solver_name == 'RL_VNE':
        from solver.learning.pg_bfs import PgBFSSolver
        Env, Solver = SolutionStepEnvironment, PgBFSSolver
    elif solver_name == 'pg_cnn':
        from solver.learning.pg_cnn import PgCnnSolver
        Env, Solver = SolutionStepEnvironment, PgCnnSolver
    elif solver_name == 'CDRL':
        from solver.learning.pg_seq2seq import PGSeq2SeqSolver
        Env, Solver = SolutionStepEnvironment, PGSeq2SeqSolver
    else:
        raise ValueError('The solver is not yet supported; \n Please attempt to select another one.', solver_name)
    return Env, Solver

