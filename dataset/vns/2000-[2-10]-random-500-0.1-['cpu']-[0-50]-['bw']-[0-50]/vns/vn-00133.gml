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
  id 133
  arrival_time 1334.0
  lifetime 75.12787136866086
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 45
  ]
  node [
    id 2
    label "2"
    cpu 34
  ]
  node [
    id 3
    label "3"
    cpu 16
  ]
  node [
    id 4
    label "4"
    cpu 32
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 2
  ]
  node [
    id 7
    label "7"
    cpu 2
  ]
  node [
    id 8
    label "8"
    cpu 44
  ]
  node [
    id 9
    label "9"
    cpu 32
  ]
  edge [
    source 0
    target 7
    bw 47
  ]
  edge [
    source 1
    target 2
    bw 18
  ]
  edge [
    source 1
    target 4
    bw 50
  ]
  edge [
    source 1
    target 6
    bw 17
  ]
  edge [
    source 1
    target 8
    bw 36
  ]
  edge [
    source 2
    target 5
    bw 46
  ]
  edge [
    source 2
    target 6
    bw 8
  ]
  edge [
    source 2
    target 9
    bw 32
  ]
  edge [
    source 3
    target 4
    bw 29
  ]
  edge [
    source 3
    target 5
    bw 47
  ]
  edge [
    source 3
    target 7
    bw 29
  ]
  edge [
    source 3
    target 8
    bw 43
  ]
  edge [
    source 4
    target 5
    bw 47
  ]
  edge [
    source 4
    target 7
    bw 24
  ]
  edge [
    source 4
    target 9
    bw 17
  ]
  edge [
    source 6
    target 8
    bw 34
  ]
  edge [
    source 7
    target 8
    bw 45
  ]
  edge [
    source 7
    target 9
    bw 4
  ]
]
