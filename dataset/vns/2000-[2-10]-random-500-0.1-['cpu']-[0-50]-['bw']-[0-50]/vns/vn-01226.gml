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
  id 1226
  arrival_time 12236.0
  lifetime 244.8824462579836
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 19
  ]
  node [
    id 1
    label "1"
    cpu 30
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 4
  ]
  node [
    id 5
    label "5"
    cpu 1
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 46
  ]
  edge [
    source 0
    target 2
    bw 34
  ]
  edge [
    source 0
    target 5
    bw 36
  ]
  edge [
    source 0
    target 6
    bw 4
  ]
  edge [
    source 0
    target 7
    bw 38
  ]
  edge [
    source 1
    target 2
    bw 0
  ]
  edge [
    source 1
    target 4
    bw 36
  ]
  edge [
    source 1
    target 5
    bw 29
  ]
  edge [
    source 1
    target 7
    bw 16
  ]
  edge [
    source 2
    target 5
    bw 12
  ]
  edge [
    source 3
    target 5
    bw 30
  ]
  edge [
    source 3
    target 7
    bw 28
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 6
    bw 25
  ]
  edge [
    source 5
    target 6
    bw 23
  ]
  edge [
    source 5
    target 7
    bw 41
  ]
]
