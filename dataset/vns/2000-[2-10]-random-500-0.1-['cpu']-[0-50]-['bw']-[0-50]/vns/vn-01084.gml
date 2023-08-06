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
  id 1084
  arrival_time 10789.0
  lifetime 477.1781644928165
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 36
  ]
  node [
    id 1
    label "1"
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 6
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 26
  ]
  node [
    id 5
    label "5"
    cpu 43
  ]
  edge [
    source 0
    target 3
    bw 46
  ]
  edge [
    source 0
    target 4
    bw 11
  ]
  edge [
    source 1
    target 2
    bw 48
  ]
  edge [
    source 1
    target 3
    bw 39
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 2
    target 4
    bw 37
  ]
  edge [
    source 2
    target 5
    bw 6
  ]
  edge [
    source 3
    target 4
    bw 38
  ]
  edge [
    source 3
    target 5
    bw 28
  ]
]
