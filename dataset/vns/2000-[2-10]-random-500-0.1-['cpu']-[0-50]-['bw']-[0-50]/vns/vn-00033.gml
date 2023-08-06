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
  id 33
  arrival_time 361.0
  lifetime 581.9653687456823
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 47
  ]
  node [
    id 1
    label "1"
    cpu 3
  ]
  node [
    id 2
    label "2"
    cpu 33
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 19
  ]
  node [
    id 5
    label "5"
    cpu 35
  ]
  node [
    id 6
    label "6"
    cpu 34
  ]
  node [
    id 7
    label "7"
    cpu 16
  ]
  node [
    id 8
    label "8"
    cpu 0
  ]
  node [
    id 9
    label "9"
    cpu 19
  ]
  edge [
    source 0
    target 2
    bw 6
  ]
  edge [
    source 0
    target 3
    bw 25
  ]
  edge [
    source 0
    target 4
    bw 9
  ]
  edge [
    source 0
    target 5
    bw 47
  ]
  edge [
    source 0
    target 7
    bw 35
  ]
  edge [
    source 0
    target 8
    bw 50
  ]
  edge [
    source 0
    target 9
    bw 31
  ]
  edge [
    source 1
    target 3
    bw 28
  ]
  edge [
    source 1
    target 6
    bw 8
  ]
  edge [
    source 2
    target 4
    bw 4
  ]
  edge [
    source 2
    target 7
    bw 20
  ]
  edge [
    source 2
    target 8
    bw 47
  ]
  edge [
    source 2
    target 9
    bw 10
  ]
  edge [
    source 4
    target 5
    bw 8
  ]
  edge [
    source 4
    target 8
    bw 42
  ]
  edge [
    source 4
    target 9
    bw 43
  ]
  edge [
    source 5
    target 6
    bw 39
  ]
  edge [
    source 5
    target 7
    bw 39
  ]
  edge [
    source 6
    target 7
    bw 10
  ]
  edge [
    source 6
    target 8
    bw 15
  ]
  edge [
    source 6
    target 9
    bw 24
  ]
]
