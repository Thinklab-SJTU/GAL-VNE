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
  id 408
  arrival_time 4109.0
  lifetime 396.37442627468243
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 39
  ]
  node [
    id 1
    label "1"
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 2
  ]
  node [
    id 3
    label "3"
    cpu 50
  ]
  node [
    id 4
    label "4"
    cpu 20
  ]
  node [
    id 5
    label "5"
    cpu 0
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 7
  ]
  node [
    id 8
    label "8"
    cpu 30
  ]
  edge [
    source 0
    target 4
    bw 49
  ]
  edge [
    source 0
    target 8
    bw 4
  ]
  edge [
    source 1
    target 2
    bw 41
  ]
  edge [
    source 1
    target 4
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 20
  ]
  edge [
    source 1
    target 7
    bw 48
  ]
  edge [
    source 2
    target 3
    bw 43
  ]
  edge [
    source 2
    target 6
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 30
  ]
  edge [
    source 3
    target 6
    bw 18
  ]
  edge [
    source 3
    target 7
    bw 2
  ]
  edge [
    source 4
    target 6
    bw 24
  ]
  edge [
    source 4
    target 7
    bw 13
  ]
  edge [
    source 5
    target 8
    bw 49
  ]
  edge [
    source 6
    target 8
    bw 39
  ]
]
