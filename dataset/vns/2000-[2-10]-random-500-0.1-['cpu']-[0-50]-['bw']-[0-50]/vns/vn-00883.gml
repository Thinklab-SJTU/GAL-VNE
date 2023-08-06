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
  id 883
  arrival_time 8793.0
  lifetime 107.71395885578302
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 4
  ]
  node [
    id 1
    label "1"
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 48
  ]
  node [
    id 3
    label "3"
    cpu 34
  ]
  node [
    id 4
    label "4"
    cpu 19
  ]
  node [
    id 5
    label "5"
    cpu 4
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 23
  ]
  edge [
    source 0
    target 1
    bw 4
  ]
  edge [
    source 0
    target 2
    bw 2
  ]
  edge [
    source 0
    target 3
    bw 6
  ]
  edge [
    source 1
    target 4
    bw 11
  ]
  edge [
    source 1
    target 5
    bw 10
  ]
  edge [
    source 1
    target 7
    bw 29
  ]
  edge [
    source 2
    target 5
    bw 49
  ]
  edge [
    source 3
    target 4
    bw 45
  ]
  edge [
    source 3
    target 6
    bw 39
  ]
  edge [
    source 4
    target 7
    bw 10
  ]
  edge [
    source 6
    target 7
    bw 20
  ]
]
