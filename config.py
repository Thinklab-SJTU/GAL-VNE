import os
import json
import time
import pprint
import socket
import argparse

from utils import read_setting, get_pn_dataset_dir_from_setting, get_vns_dataset_dir_from_setting, write_setting, get_sub_vns_dataset_dir_from_setting


parser = argparse.ArgumentParser(description='configuration file')

def str2bool(v):
    if isinstance(v, bool):
        return v
    if v.lower() in ('yes', 'true', 't', 'y', '1'):
        return True
    elif v.lower() in ('no', 'false', 'f', 'n', '0'):
        return False
    else:
        raise argparse.ArgumentTypeError('Boolean value expected.')

### Dataset ###
data_arg = parser.add_argument_group('data')
data_arg.add_argument('--pn_setting_path', type=str, default='settings/pn_setting/pn_setting.yaml', help='File path of physical network settings')
data_arg.add_argument('--vns_setting_path', type=str, default='settings/vns_setting/vns_setting.yaml', help='File path of virtual network settings')
data_arg.add_argument('--vns_sub_setting_path', type=str, default='settings/vns_setting/vns_sub_setting.yaml', help='File path of sub virtual network settings')
data_arg.add_argument('--nn_setting_path', type=str, default='settings/neural_network.yaml', help='File path of neural network settings')
data_arg.add_argument('--rl_setting_path', type=str, default='settings/reinforcement_learning.yaml', help='File path of advanced reinforcement learning settings')
data_arg.add_argument('--run_setting_path', type=str, default='settings/running_and_training.yaml', help='File path of advanced running and training settings')
data_arg.add_argument('--config_path', type=str, default="", help='read config from file')
data_arg.add_argument('--setting_dir', type=str, default='settings/', help='File dir of settings')

# dynamic setting

data_arg.add_argument('--if_adjust_vns_setting', type=str2bool, default=False, help='Whether to deirectly adjust VN settings in parser')
data_arg.add_argument('--vns_setting_max_length', type=int, default=10, help='')
data_arg.add_argument('--vns_setting_aver_arrival_rate', type=float, default=0.10, help='')
data_arg.add_argument('--vns_setting_aver_lifetime', type=int, default=1000, help='')
data_arg.add_argument('--vns_setting_high_request', type=int, default=30, help='')
data_arg.add_argument('--vns_setting_low_request', type=int, default=0, help='')
data_arg.add_argument('--vns_setting_num_vns', type=int, default=2000, help='')

data_arg.add_argument('--generate_pn', action="store_true",help='generate vn/pn data from setting')
data_arg.add_argument('--generate_vn', action="store_true",help='generate vn/pn data from setting')
data_arg.add_argument('--fix_sub_env', action="store_true", help='fix sub env when training')
data_arg.add_argument('--save_samples', action="store_true", help='save graph and rank scores')
data_arg.add_argument('--read_samples', action="store_true", help="train: read samples from files")
data_arg.add_argument('--samples_path', type=str, default="", help='train: path to read data from file')



### Environment ###
env_arg = parser.add_argument_group('env')
env_arg.add_argument('--summary_dir', type=str, default='save/summary/', help='File Directory to save summary and records')
env_arg.add_argument('--summary_file_name', type=str, default='summary.csv', help='Summary file name')
env_arg.add_argument('--if_save_records', type=str2bool, default=True, help='Whether to save records')
env_arg.add_argument('--if_temp_save_records', type=str2bool, default=True, help='Whether to temporarily save records')
env_arg.add_argument('--node_resource_unit_price', type=float, default=1., help='') 
env_arg.add_argument('--link_resource_unit_price', type=float, default=1., help='') 

### solver  ###
solver_arg = parser.add_argument_group('solver')
solver_arg.add_argument('--verbose', type=int, default=1, help='Level of showing information')
solver_arg.add_argument('--solver_name', type=str, default='gnn_rank', help='Name of the solver selected to run')
solver_arg.add_argument('--reusable', type=str2bool, default=False, help='Whether or not to allow to deploy several VN nodes on the same VNF')
solver_arg.add_argument('--learnable', type=int, help='0: virtual ranks are learnable; 1: physical nodes; 2: both') 

