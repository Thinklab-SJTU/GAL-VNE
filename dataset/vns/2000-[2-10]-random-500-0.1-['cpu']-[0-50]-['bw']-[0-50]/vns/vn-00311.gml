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
  id 311
  arrival_time 3161.0
  lifetime 1449.649324557156
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 48
  ]
  node [
    id 4
    label "4"
    cpu 20
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 48
  ]
  node [
    id 7
    label "7"
    cpu 25
  ]
  node [
    id 8
    label "8"
    cpu 37
  ]
  edge [
    source 0
    target 2
    bw 6
  ]
  edge [
    source 0
    target 7
    bw 14
  ]
  edge [
    source 1
    target 6
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 40
  ]
  edge [
    source 2
    target 5
    bw 29
  ]
  edge [
    source 2
    target 8
    bw 16
  ]
  edge [
    source 3
    target 5
    bw 36
  ]
  edge [
    source 3
    target 6
    bw 41
  ]
  edge [
    source 4
    target 6
    bw 44
  ]
  edge [
    source 4
    target 7
    bw 50
  ]
  edge [
    source 7
    target 8
    bw 4
  ]
]
