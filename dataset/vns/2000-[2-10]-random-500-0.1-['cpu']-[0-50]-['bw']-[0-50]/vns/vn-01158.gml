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
  id 1158
  arrival_time 11537.0
  lifetime 155.81600104307213
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 48
  ]
  node [
    id 1
    label "1"
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 16
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 5
  ]
  node [
    id 7
    label "7"
    cpu 7
  ]
  edge [
    source 0
    target 2
    bw 15
  ]
  edge [
    source 0
    target 3
    bw 18
  ]
  edge [
    source 0
    target 4
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 49
  ]
  edge [
    source 0
    target 6
    bw 36
  ]
  edge [
    source 1
    target 2
    bw 7
  ]
  edge [
    source 1
    target 4
    bw 15
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 2
    target 5
    bw 10
  ]
  edge [
    source 2
    target 6
    bw 45
  ]
  edge [
    source 3
    target 4
    bw 48
  ]
  edge [
    source 3
    target 5
    bw 19
  ]
  edge [
    source 3
    target 6
    bw 42
  ]
  edge [
    source 4
    target 5
    bw 36
  ]
  edge [
    source 5
    target 7
    bw 36
  ]
]
