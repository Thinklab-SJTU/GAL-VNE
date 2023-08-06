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
  id 1859
  arrival_time 18557.0
  lifetime 47.666016334682645
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
    cpu 12
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 7
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  edge [
    source 0
    target 2
    bw 3
  ]
  edge [
    source 0
    target 5
    bw 32
  ]
  edge [
    source 1
    target 2
    bw 25
  ]
  edge [
    source 1
    target 4
    bw 27
  ]
  edge [
    source 1
    target 5
    bw 7
  ]
  edge [
    source 1
    target 6
    bw 21
  ]
  edge [
    source 2
    target 3
    bw 12
  ]
  edge [
    source 2
    target 4
    bw 34
  ]
  edge [
    source 2
    target 5
    bw 15
  ]
  edge [
    source 3
    target 4
    bw 5
  ]
  edge [
    source 3
    target 5
    bw 0
  ]
  edge [
    source 4
    target 5
    bw 44
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
]
