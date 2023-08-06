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
  id 625
  arrival_time 6307.0
  lifetime 1400.3280416546056
  num_nodes 4
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 2
  ]
  node [
    id 1
    label "1"
    cpu 16
  ]
  node [
    id 2
    label "2"
    cpu 4
  ]
  node [
    id 3
    label "3"
    cpu 27
  ]
  edge [
    source 0
    target 2
    bw 33
  ]
  edge [
    source 1
    target 2
    bw 16
  ]
  edge [
    source 1
    target 3
    bw 21
  ]
  edge [
    source 2
    target 3
    bw 14
  ]
]
