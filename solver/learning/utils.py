from time import sleep
import torch
import numpy as np
from torch_geometric.data import Data, Batch
from sklearn.preprocessing import StandardScaler, Normalizer


NEG_TENSER = torch.tensor(-1e8).float()
ZERO_TENSER = torch.tensor(1e-8).float()

def get_pyg_data(x, edge_index, edge_attr=None):
    x = torch.tensor(x)
    edge_index = torch.tensor(edge_index).long()
    edge_attr = torch.tensor(edge_attr) if edge_attr is not None else None
    data = Data(x=x, edge_index=edge_index, edge_attr=edge_attr)
    return data

def get_pyg_data(x, edge_index, edge_attr=None):
    x = torch.tensor(x)
    edge_index = torch.tensor(edge_index).long()
    edge_attr = torch.tensor(edge_attr) if edge_attr is not None else None
    data = Data(x=x, edge_index=edge_index, edge_attr=edge_attr)
    return data

def get_pyg_batch(x_batch, edge_index_batch, edge_attr_batch=None):
    if edge_attr_batch is None: edge_attr_batch = [None] * len(x_batch)
    data_list = []
    for x, edge_index, edge_attr in zip(x_batch, edge_index_batch, edge_attr_batch):
        data = get_pyg_data(x, edge_index, edge_attr)
        data_list.append(data)
    batch = Batch.from_data_list(data_list)
    return batch

def get_available_device():
    r"""Return the available device."""
    # set device to cpu or cuda
    device = torch.device('cpu')

    if(torch.cuda.is_available()): 
        device = torch.device('cuda:0') 
        torch.cuda.empty_cache()
        print("Device set to: " + str(torch.cuda.get_device_name(device)))
    else:
        print("Device set to: cpu")
    return device

def normailize_data(data, method='standardize'):
    r"""Normailize the data."""
    if method == 'standardize':
        norm_data = StandardScaler().fit_transform(data).astype('float32')
    else:
        norm_data = Normalizer().fit_transform(data).astype('float32')
    return norm_data

def load_pyg_data_from_network(network, attr_types=['resource'], normailize_method='standardize',
                        normailize_nodes_data=False, normailize_edges_data=False, ):
    """Load data from network"""

    # edge index
    edge_index = np.array(list(network.edges),dtype=np.int64).T
    edge_index = torch.LongTensor(edge_index)
    # node data
    n_attrs = network.get_node_attrs(attr_types)
    node_data = np.array(network.get_node_attrs_data(n_attrs), dtype=np.float32).T
    if normailize_nodes_data:
        node_data = normailize_data(node_data, method=normailize_method)
    node_data = torch.tensor(node_data)
    # edge data
    e_attrs = network.get_edge_attrs(attr_types)
    link_data = np.array(network.get_edge_attrs_data(e_attrs), dtype=np.float32).T
    if normailize_edges_data:
        link_data = normailize_data(link_data, method=normailize_method)
    link_data = torch.tensor(link_data)
    # pyg data
    data = Data(x=node_data, edge_index=edge_index, edge_attr=link_data)
    return data

def load_pyg_batch_from_network_list(network_list):
    data_list = []
    for network in network_list:
        data = load_pyg_data_from_network(network)
        data_list.append(data)
    batch = Batch.from_data_list(data_list)
    return batch

def apply_mask_to_logit(logit, mask=None):
    if mask is None:
        return logit
    # mask = torch.IntTensor(mask).to(logit.device).expand_as(logit)
    # masked_logit = logit + mask.log()
    if not isinstance(mask, torch.Tensor):
        mask = torch.BoolTensor(mask)
    # flag = ~torch.any(mask, dim=1, keepdim=True).repeat(1, mask.shape[-1])
    # mask = torch.where(flag, True, mask)
    # 
    mask = mask.bool().to(logit.device).reshape(logit.size())
    mask_value_tensor = NEG_TENSER.type_as(logit).to(logit.device)
    masked_logit = torch.where(mask, logit, mask_value_tensor)
    return masked_logit


def apply_zero_mask_to_logit(logit, mask=None):
    if mask is None:
        return logit
    if not isinstance(mask, torch.Tensor):
        mask = torch.BoolTensor(mask)
    mask = mask.bool().to(logit.device).reshape(logit.size())
    mask_value_tensor = ZERO_TENSER.type_as(logit).to(logit.device)
    masked_logit = torch.where(mask, logit, mask_value_tensor)
    return masked_logit

def get_observations_sample(obs_batch, indices):
    # print("indices: ", indices)
    if isinstance(obs_batch, Batch):
        return obs_batch.index_select(indices)
    elif isinstance(obs_batch, dict):
        sample = {}
        for key, value in obs_batch.items():
            if isinstance(value, Batch):
                value_sample = Batch.from_data_list(value.index_select(indices))
            else:
                value_sample = value[indices]
            sample[key] = value_sample
        return sample
    elif isinstance(obs_batch, list):
        returned_list = []
        for idx in indices:
            returned_list.append(obs_batch[idx])
        return returned_list
    else:
        return obs_batch[indices]




    
