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
  id 1329
  arrival_time 13290.0
  lifetime 187.21720796534518
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 13
  ]
  node [
    id 1
    label "1"
    cpu 12
  ]
  node [
    id 2
    label "2"
    cpu 39
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 15
  ]
  edge [
    source 0
    target 3
    bw 14
  ]
  edge [
    source 0
    target 5
    bw 19
  ]
  edge [
    source 0
    target 6
    bw 3
  ]
  edge [
    source 1
    target 2
    bw 45
  ]
  edge [
    source 1
    target 3
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 47
  ]
  edge [
    source 2
    target 6
    bw 4
  ]
  edge [
    source 3
    target 4
    bw 17
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 4
    target 5
    bw 40
  ]
  edge [
    source 4
    target 6
    bw 39
  ]
]
