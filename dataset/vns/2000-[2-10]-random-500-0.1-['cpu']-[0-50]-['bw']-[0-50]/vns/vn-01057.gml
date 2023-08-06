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
  id 1057
  arrival_time 10526.0
  lifetime 196.5299266125069
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 6
  ]
  node [
    id 1
    label "1"
    cpu 33
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 41
  ]
  node [
    id 4
    label "4"
    cpu 43
  ]
  node [
    id 5
    label "5"
    cpu 2
  ]
  node [
    id 6
    label "6"
    cpu 24
  ]
  node [
    id 7
    label "7"
    cpu 37
  ]
  node [
    id 8
    label "8"
    cpu 10
  ]
  node [
    id 9
    label "9"
    cpu 47
  ]
  edge [
    source 0
    target 1
    bw 3
  ]
  edge [
    source 0
    target 4
    bw 29
  ]
  edge [
    source 2
    target 3
    bw 41
  ]
  edge [
    source 2
    target 4
    bw 27
  ]
  edge [
    source 2
    target 5
    bw 21
  ]
  edge [
    source 2
    target 6
    bw 6
  ]
  edge [
    source 2
    target 7
    bw 43
  ]
  edge [
    source 2
    target 9
    bw 9
  ]
  edge [
    source 3
    target 4
    bw 30
  ]
  edge [
    source 3
    target 8
    bw 40
  ]
  edge [
    source 3
    target 9
    bw 22
  ]
  edge [
    source 4
    target 9
    bw 0
  ]
  edge [
    source 5
    target 7
    bw 32
  ]
  edge [
    source 5
    target 8
    bw 30
  ]
  edge [
    source 5
    target 9
    bw 39
  ]
  edge [
    source 6
    target 7
    bw 25
  ]
  edge [
    source 6
    target 8
    bw 35
  ]
  edge [
    source 7
    target 8
    bw 9
  ]
  edge [
    source 7
    target 9
    bw 15
  ]
]
