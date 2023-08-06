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
  id 1072
  arrival_time 10669.0
  lifetime 639.3133477849741
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 50
  ]
  node [
    id 1
    label "1"
    cpu 8
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 43
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 19
  ]
  node [
    id 7
    label "7"
    cpu 14
  ]
  edge [
    source 0
    target 3
    bw 48
  ]
  edge [
    source 0
    target 5
    bw 43
  ]
  edge [
    source 0
    target 6
    bw 50
  ]
  edge [
    source 0
    target 7
    bw 1
  ]
  edge [
    source 1
    target 2
    bw 22
  ]
  edge [
    source 1
    target 5
    bw 40
  ]
  edge [
    source 1
    target 7
    bw 13
  ]
  edge [
    source 2
    target 7
    bw 37
  ]
  edge [
    source 3
    target 4
    bw 36
  ]
  edge [
    source 3
    target 5
    bw 5
  ]
  edge [
    source 4
    target 5
    bw 14
  ]
  edge [
    source 4
    target 7
    bw 36
  ]
  edge [
    source 5
    target 6
    bw 14
  ]
  edge [
    source 6
    target 7
    bw 36
  ]
]
