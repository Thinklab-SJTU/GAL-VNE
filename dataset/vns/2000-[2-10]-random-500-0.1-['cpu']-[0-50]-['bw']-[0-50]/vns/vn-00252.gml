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
  id 252
  arrival_time 2541.0
  lifetime 1560.2753989237212
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 47
  ]
  node [
    id 1
    label "1"
    cpu 6
  ]
  node [
    id 2
    label "2"
    cpu 10
  ]
  node [
    id 3
    label "3"
    cpu 22
  ]
  node [
    id 4
    label "4"
    cpu 12
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 8
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  node [
    id 8
    label "8"
    cpu 18
  ]
  edge [
    source 0
    target 2
    bw 0
  ]
  edge [
    source 0
    target 5
    bw 38
  ]
  edge [
    source 0
    target 6
    bw 5
  ]
  edge [
    source 1
    target 2
    bw 42
  ]
  edge [
    source 1
    target 3
    bw 33
  ]
  edge [
    source 1
    target 5
    bw 30
  ]
  edge [
    source 2
    target 3
    bw 17
  ]
  edge [
    source 2
    target 4
    bw 28
  ]
  edge [
    source 2
    target 6
    bw 5
  ]
  edge [
    source 2
    target 7
    bw 14
  ]
  edge [
    source 3
    target 4
    bw 32
  ]
  edge [
    source 3
    target 6
    bw 2
  ]
  edge [
    source 3
    target 7
    bw 1
  ]
  edge [
    source 3
    target 8
    bw 23
  ]
  edge [
    source 4
    target 5
    bw 37
  ]
  edge [
    source 4
    target 6
    bw 15
  ]
  edge [
    source 4
    target 7
    bw 43
  ]
  edge [
    source 4
    target 8
    bw 16
  ]
  edge [
    source 6
    target 8
    bw 16
  ]
]
