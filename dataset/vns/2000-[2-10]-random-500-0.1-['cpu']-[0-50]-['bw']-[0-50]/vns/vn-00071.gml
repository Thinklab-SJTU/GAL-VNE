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
  id 71
  arrival_time 752.0
  lifetime 269.01964628913146
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 7
  ]
  node [
    id 1
    label "1"
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 28
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 47
  ]
  node [
    id 7
    label "7"
    cpu 34
  ]
  node [
    id 8
    label "8"
    cpu 44
  ]
  edge [
    source 0
    target 2
    bw 22
  ]
  edge [
    source 0
    target 4
    bw 34
  ]
  edge [
    source 0
    target 5
    bw 1
  ]
  edge [
    source 0
    target 7
    bw 37
  ]
  edge [
    source 1
    target 8
    bw 22
  ]
  edge [
    source 2
    target 5
    bw 37
  ]
  edge [
    source 2
    target 8
    bw 46
  ]
  edge [
    source 3
    target 4
    bw 29
  ]
  edge [
    source 3
    target 5
    bw 32
  ]
  edge [
    source 3
    target 6
    bw 23
  ]
  edge [
    source 3
    target 7
    bw 30
  ]
  edge [
    source 5
    target 7
    bw 17
  ]
  edge [
    source 5
    target 8
    bw 45
  ]
  edge [
    source 6
    target 7
    bw 45
  ]
]
