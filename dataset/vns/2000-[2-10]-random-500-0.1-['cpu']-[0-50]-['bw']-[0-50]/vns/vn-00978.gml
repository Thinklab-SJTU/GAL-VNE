graph [
  node_attrs_setting "_networkx_list_start"
  node_attrs_setting [
    name "cpu"
    distribution "uniform"
    dtype "int"
    generative 1
    low 0
    high 50
    owner "node"
    type "resource"
  ]
  edge_attrs_setting "_networkx_list_start"
  edge_attrs_setting [
    name "bw"
    distribution "uniform"
    dtype "int"
    generative 1
    low 0
    high 50
    owner "edge"
    type "resource"
  ]
  id 978
  arrival_time 9742.0
  lifetime 1409.7156593877592
  num_nodes 3
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 49
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  edge [
    source 0
    target 1
    bw 1
  ]
  edge [
    source 0
    target 2
    bw 35
  ]
  edge [
    source 1
    target 2
    bw 23
  ]
]