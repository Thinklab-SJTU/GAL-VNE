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
  id 591
  arrival_time 5947.0
  lifetime 120.85132509214286
  num_nodes 8
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
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 41
  ]
  node [
    id 3
    label "3"
    cpu 11
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 13
  ]
  node [
    id 6
    label "6"
    cpu 38
  ]
  node [
    id 7
    label "7"
    cpu 48
  ]
  edge [
    source 0
    target 5
    bw 23
  ]
  edge [
    source 1
    target 3
    bw 32
  ]
  edge [
    source 1
    target 4
    bw 21
  ]
  edge [
    source 2
    target 3
    bw 32
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 2
    target 6
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 30
  ]
  edge [
    source 4
    target 6
    bw 30
  ]
]
