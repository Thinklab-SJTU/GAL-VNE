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
  id 360
  arrival_time 3641.0
  lifetime 330.5472112465361
  num_nodes 8
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
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 45
  ]
  node [
    id 3
    label "3"
    cpu 9
  ]
  node [
    id 4
    label "4"
    cpu 48
  ]
  node [
    id 5
    label "5"
    cpu 28
  ]
  node [
    id 6
    label "6"
    cpu 47
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  edge [
    source 0
    target 1
    bw 9
  ]
  edge [
    source 0
    target 4
    bw 16
  ]
  edge [
    source 0
    target 6
    bw 17
  ]
  edge [
    source 1
    target 2
    bw 15
  ]
  edge [
    source 1
    target 4
    bw 18
  ]
  edge [
    source 2
    target 3
    bw 22
  ]
  edge [
    source 3
    target 4
    bw 11
  ]
  edge [
    source 3
    target 5
    bw 50
  ]
  edge [
    source 3
    target 6
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 5
  ]
  edge [
    source 4
    target 5
    bw 39
  ]
  edge [
    source 4
    target 7
    bw 10
  ]
]
