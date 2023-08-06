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
  id 1109
  arrival_time 11037.0
  lifetime 84.67152268012688
  num_nodes 7
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
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 7
  ]
  node [
    id 3
    label "3"
    cpu 50
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 0
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  edge [
    source 0
    target 1
    bw 2
  ]
  edge [
    source 0
    target 4
    bw 50
  ]
  edge [
    source 0
    target 5
    bw 15
  ]
  edge [
    source 1
    target 5
    bw 16
  ]
  edge [
    source 1
    target 6
    bw 17
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
    target 5
    bw 0
  ]
  edge [
    source 3
    target 6
    bw 39
  ]
  edge [
    source 4
    target 5
    bw 26
  ]
  edge [
    source 4
    target 6
    bw 42
  ]
]
