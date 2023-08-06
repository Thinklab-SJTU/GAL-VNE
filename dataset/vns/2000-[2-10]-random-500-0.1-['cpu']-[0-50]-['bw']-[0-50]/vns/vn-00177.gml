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
  id 177
  arrival_time 1789.0
  lifetime 210.04415844185087
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 10
  ]
  node [
    id 2
    label "2"
    cpu 42
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 21
  ]
  node [
    id 5
    label "5"
    cpu 14
  ]
  edge [
    source 0
    target 3
    bw 28
  ]
  edge [
    source 0
    target 4
    bw 17
  ]
  edge [
    source 0
    target 5
    bw 8
  ]
  edge [
    source 1
    target 2
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 48
  ]
  edge [
    source 1
    target 5
    bw 38
  ]
  edge [
    source 2
    target 5
    bw 14
  ]
  edge [
    source 4
    target 5
    bw 12
  ]
]
