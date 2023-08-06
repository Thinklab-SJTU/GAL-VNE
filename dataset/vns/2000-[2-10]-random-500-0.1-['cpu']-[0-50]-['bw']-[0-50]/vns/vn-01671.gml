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
  id 1671
  arrival_time 16672.0
  lifetime 308.299491153527
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 6
  ]
  node [
    id 1
    label "1"
    cpu 32
  ]
  node [
    id 2
    label "2"
    cpu 43
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 24
  ]
  node [
    id 5
    label "5"
    cpu 35
  ]
  node [
    id 6
    label "6"
    cpu 11
  ]
  node [
    id 7
    label "7"
    cpu 13
  ]
  edge [
    source 0
    target 3
    bw 31
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 0
    target 6
    bw 35
  ]
  edge [
    source 1
    target 2
    bw 34
  ]
  edge [
    source 1
    target 3
    bw 5
  ]
  edge [
    source 1
    target 4
    bw 48
  ]
  edge [
    source 1
    target 5
    bw 25
  ]
  edge [
    source 1
    target 6
    bw 50
  ]
  edge [
    source 1
    target 7
    bw 23
  ]
  edge [
    source 2
    target 4
    bw 28
  ]
  edge [
    source 2
    target 5
    bw 5
  ]
  edge [
    source 2
    target 6
    bw 21
  ]
  edge [
    source 2
    target 7
    bw 37
  ]
  edge [
    source 3
    target 4
    bw 38
  ]
  edge [
    source 3
    target 6
    bw 5
  ]
  edge [
    source 3
    target 7
    bw 15
  ]
  edge [
    source 4
    target 7
    bw 12
  ]
  edge [
    source 5
    target 6
    bw 3
  ]
  edge [
    source 5
    target 7
    bw 28
  ]
]
