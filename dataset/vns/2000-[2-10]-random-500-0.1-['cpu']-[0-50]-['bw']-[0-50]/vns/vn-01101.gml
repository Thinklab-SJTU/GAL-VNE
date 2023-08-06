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
  id 1101
  arrival_time 10943.0
  lifetime 434.36766855310066
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 41
  ]
  node [
    id 1
    label "1"
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 17
  ]
  node [
    id 3
    label "3"
    cpu 7
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 20
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 44
  ]
  node [
    id 9
    label "9"
    cpu 50
  ]
  edge [
    source 0
    target 3
    bw 8
  ]
  edge [
    source 0
    target 4
    bw 44
  ]
  edge [
    source 0
    target 9
    bw 24
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 1
    target 9
    bw 31
  ]
  edge [
    source 2
    target 8
    bw 43
  ]
  edge [
    source 3
    target 5
    bw 23
  ]
  edge [
    source 3
    target 7
    bw 1
  ]
  edge [
    source 4
    target 6
    bw 35
  ]
  edge [
    source 4
    target 8
    bw 3
  ]
  edge [
    source 5
    target 6
    bw 47
  ]
  edge [
    source 5
    target 9
    bw 28
  ]
  edge [
    source 6
    target 7
    bw 43
  ]
  edge [
    source 7
    target 8
    bw 40
  ]
  edge [
    source 7
    target 9
    bw 25
  ]
  edge [
    source 8
    target 9
    bw 18
  ]
]
