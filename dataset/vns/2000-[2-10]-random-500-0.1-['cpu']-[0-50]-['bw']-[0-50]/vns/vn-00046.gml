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
  id 46
  arrival_time 489.0
  lifetime 133.27478130818037
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 42
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 29
  ]
  node [
    id 4
    label "4"
    cpu 15
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  node [
    id 6
    label "6"
    cpu 34
  ]
  node [
    id 7
    label "7"
    cpu 13
  ]
  node [
    id 8
    label "8"
    cpu 2
  ]
  edge [
    source 0
    target 2
    bw 42
  ]
  edge [
    source 0
    target 3
    bw 48
  ]
  edge [
    source 1
    target 3
    bw 5
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 5
    bw 12
  ]
  edge [
    source 1
    target 8
    bw 40
  ]
  edge [
    source 2
    target 3
    bw 11
  ]
  edge [
    source 2
    target 4
    bw 0
  ]
  edge [
    source 2
    target 7
    bw 15
  ]
  edge [
    source 3
    target 4
    bw 19
  ]
  edge [
    source 3
    target 5
    bw 9
  ]
  edge [
    source 3
    target 6
    bw 38
  ]
  edge [
    source 3
    target 7
    bw 36
  ]
  edge [
    source 4
    target 5
    bw 25
  ]
  edge [
    source 5
    target 6
    bw 42
  ]
  edge [
    source 5
    target 7
    bw 11
  ]
  edge [
    source 6
    target 8
    bw 49
  ]
  edge [
    source 7
    target 8
    bw 17
  ]
]
