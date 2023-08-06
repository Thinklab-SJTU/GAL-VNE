import pprint
import argparse
import sys, getopt

from config import get_config, show_config, save_config, load_config
from base.loader import load_solver
from data.generator import Generator
from base import BasicScenario, RLScenario

def create_scenario(config):
    # load env and solver
    Env, Solver = load_solver(config.solver_name)
    # Create env
    env = Env.from_config(config)
    # Create scenario & solver
    solver = Solver.from_config(config, EnvClass=Env)
    if config.solver_name in ['RL_VNE','gal_vne']:
        scenario = RLScenario(env, solver, config)
    else:
        scenario = BasicScenario(env, solver, config)

    if config.verbose >= 3: show_config(config)
    if config.if_save_config: save_config(config)
    return scenario

def run(config):
    print(f"\n{'-' * 20}    Start  {config.solver_name} Solver...   {'-' * 20}\n")
    
    # Load environment and algorithm
    scenario = create_scenario(config)
    scenario.run(num_epochs=config.num_epochs, start_epoch=config.start_epoch)

    print(f"\n{'-' * 20}   Complete   {'-' * 20}\n")

if __name__ == '__main__':

    ## ------ read config from file ------ ###
    config = get_config()
    ## ------         End        ------ ###

    # 2. Generate Dataset
    # Note:
    #   If the dataset does not exist, please generate it before running the solver
    #   If a dataset with the same settings already exists, the dataset will be overwritten 
    is_gen_pn = config.generate_pn
    is_gen_vn = config.generate_vn
    pn, vn_simulator = Generator.generate_dataset(config, pn=is_gen_pn, vns=is_gen_vn, sub_vns = False, save=True)

    # 3. Run with solver
    run(config)
