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
  id 1396
  arrival_time 13948.0
  lifetime 698.0263133142254
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 29
  ]
  node [
    id 4
    label "4"
    cpu 37
  ]
  node [
    id 5
    label "5"
    cpu 32
  ]
  node [
    id 6
    label "6"
    cpu 20
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  node [
    id 8
    label "8"
    cpu 31
  ]
  edge [
    source 0
    target 2
    bw 25
  ]
  edge [
    source 0
    target 4
    bw 0
  ]
  edge [
    source 0
    target 5
    bw 45
  ]
  edge [
    source 0
    target 6
    bw 24
  ]
  edge [
    source 0
    target 8
    bw 8
  ]
  edge [
    source 1
    target 3
    bw 0
  ]
  edge [
    source 1
    target 4
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 14
  ]
  edge [
    source 1
    target 7
    bw 41
  ]
  edge [
    source 2
    target 4
    bw 25
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 2
    target 6
    bw 43
  ]
  edge [
    source 2
    target 8
    bw 23
  ]
  edge [
    source 3
    target 6
    bw 9
  ]
  edge [
    source 3
    target 7
    bw 38
  ]
  edge [
    source 4
    target 6
    bw 34
  ]
  edge [
    source 4
    target 7
    bw 48
  ]
  edge [
    source 6
    target 8
    bw 43
  ]
  edge [
    source 7
    target 8
    bw 16
  ]
]
