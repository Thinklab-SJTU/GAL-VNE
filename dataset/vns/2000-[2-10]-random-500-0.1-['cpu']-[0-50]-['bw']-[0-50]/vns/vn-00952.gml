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
  id 952
  arrival_time 9488.0
  lifetime 1642.2045159065394
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 20
  ]
  node [
    id 1
    label "1"
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 38
  ]
  node [
    id 4
    label "4"
    cpu 23
  ]
  node [
    id 5
    label "5"
    cpu 44
  ]
  edge [
    source 0
    target 2
    bw 11
  ]
  edge [
    source 0
    target 3
    bw 45
  ]
  edge [
    source 0
    target 4
    bw 16
  ]
  edge [
    source 1
    target 4
    bw 43
  ]
  edge [
    source 1
    target 5
    bw 33
  ]
  edge [
    source 2
    target 4
    bw 4
  ]
  edge [
    source 4
    target 5
    bw 18
  ]
]