solver_arg.add_argument('--matching_method', type=str, default="greedy", help='Node placing approches for node mapping: [greedy, l2s2 (Large2LargeSmall2Small)]') 
solver_arg.add_argument('--shortest_method', type=str, default="bfs_shortest", help='Path finding approches for link mapping: [mcf (Multi-commodity Flow), first_shortest, k_shortest, all_shortest, bfs_shortest, available_shortest]') 
solver_arg.add_argument('--node_ranking_method', type=str, default="order", help='Pre-rank nodes: [order, ffd, grc, nrm, rw]') 
solver_arg.add_argument('--link_ranking_method', type=str, default="order", help='Pre-rank links: [order, ffd]') 
solver_arg.add_argument('--k_shortest', type=int, default=10, help="k param for k_shortest") 
solver_arg.add_argument('--allow_revocable', type=str2bool, default=False, help='')
solver_arg.add_argument('--allow_rejection', type=str2bool, default=False, help='')

solver_arg.add_argument('--two_stage', action="store_true", default=False, help='use two-stage solver')
### Neural Network ###
net_arg = parser.add_argument_group('net')
# device
net_arg.add_argument('--use_cuda', type=str2bool, default=True, help='Whether to sse GPU to accelerate the training process')
net_arg.add_argument('--cuda_id', type=int, default=0, help='CUDA device id')
net_arg.add_argument('--allow_parallel', type=str2bool, default=False, help='Whether to use mutiple GPUs')
# nn
net_arg.add_argument('--embedding_dim', type=int, default=16, help='Embedding dimension')
net_arg.add_argument('--hidden_dim', type=int, default=16, help='Hidden dimension')
net_arg.add_argument('--num_layers', type=int, default=2, help='Number of GRU stacks/layers')
net_arg.add_argument('--num_gnn_layers', type=int, default=2, help='Number of GRU stacks/layers')
net_arg.add_argument('--dropout_prob', type=float, default=0.0, help='Droput rate')
net_arg.add_argument('--batch_norm', type=float, default=False, help='Droput rate')
net_arg.add_argument('--l2reg_rate', type=float, default=0.0, help='L2 regularization rate')
net_arg.add_argument('--num_heads', type=int, default=1, help='heads')
net_arg.add_argument('--visit_depth', type=int, default=10, help='max visit')
# model parameters
net_arg.add_argument('--alpha', type=float, default=1.0, help='teleport prob for pagerank. default: 1.0')

### Reinforcement Learning ###
rl_arg = parser.add_argument_group('net')
rl_arg.add_argument('--weight_decay', type=float, default=0.0, help='weight decay')
rl_arg.add_argument('--coef_critic_loss', type=float, default=0.01, help='')
rl_arg.add_argument('--coef_entropy_loss', type=float, default=0.01, help='')
rl_arg.add_argument('--coef_mask_loss', type=float, default=0.000, help='')

rl_arg.add_argument('--rl_gamma', type=float, default=0.95, help='Cumulative reward discount rate')
rl_arg.add_argument('--gae_lambda', type=float, default=0.98, help='')
rl_arg.add_argument('--explore_rate', type=float, default=0.90, help='Epsilon-greedy explore rate')
rl_arg.add_argument('--lr', type=float, default=1e-3, help='General Learning rate')
rl_arg.add_argument('--lr_actor', type=float, default=1e-3, help='Actor learning rate')
rl_arg.add_argument('--lr_critic', type=float, default=1e-3, help='Critic learning rate')
rl_arg.add_argument('--k_searching', type=int, default=3, help='Beam search width or Sample workers number') 
rl_arg.add_argument('--decode_strategy', type=str, default='greedy', help='Solution Decoding Strategy: [greedy | sample | beam |r, recovable]') 
rl_arg.add_argument('--update_algo', type=str, default='ppo', help='RL update algorithm: [ pg | ppo | ]') 
rl_arg.add_argument('--offline_steps', type=int, default=5, help='steps of future VNRs') 

rl_arg.add_argument('--use_baseline_solver', action="store_true", default=False, help='')
rl_arg.add_argument('--baselin_solver_name', type=str, default='RW', help='') 
rl_arg.add_argument('--reward_type', type=str, default='1step', help='[1step | mstep ]') 


