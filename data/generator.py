from .physical_network import PhysicalNetwork
from .vn_simulator import VNSimulator


class Generator:
    @staticmethod
    def generate_dataset(config, pn=True, vns=True, sub_vns=True, save=False):
        physical_network = Generator.generate_pn_dataset_from_config(config, save=save) if pn else None
        vn_simulator = Generator.generate_vns_dataset_from_config(config, save=save) if vns else None
        sub_vn_simulator = Generator.generate_sub_vns_dataset_from_config(config, save=save) if sub_vns else None
        return physical_network, vn_simulator

    @staticmethod
    def generate_pn_dataset_from_config(config, save=False):
        r"""generate pn dataset with the configuratore."""
        if not isinstance(config, dict):
            config = vars(config)
        pn_setting = config['pn_setting']
        pn = PhysicalNetwork.from_setting(pn_setting)

        if save:
            pn_dataset_dir = config['pn_dataset_dir']
            pn.save_dataset(pn_dataset_dir)
            if config.get('verbose', 1):
                print(f'---- save pn dataset in {pn_dataset_dir}')
        # new_pn = PhysicalNetwork.load_dataset(pn_dataset_dir)
        return pn

    @staticmethod
    def generate_vns_dataset_from_config(config, save=False):
        r"""generate vn dataset with the configuratore."""
        if not isinstance(config, dict):
            config = vars(config)
        vns_setting = config['vns_setting']
        vn_simulator = VNSimulator.from_setting(vns_setting, is_sub = False, kwargs=config)
        vn_simulator.renew()

        if save:
            vns_dataset_dir = config['vns_dataset_dir']
            vn_simulator.save_dataset(vns_dataset_dir)
            if config.get('verbose', 1):
                print(f'---- save vn dataset in {vns_dataset_dir}')

        # new_vn_simulator = VNSimulator.load_dataset(vns_dataset_dir)
        return vn_simulator

    @staticmethod
    def generate_sub_vns_dataset_from_config(config, save=False):
        r"""generate vn dataset with the configuratore."""
        if not isinstance(config, dict):
            config = vars(config)
        sub_vns_setting = config['vns_sub_setting']
        sub_vn_simulator = VNSimulator.from_setting(sub_vns_setting, is_sub = True, kwargs=config)
        sub_vn_simulator.renew()

        if save:
            sub_vns_dataset_dir = config['sub_vns_dataset_dir']
            sub_vn_simulator.save_dataset(sub_vns_dataset_dir)
            if config.get('verbose', 1):
                print(f'---- save sub vn dataset in {sub_vns_dataset_dir}')

        # new_vn_simulator = VNSimulator.load_dataset(vns_dataset_dir)
        return sub_vn_simulator
        