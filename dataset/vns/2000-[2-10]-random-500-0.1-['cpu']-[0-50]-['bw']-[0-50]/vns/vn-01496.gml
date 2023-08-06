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
  id 1496
  arrival_time 14947.0
  lifetime 407.0408135888274
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 42
  ]
  node [
    id 1
    label "1"
    cpu 50
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 17
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  node [
    id 5
    label "5"
    cpu 4
  ]
  node [
    id 6
    label "6"
    cpu 50
  ]
  node [
    id 7
    label "7"
    cpu 25
  ]
  edge [
    source 0
    target 2
    bw 20
  ]
  edge [
    source 0
    target 4
    bw 39
  ]
  edge [
    source 0
    target 5
    bw 3
  ]
  edge [
    source 0
    target 7
    bw 25
  ]
  edge [
    source 1
    target 3
    bw 0
  ]
  edge [
    source 1
    target 6
    bw 17
  ]
  edge [
    source 1
    target 7
    bw 44
  ]
  edge [
    source 2
    target 3
    bw 28
  ]
  edge [
    source 2
    target 4
    bw 34
  ]
  edge [
    source 2
    target 5
    bw 0
  ]
  edge [
    source 3
    target 6
    bw 36
  ]
  edge [
    source 3
    target 7
    bw 47
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 7
    bw 42
  ]
]
