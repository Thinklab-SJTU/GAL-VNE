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
  id 1118
  arrival_time 11125.0
  lifetime 566.3164475109874
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 44
  ]
  node [
    id 2
    label "2"
    cpu 32
  ]
  node [
    id 3
    label "3"
    cpu 23
  ]
  node [
    id 4
    label "4"
    cpu 45
  ]
  node [
    id 5
    label "5"
    cpu 20
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  edge [
    source 0
    target 2
    bw 10
  ]
  edge [
    source 0
    target 3
    bw 38
  ]
  edge [
    source 0
    target 4
    bw 35
  ]
  edge [
    source 1
    target 5
    bw 25
  ]
  edge [
    source 2
    target 3
    bw 40
  ]
  edge [
    source 2
    target 4
    bw 41
  ]
  edge [
    source 2
    target 6
    bw 20
  ]
  edge [
    source 4
    target 5
    bw 28
  ]
  edge [
    source 4
    target 6
    bw 41
  ]
  edge [
    source 5
    target 6
    bw 4
  ]
]
