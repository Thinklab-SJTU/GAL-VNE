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
  id 1183
  arrival_time 11785.0
  lifetime 1101.1939102167305
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 12
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 35
  ]
  node [
    id 5
    label "5"
    cpu 38
  ]
  node [
    id 6
    label "6"
    cpu 27
  ]
  node [
    id 7
    label "7"
    cpu 14
  ]
  edge [
    source 0
    target 2
    bw 17
  ]
  edge [
    source 0
    target 4
    bw 24
  ]
  edge [
    source 0
    target 5
    bw 17
  ]
  edge [
    source 0
    target 6
    bw 20
  ]
  edge [
    source 1
    target 2
    bw 20
  ]
  edge [
    source 1
    target 5
    bw 48
  ]
  edge [
    source 1
    target 6
    bw 22
  ]
  edge [
    source 1
    target 7
    bw 41
  ]
  edge [
    source 2
    target 4
    bw 44
  ]
  edge [
    source 2
    target 7
    bw 35
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
  edge [
    source 4
    target 5
    bw 28
  ]
  edge [
    source 4
    target 6
    bw 7
  ]
  edge [
    source 5
    target 6
    bw 27
  ]
]
