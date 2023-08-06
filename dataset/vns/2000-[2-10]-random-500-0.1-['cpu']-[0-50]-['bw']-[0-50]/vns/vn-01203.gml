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
  id 1203
  arrival_time 12000.0
  lifetime 727.513239523569
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 2
  ]
  node [
    id 2
    label "2"
    cpu 39
  ]
  node [
    id 3
    label "3"
    cpu 42
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  edge [
    source 0
    target 1
    bw 26
  ]
  edge [
    source 0
    target 2
    bw 24
  ]
  edge [
    source 0
    target 4
    bw 48
  ]
  edge [
    source 0
    target 5
    bw 46
  ]
  edge [
    source 1
    target 4
    bw 12
  ]
  edge [
    source 1
    target 5
    bw 42
  ]
  edge [
    source 2
    target 3
    bw 45
  ]
  edge [
    source 2
    target 5
    bw 19
  ]
]
