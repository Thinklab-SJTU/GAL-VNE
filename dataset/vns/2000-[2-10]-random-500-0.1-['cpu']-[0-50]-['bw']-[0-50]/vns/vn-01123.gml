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
  id 1123
  arrival_time 11178.0
  lifetime 920.7529370587322
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 24
  ]
  node [
    id 2
    label "2"
    cpu 30
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 26
  ]
  node [
    id 5
    label "5"
    cpu 4
  ]
  node [
    id 6
    label "6"
    cpu 49
  ]
  node [
    id 7
    label "7"
    cpu 19
  ]
  node [
    id 8
    label "8"
    cpu 16
  ]
  node [
    id 9
    label "9"
    cpu 28
  ]
  edge [
    source 0
    target 1
    bw 6
  ]
  edge [
    source 0
    target 2
    bw 47
  ]
  edge [
    source 0
    target 5
    bw 16
  ]
  edge [
    source 0
    target 6
    bw 2
  ]
  edge [
    source 0
    target 8
    bw 49
  ]
  edge [
    source 1
    target 4
    bw 17
  ]
  edge [
    source 1
    target 6
    bw 35
  ]
  edge [
    source 1
    target 8
    bw 11
  ]
  edge [
    source 1
    target 9
    bw 2
  ]
  edge [
    source 2
    target 3
    bw 12
  ]
  edge [
    source 2
    target 4
    bw 15
  ]
  edge [
    source 2
    target 5
    bw 6
  ]
  edge [
    source 2
    target 7
    bw 0
  ]
  edge [
    source 2
    target 8
    bw 33
  ]
  edge [
    source 3
    target 5
    bw 49
  ]
  edge [
    source 3
    target 6
    bw 19
  ]
  edge [
    source 3
    target 8
    bw 34
  ]
  edge [
    source 3
    target 9
    bw 47
  ]
  edge [
    source 4
    target 5
    bw 13
  ]
  edge [
    source 4
    target 9
    bw 12
  ]
  edge [
    source 5
    target 7
    bw 23
  ]
  edge [
    source 6
    target 9
    bw 4
  ]
  edge [
    source 7
    target 8
    bw 30
  ]
  edge [
    source 7
    target 9
    bw 12
  ]
]
