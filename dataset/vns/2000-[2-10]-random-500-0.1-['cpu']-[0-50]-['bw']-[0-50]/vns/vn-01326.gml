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
  id 1326
  arrival_time 13254.0
  lifetime 203.41762632303866
  num_nodes 7
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
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 34
  ]
  node [
    id 3
    label "3"
    cpu 50
  ]
  node [
    id 4
    label "4"
    cpu 37
  ]
  node [
    id 5
    label "5"
    cpu 0
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  edge [
    source 0
    target 1
    bw 29
  ]
  edge [
    source 0
    target 2
    bw 5
  ]
  edge [
    source 0
    target 4
    bw 36
  ]
  edge [
    source 0
    target 6
    bw 48
  ]
  edge [
    source 1
    target 3
    bw 23
  ]
  edge [
    source 1
    target 5
    bw 8
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 2
    target 5
    bw 2
  ]
  edge [
    source 3
    target 4
    bw 22
  ]
  edge [
    source 3
    target 5
    bw 35
  ]
  edge [
    source 4
    target 5
    bw 40
  ]
  edge [
    source 4
    target 6
    bw 48
  ]
  edge [
    source 5
    target 6
    bw 27
  ]
]