# tricks
rl_arg.add_argument('--max_grad_norm', type=float, default=0.5, help='')
rl_arg.add_argument('--maskable_policy', type=str2bool, default=True, help='')
rl_arg.add_argument('--norm_advantage', type=str2bool, default=True, help='')
rl_arg.add_argument('--clip_grad', type=str2bool, default=True, help='')
rl_arg.add_argument('--norm_value_loss', type=str2bool, default=True, help='')

### Trainning ###
train_arg = parser.add_argument_group('train')
train_arg.add_argument('--num_pretrain_epochs', type=int, default=0, help='Number of pretrain epochs')
train_arg.add_argument('--num_train_epochs', type=int, default=0, help='Number of epochs')
train_arg.add_argument('--num_workers', type=int, default=10, help='Number of sub workers who collect experience asynchronously')
train_arg.add_argument('--pretrain_batch_size', type=int, default=50, help='Batch size of training')
train_arg.add_argument('--batch_size', type=int, default=100, help='Batch size of training')
train_arg.add_argument('--target_steps', type=int, default=100, help='Target steps for collecting experience')
train_arg.add_argument('--repeat_times', type=int, default=10, help='')
train_arg.add_argument('--eps_clip', type=float, default=0.2, help='')
train_arg.add_argument('--use_negative_sample', action="store_true", default=False, help='Whether to allow use failed sample to train')

### Run ###
run_arg = parser.add_argument_group('run')
run_arg.add_argument('--if_save_config', type=str2bool, default=True, help='Whether to save config')
run_arg.add_argument('--only_test', type=str2bool, default=False, help='Only test without training')
run_arg.add_argument('--renew_vn_simulator', type=str2bool, default=False, help='')
run_arg.add_argument('--start_epoch', type=int, default=0, help='Start from epochi')
run_arg.add_argument('--num_epochs', type=int, default=1, help='Number of epochs')
run_arg.add_argument('--random_seed', type=int, default=1111, help='Random seed')
run_arg.add_argument('--save_dir', type=str, default='save', help='Save directory for models and trainning logs')
run_arg.add_argument('--pretrained_model_path', type=str, default='', help='')
run_arg.add_argument('--run_model_path', type=str, default='', help='')
run_arg.add_argument('--open_tb', type=str2bool, default=True, help='')
run_arg.add_argument('--log_interval', type=int, default=1, help='')
run_arg.add_argument('--save_interval', type=int, default=10, help='')
run_arg.add_argument('--eval_interval', type=int, default=5, help='')
run_arg.add_argument('--total_steps', type=int, default=5000000, help='')
run_arg.add_argument('--reward_weight', type=float, default=0.1, help='')
run_arg.add_argument('--prefix', type=str, default="default", help='prefix for saving')
run_arg.add_argument('--rl_mode', action="store_true", default=False, help='validate in RL mode')
run_arg.add_argument('--visualize', action="store_true", default=False, help='visualize ranking and scores')
run_arg.add_argument('--dynamic_setting', action="store_true", default=False, help='dynamic setting')

# run_arg.add_argument('--save_model', type=str2bool, default=False, help='Save model')
# run_arg.add_argument('--load_model', type=str2bool, default=False, help='Load model')
#run_arg.add_argument('--lr_decay_step', type=int, default=5000, help='Lr1 decay step')
#run_arg.add_argument('--lr_decay_rate', type=float, default=0.96, help='Lr1 decay rate')

### Misc ###
misc_arg = parser.add_argument_group('misc')


