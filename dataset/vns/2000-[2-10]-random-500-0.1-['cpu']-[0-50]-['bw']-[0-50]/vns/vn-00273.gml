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
  id 273
  arrival_time 2741.0
  lifetime 542.6174422703845
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 10
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 15
  ]
  node [
    id 3
    label "3"
    cpu 7
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  edge [
    source 0
    target 2
    bw 19
  ]
  edge [
    source 0
    target 3
    bw 6
  ]
  edge [
    source 1
    target 2
    bw 44
  ]
  edge [
    source 1
    target 3
    bw 26
  ]
  edge [
    source 1
    target 4
    bw 2
  ]
  edge [
    source 2
    target 3
    bw 40
  ]
  edge [
    source 2
    target 4
    bw 35
  ]
  edge [
    source 3
    target 4
    bw 40
  ]
]
