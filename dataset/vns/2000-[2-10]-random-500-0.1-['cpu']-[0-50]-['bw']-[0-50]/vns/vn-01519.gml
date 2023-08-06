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
  id 1519
  arrival_time 15159.0
  lifetime 437.5920017541669
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 40
  ]
  node [
    id 1
    label "1"
    cpu 49
  ]
  node [
    id 2
    label "2"
    cpu 50
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 24
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 15
  ]
  node [
    id 7
    label "7"
    cpu 21
  ]
  node [
    id 8
    label "8"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 21
  ]
  edge [
    source 0
    target 2
    bw 32
  ]
  edge [
    source 0
    target 5
    bw 36
  ]
  edge [
    source 0
    target 6
    bw 35
  ]
  edge [
    source 0
    target 8
    bw 16
  ]
  edge [
    source 1
    target 2
    bw 8
  ]
  edge [
    source 1
    target 3
    bw 0
  ]
  edge [
    source 1
    target 5
    bw 14
  ]
  edge [
    source 1
    target 7
    bw 26
  ]
  edge [
    source 2
    target 3
    bw 22
  ]
  edge [
    source 2
    target 4
    bw 50
  ]
  edge [
    source 2
    target 6
    bw 6
  ]
  edge [
    source 2
    target 7
    bw 34
  ]
  edge [
    source 3
    target 4
    bw 44
  ]
  edge [
    source 3
    target 5
    bw 21
  ]
  edge [
    source 3
    target 7
    bw 40
  ]
  edge [
    source 4
    target 5
    bw 20
  ]
  edge [
    source 5
    target 7
    bw 44
  ]
  edge [
    source 6
    target 8
    bw 21
  ]
  edge [
    source 7
    target 8
    bw 18
  ]
]
