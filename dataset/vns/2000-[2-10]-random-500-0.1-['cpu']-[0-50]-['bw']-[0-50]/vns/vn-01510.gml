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
  id 1510
  arrival_time 15089.0
  lifetime 393.0643664814847
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 29
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 44
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 6
  ]
  node [
    id 6
    label "6"
    cpu 39
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  node [
    id 8
    label "8"
    cpu 9
  ]
  edge [
    source 0
    target 1
    bw 49
  ]
  edge [
    source 0
    target 5
    bw 36
  ]
  edge [
    source 1
    target 2
    bw 45
  ]
  edge [
    source 1
    target 8
    bw 47
  ]
  edge [
    source 2
    target 3
    bw 21
  ]
  edge [
    source 2
    target 4
    bw 49
  ]
  edge [
    source 2
    target 5
    bw 35
  ]
  edge [
    source 2
    target 6
    bw 44
  ]
  edge [
    source 2
    target 7
    bw 2
  ]
  edge [
    source 3
    target 8
    bw 4
  ]
  edge [
    source 4
    target 7
    bw 50
  ]
  edge [
    source 4
    target 8
    bw 19
  ]
  edge [
    source 5
    target 8
    bw 4
  ]
  edge [
    source 6
    target 8
    bw 32
  ]
  edge [
    source 7
    target 8
    bw 8
  ]
]
