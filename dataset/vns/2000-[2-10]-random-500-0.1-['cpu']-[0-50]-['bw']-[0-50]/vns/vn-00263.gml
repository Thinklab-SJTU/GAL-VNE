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
  id 263
  arrival_time 2638.0
  lifetime 185.84244092310405
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 8
  ]
  node [
    id 2
    label "2"
    cpu 46
  ]
  node [
    id 3
    label "3"
    cpu 13
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 34
  ]
  node [
    id 7
    label "7"
    cpu 3
  ]
  node [
    id 8
    label "8"
    cpu 28
  ]
  edge [
    source 0
    target 4
    bw 30
  ]
  edge [
    source 0
    target 7
    bw 38
  ]
  edge [
    source 0
    target 8
    bw 18
  ]
  edge [
    source 1
    target 4
    bw 19
  ]
  edge [
    source 1
    target 5
    bw 35
  ]
  edge [
    source 1
    target 6
    bw 47
  ]
  edge [
    source 1
    target 7
    bw 50
  ]
  edge [
    source 2
    target 6
    bw 4
  ]
  edge [
    source 2
    target 8
    bw 23
  ]
  edge [
    source 3
    target 7
    bw 0
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
  edge [
    source 5
    target 6
    bw 35
  ]
  edge [
    source 5
    target 8
    bw 38
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
  edge [
    source 7
    target 8
    bw 36
  ]
]
