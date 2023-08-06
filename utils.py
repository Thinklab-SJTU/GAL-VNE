import os
import json
import yaml
import shutil

import numpy as np


def read_setting(fpath):
    with open(fpath, 'r', encoding='utf-8') as f:
        if fpath[-4:] == 'json':
            setting_dict = json.load(f)
        elif fpath[-4:] == 'yaml':
            setting_dict = yaml.load(f, Loader=yaml.Loader)
        else:
            return ValueError('Only supports settings files in yaml and json format!')
    return setting_dict

def write_setting(setting_dict, fpath):
    with open(fpath, 'w+', encoding='utf-8') as f:
        if fpath[-4:] == 'json':
            json.dump(setting_dict, f)
        elif fpath[-4:] == 'yaml':
            yaml.dump(setting_dict, f)
        else:
            return ValueError('Only supports settings files in yaml and json format!')
    return setting_dict

def conver_format(fpath_1, fpath_2):
    setting_dict = read_setting(fpath_1)
    write_setting(setting_dict, fpath_2)


def get_pn_dataset_dir_from_setting(pn_setting):
    pn_dataset_dir = pn_setting.get('save_dir')
    n_attrs = [n_attr['name'] for n_attr in pn_setting['node_attrs_setting']]
    e_attrs = [e_attr['name'] for e_attr in pn_setting['edge_attrs_setting']]
    pn_dataset_middir = f"{pn_setting['num_nodes']}-{pn_setting['topology']['type']}-{pn_setting['topology']['wm_alpha']}-{pn_setting['topology']['wm_beta']}-" +\
                        f"{n_attrs}-[{pn_setting['node_attrs_setting'][0]['low']}-{pn_setting['node_attrs_setting'][0]['high']}]-" + \
                        f"{e_attrs}-[{pn_setting['edge_attrs_setting'][0]['low']}-{pn_setting['edge_attrs_setting'][0]['high']}]"        
    pn_dataset_dir = os.path.join(pn_dataset_dir, pn_dataset_middir)
    return pn_dataset_dir

def get_vns_dataset_dir_from_setting(vns_setting):
    vns_dataset_dir = vns_setting.get('save_dir')
    n_attrs = [n_attr['name'] for n_attr in vns_setting['node_attrs_setting']]
    e_attrs = [e_attr['name'] for e_attr in vns_setting['edge_attrs_setting']]
    vns_dataset_middir = f"{vns_setting['num_vns']}-[{vns_setting['vn_size']['low']}-{vns_setting['vn_size']['high']}]-" + \
                        f"{vns_setting['topology']['type']}-{vns_setting['lifetime']['scale']}-{vns_setting['arrival_rate']['lam']}-" + \
                        f"{n_attrs}-[{vns_setting['node_attrs_setting'][0]['low']}-{vns_setting['node_attrs_setting'][0]['high']}]-" + \
                        f"{e_attrs}-[{vns_setting['edge_attrs_setting'][0]['low']}-{vns_setting['edge_attrs_setting'][0]['high']}]"
    vn_dataset_dir = os.path.join(vns_dataset_dir, vns_dataset_middir)
    return vn_dataset_dir

def get_sub_vns_dataset_dir_from_setting(sub_vns_setting, vns_dir=""):
    sub_vns_dataset_dir = sub_vns_setting.get('save_dir') if vns_dir=="" else vns_dir
    n_attrs = [n_attr['name'] for n_attr in sub_vns_setting['node_attrs_setting']]
    e_attrs = [e_attr['name'] for e_attr in sub_vns_setting['edge_attrs_setting']]
    
    vns_dataset_middir = f"{sub_vns_setting['num_vns']}-[{sub_vns_setting['vn_size']['low']}-{sub_vns_setting['vn_size']['high']}]-" + \
                        f"{sub_vns_setting['topology']['type']}-{sub_vns_setting['lifetime']['scale']}-{sub_vns_setting['arrival_rate']['lam']}-" + \
                        f"{n_attrs}-[{sub_vns_setting['node_attrs_setting'][0]['low']}-{sub_vns_setting['node_attrs_setting'][0]['high']}]-" + \
                        f"{e_attrs}-[{sub_vns_setting['edge_attrs_setting'][0]['low']}-{sub_vns_setting['edge_attrs_setting'][0]['high']}]"
    vn_dataset_dir = os.path.join(sub_vns_dataset_dir, vns_dataset_middir)

    return vn_dataset_dir

def generate_file_name(config, epoch_id=0, extra_items=[], **kwargs):
    if not isinstance(config, dict): config = vars(config)
    items = extra_items + ['pn_num_nodes', 'reusable']

    file_name_1 = f"{config['solver_name']}-records-{epoch_id}-"
    # file_name_2 = '-'.join([f'{k}={config[k]}' for k in items])
    file_name_3 = '-'.join([f'{k}={v}' for k, v in kwargs.items()])
    file_name = file_name_1 + file_name_3 + '.csv'
    return file_name

def delete_temp_files(file_path):
    del_list = os.listdir(file_path)
    for f in del_list:
        file_path = os.path.join(del_list, f)
        if os.path.isfile(file_path) and 'temp' in file_path:
            os.remove(file_path)

def clean_save_dir(dir):
    sub_dirs = ['model', 'records', 'log']
    algo_dir_list = [os.path.join(dir, algo_name) for algo_name in os.listdir(dir) if os.path.isdir(os.path.join(dir, algo_name))]
    for algo_dir in algo_dir_list:
        for run_id in os.listdir(algo_dir):
            run_id_dir = os.path.join(algo_dir, run_id)
            record_dir = os.path.join(run_id_dir, 'records')
            if not os.path.exists(record_dir) or not os.listdir(record_dir):
                shutil.rmtree(run_id_dir)
                print(f'Delate {run_id_dir}')
                
                
def test_running_time(func):
    import time
    @wraps(func)
    def test(*args, **kwargs):
        t1 = time.time()
        res = func(*args, **kwargs)
        t2 = time.time()
        print(f'Running time of {func.__name__}: {t2-t1:2.4f}s')
        return res
    return test                

def count_parameters(model):
    if model.config.verbose>=2:
        print("\n","-"*10, "Model Parameters", "-"*10)
        for name, parameters in model.named_parameters():
            print(f"--- {name} : {parameters.size()}")
    return sum(p.numel() for p in model.parameters() if p.requires_grad)

def vis_g(network, vis_nodes = True):
    print("nodes:", network.nodes)
    print("edges:", network.edges)
    e_feat_extrema  = np.array(network.get_edge_attrs_data(network.get_edge_attrs('extrema')))
    e_feat_resource = np.array(network.get_edge_attrs_data(network.get_edge_attrs('resource')))
    print("e_feat_extrema:", e_feat_extrema)
    print("e_feat_resource:", e_feat_resource)
    return True