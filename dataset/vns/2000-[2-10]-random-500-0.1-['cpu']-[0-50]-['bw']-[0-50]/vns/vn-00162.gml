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
  id 162
  arrival_time 1640.0
  lifetime 836.251360941078
  num_nodes 8
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
    cpu 34
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 42
  ]
  node [
    id 4
    label "4"
    cpu 42
  ]
  node [
    id 5
    label "5"
    cpu 7
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 42
  ]
  edge [
    source 0
    target 3
    bw 12
  ]
  edge [
    source 0
    target 5
    bw 44
  ]
  edge [
    source 0
    target 7
    bw 15
  ]
  edge [
    source 1
    target 3
    bw 23
  ]
  edge [
    source 1
    target 5
    bw 35
  ]
  edge [
    source 1
    target 6
    bw 15
  ]
  edge [
    source 1
    target 7
    bw 24
  ]
  edge [
    source 2
    target 3
    bw 47
  ]
  edge [
    source 2
    target 4
    bw 24
  ]
  edge [
    source 2
    target 5
    bw 39
  ]
  edge [
    source 2
    target 6
    bw 45
  ]
  edge [
    source 2
    target 7
    bw 24
  ]
  edge [
    source 5
    target 7
    bw 30
  ]
]
