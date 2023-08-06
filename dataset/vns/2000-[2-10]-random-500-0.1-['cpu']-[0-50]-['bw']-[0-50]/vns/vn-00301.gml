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
  id 301
  arrival_time 3048.0
  lifetime 13.031198698733311
  num_nodes 10
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
    cpu 14
  ]
  node [
    id 2
    label "2"
    cpu 43
  ]
  node [
    id 3
    label "3"
    cpu 5
  ]
  node [
    id 4
    label "4"
    cpu 48
  ]
  node [
    id 5
    label "5"
    cpu 22
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  node [
    id 7
    label "7"
    cpu 31
  ]
  node [
    id 8
    label "8"
    cpu 39
  ]
  node [
    id 9
    label "9"
    cpu 4
  ]
  edge [
    source 0
    target 1
    bw 14
  ]
  edge [
    source 0
    target 2
    bw 50
  ]
  edge [
    source 0
    target 3
    bw 10
  ]
  edge [
    source 0
    target 6
    bw 32
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 5
    bw 16
  ]
  edge [
    source 1
    target 6
    bw 10
  ]
  edge [
    source 1
    target 8
    bw 24
  ]
  edge [
    source 1
    target 9
    bw 49
  ]
  edge [
    source 2
    target 3
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 37
  ]
  edge [
    source 2
    target 5
    bw 22
  ]
  edge [
    source 3
    target 5
    bw 30
  ]
  edge [
    source 3
    target 8
    bw 7
  ]
  edge [
    source 4
    target 6
    bw 0
  ]
  edge [
    source 4
    target 7
    bw 47
  ]
  edge [
    source 4
    target 9
    bw 40
  ]
  edge [
    source 5
    target 7
    bw 30
  ]
  edge [
    source 5
    target 8
    bw 46
  ]
  edge [
    source 5
    target 9
    bw 19
  ]
  edge [
    source 6
    target 8
    bw 49
  ]
  edge [
    source 6
    target 9
    bw 14
  ]
  edge [
    source 7
    target 8
    bw 17
  ]
  edge [
    source 8
    target 9
    bw 25
  ]
]