def get_config(args=None, adjust_pn_setting={}, adjust_vns_setting={}):
    config = parser.parse_args(args)

    if config.target_steps == -1:
        config.target_steps = config.batch_size

    if config.reusable:
        print('*' * 40)
        print(' ' * 5 + '!!! Physical Node Hosts is Reusable !!!')
        print('*' * 40)

    # make dir
    for dir in [config.save_dir, config.summary_dir, 'dataset', 'dataset/pn', 'dataset/vns', 'dataset/dyn/pn','dataset/dyn/vns']:
        if not os.path.exists(dir):
            os.makedirs(dir)
            
    # read pn and vns setting
    config.pn_setting = read_setting(config.pn_setting_path)
    config.vns_setting = read_setting(config.vns_setting_path)
    config.vns_sub_setting = read_setting(config.vns_sub_setting_path)

    config.pn_setting.update(adjust_pn_setting)
    config.vns_setting.update(adjust_vns_setting)

    if config.if_adjust_vns_setting:
        config.vns_setting['max_length'] = config.vns_setting_max_length
        config.vns_setting['aver_arrival_rate'] = config.vns_setting_aver_arrival_rate
        config.vns_setting['aver_lifetime'] = config.vns_setting_aver_lifetime
        for n_attr in config.vns_setting['node_attrs_setting']: n_attr['high'] = config.vns_setting_high_request
        for e_attr in config.vns_setting['edge_attrs_setting']: e_attr['high'] = config.vns_setting_high_request
        for n_attr in config.vns_setting['node_attrs_setting']: n_attr['low'] = config.vns_setting_low_request
        for e_attr in config.vns_setting['edge_attrs_setting']: e_attr['low'] = config.vns_setting_low_request


    # if adjust_pn_setting != {}:
    #     assert NotImplementedError
    for key, value in adjust_vns_setting.items():
        if isinstance(key, dict):
            config.vns_setting[key].update(value)
        else:
            config.vns_setting[key] = value

        # if item == 'max_length':
        #     config.vns_setting['vn_size']['high'] = value
        # elif item == 'min_length':
        #     config.vns_setting['vn_size']['low'] = value
        # elif item == 'high_request':
        #     for n_attr in config.vns_setting['node_attrs_setting']: n_attr['high'] = value
        #     for e_attr in config.vns_setting['edge_attrs_setting']: e_attr['high'] = value
        # elif item == 'low_request':
        #     for n_attr in config.vns_setting['node_attrs_setting']: n_attr['low'] = value
        #     for e_attr in config.vns_setting['edge_attrs_setting']: e_attr['low'] = value
        # else:
        #     config.vns_setting[item] = value

    # host and time 
    config.run_time = time.strftime('%Y%m%dT%H%M%S')
    config.host_name = socket.gethostname()
    config.run_id = f'{config.host_name}-{config.prefix}-{config.run_time}'
    
    # get dataset dir
    config.pn_dataset_dir = get_pn_dataset_dir_from_setting(config.pn_setting)
    config.vns_dataset_dir = get_vns_dataset_dir_from_setting(config.vns_setting)
    print("vns dataset dir: ", config.vns_dataset_dir)
    config.num_pn_node_attrs = len(config.pn_setting['node_attrs_setting'])
    config.num_pn_edge_attrs = len(config.pn_setting['edge_attrs_setting'])
    config.num_vn_node_attrs = len(config.vns_setting['node_attrs_setting'])
    config.num_vn_edge_attrs = len(config.vns_setting['edge_attrs_setting'])
    
    record_dir = os.path.join("save/", config.solver_name, config.run_id)
    if config.fix_sub_env:
        record_dir = "dataset/vns_sub/"
    config.sub_vns_dataset_dir = get_sub_vns_dataset_dir_from_setting(config.vns_sub_setting,record_dir)# sub dataset dir
    
    check_config(config)
    return config

def check_config(config):
    # check config
    assert config.reusable == False, 'Unsupported currently!'
    if config.target_steps != -1: assert config.target_steps % config.batch_size == 0, 'target_steps should be multiplier of batch size!'

def show_config(config):
    pprint.pprint(vars(config))

def save_config(config, fname='config.yaml'):
    save_dir = os.path.join(config.save_dir, config.solver_name, config.run_id)
    if not os.path.exists(save_dir): os.makedirs(save_dir)
    config_path = os.path.join(save_dir, fname)
    write_setting(vars(config), config_path)
    # print(f'Save config in {config_path}')

def load_config(fpath=None):
    try:
        print(f'Load config from {fpath}')
        config = read_setting(fpath)
    except:
        config = get_config()
        print(f'Load default config')
    return config

def delete_empty_dir(config):
    for dir in [config.record_dir, config.log_dir, config.save_dir]:
        if os.path.exists(dir) and not os.listdir(dir):
            os.rmdir(dir)


if __name__ == "__main__":
    pass