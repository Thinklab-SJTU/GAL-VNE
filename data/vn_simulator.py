import os
import copy
from easydict import EasyDict

import numpy as np

from .utils import read_setting, write_setting, generate_data_with_distribution
from .virtual_network import VirtualNetwork


class VNSimulator(object):
    """A simulator for generating virtual network and arrange them"""
    def __init__(self, cur_vns_setting, is_sub=False, **kwargs):
        super(VNSimulator, self).__init__()
        self.other_config = EasyDict(kwargs)
        self.is_sub = is_sub
        # simulator setting
        self.cur_vns_setting = copy.deepcopy(cur_vns_setting)
        self.num_vns = self.cur_vns_setting.get('num_vns', 2000)
        self.topology = self.cur_vns_setting.get('topology', {'type': 'random', 'random_prob': 0.5})
        self.max_vn_size = self.cur_vns_setting['vn_size']['high']
        self.min_vn_size = self.cur_vns_setting['vn_size']['low']
        self.aver_arrival_rate = self.cur_vns_setting['arrival_rate']['lam']
        self.aver_lifetime = self.cur_vns_setting['lifetime']['scale']
        self.vns = []
        self.events = []
        # dynamic setting configs
        if self.other_config.dynamic_setting:
            self.dyn_settings_name = []
            if self.is_sub:
                dyn_dir = os.path.join(self.other_config.setting_dir, "dyn_sub_vns")
            else:
                dyn_dir = os.path.join(self.other_config.setting_dir, "dyn_vns")
            for filename in os.listdir(dyn_dir):
                self.dyn_settings_name.append(os.path.join(dyn_dir,filename))
            self.dyn_settings_name = sorted(self.dyn_settings_name)
            self.dyn_settings = [read_setting(_name) for _name in self.dyn_settings_name]
            self.n_vnrs_per_set = self.num_vns//len(self.dyn_settings)
                

    @staticmethod
    def from_setting(setting, is_sub=False, kwargs={}):
        return VNSimulator(setting, is_sub, **kwargs)

    def renew(self, vns=True, events=True):
        if vns == True:
            if self.other_config.dynamic_setting:
                print("dynamically", end="")
                self.renew_dynamic_vns()
            else:
                self.renew_vns()
        if events == True:
            self.renew_events()
        return self.vns, self.events

    def renew_vns(self):
        self.vns = []
        self.arrange_vns()
        for i in range(self.num_vns):
            vn = VirtualNetwork(
                node_attrs_setting=copy.deepcopy(self.cur_vns_setting['node_attrs_setting']), 
                edge_attrs_setting=copy.deepcopy(self.cur_vns_setting['edge_attrs_setting']),
                id=int(i), arrival_time=float(self.vns_arrival_time[i]), lifetime=float(self.vns_lifetime[i]))
            vn.generate_topology(num_nodes=self.vns_size[i], **self.topology)
            vn.generate_attrs_data()
            self.vns.append(vn)
        return self.vns

    # dynamic setting. where distribution of vns are changed
    def renew_dynamic_vns(self):
        self.vns = []
        self.arrange_vns()
        for i in range(self.num_vns):
            cur_vns_setting = self.dyn_settings[i//self.n_vnrs_per_set]#self.cur_vns_setting
            vn = VirtualNetwork(
                node_attrs_setting=copy.deepcopy(cur_vns_setting['node_attrs_setting']), 
                edge_attrs_setting=copy.deepcopy(cur_vns_setting['edge_attrs_setting']),
                id=int(i), arrival_time=float(self.vns_arrival_time[i]), lifetime=float(self.vns_lifetime[i]))
            vn.generate_topology(num_nodes=self.vns_size[i], **self.topology)
            vn.generate_attrs_data()
            self.vns.append(vn)
        return self.vns

    def renew_events(self):
        self.events = []
        enter_list = [{'vn_id': int(vn.id), 'time': float(vn.arrival_time), 'type': 1} for vn in self.vns]
        leave_list = [{'vn_id': int(vn.id), 'time': float(vn.arrival_time + vn.lifetime), 'type': 0} for vn in self.vns]
        self.enter_events = sorted(enter_list, key=lambda e: e.__getitem__('time'))
        self.leave_events = sorted(leave_list, key=lambda e: e.__getitem__('time'))
        event_list = enter_list + leave_list
        self.events = sorted(event_list, key=lambda e: e.__getitem__('time'))
        for i, e in enumerate(self.events): 
            e['id'] = i
        # mapping from
        self.leave_map = {e['vn_id']: e['id'] for e in self.events if e['type']==0}
        return self.events

    def arrange_vns(self):
        # length: uniform distribution
        self.vns_size = generate_data_with_distribution(size=self.num_vns, **self.cur_vns_setting['vn_size'])
        # lifetime: exponential distribution
        self.vns_lifetime = generate_data_with_distribution(size=self.num_vns, **self.cur_vns_setting['lifetime'])
        # arrival_time: poisson distribution
        arrival_time_interval = generate_data_with_distribution(size=self.num_vns, **self.cur_vns_setting['arrival_rate'])
        self.vns_arrival_time = np.cumsum(arrival_time_interval)
    
    def save_dataset(self, save_dir):
        if not os.path.exists(save_dir):
            os.makedirs(save_dir)
        vns_dir = os.path.join(save_dir, 'vns')
        if not os.path.exists(vns_dir):
            os.makedirs(vns_dir)
        # save vns
        for vn in self.vns:
            vn.to_gml(os.path.join(vns_dir, f'vn-{vn.id:05d}.gml'))
        # save events
        write_setting(self.events, os.path.join(save_dir, self.cur_vns_setting['events_file_name']), mode='w+')
        self.save_setting(os.path.join(save_dir, self.cur_vns_setting['setting_file_name']))

    @staticmethod
    def load_dataset(dataset_dir, is_sub = False, config={}):
        # load setting
        if not os.path.exists(dataset_dir):
            raise ValueError(f'Find no dataset in {dataset_dir}.\nPlease firstly generating it.')
        try:
            setting_fpath = os.path.join(dataset_dir, 'vns_setting.yaml')
            cur_vns_setting = read_setting(setting_fpath)
        except:
            setting_fpath = os.path.join(dataset_dir, 'vns_setting.json')
            cur_vns_setting = read_setting(setting_fpath)
        vn_simulator = VNSimulator.from_setting(cur_vns_setting, is_sub=is_sub, kwargs=config)
        # load vns
        print(f"---- loading virtual network path: {os.path.join(dataset_dir, 'vns')}")
        vn_fnames_list = os.listdir(os.path.join(dataset_dir, 'vns'))
        vn_fnames_list.sort()
        for vn_fname in vn_fnames_list:
            vn = VirtualNetwork.from_gml(os.path.join(dataset_dir, 'vns', vn_fname))
            vn_simulator.vns.append(vn)
        # load events
        events = read_setting(os.path.join(dataset_dir, cur_vns_setting['events_file_name']))
        vn_simulator.events = events
        enter_list = [e for e in events if e['type'] == 1]
        vn_simulator.enter_events = sorted(enter_list, key=lambda e: e.__getitem__('time'))
        leave_list = [e for e in events if e['type'] == 0]
        vn_simulator.leave_events = sorted(leave_list, key=lambda e: e.__getitem__('time'))
        return vn_simulator

    def save_setting(self, fpath):
        # setting = {}
        # for k, v in self.__dict__.items():
        #     if k not in ['events', 'vns', 'vns_size', 'vns_lifetime', 'vns_arrival_time']:
        #         setting[k] = v
        write_setting(self.cur_vns_setting, fpath, mode='w+')


if __name__ == '__main__':
    pass
