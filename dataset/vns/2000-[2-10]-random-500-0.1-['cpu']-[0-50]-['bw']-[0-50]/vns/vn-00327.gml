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
  id 327
  arrival_time 3312.0
  lifetime 559.1044136831142
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
    cpu 43
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 42
  ]
  node [
    id 6
    label "6"
    cpu 4
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 5
  ]
  edge [
    source 0
    target 2
    bw 46
  ]
  edge [
    source 0
    target 3
    bw 36
  ]
  edge [
    source 0
    target 5
    bw 49
  ]
  edge [
    source 0
    target 6
    bw 27
  ]
  edge [
    source 0
    target 7
    bw 17
  ]
  edge [
    source 1
    target 5
    bw 32
  ]
  edge [
    source 1
    target 7
    bw 23
  ]
  edge [
    source 2
    target 7
    bw 14
  ]
  edge [
    source 2
    target 8
    bw 41
  ]
  edge [
    source 3
    target 5
    bw 30
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 17
  ]
  edge [
    source 3
    target 8
    bw 31
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 7
    bw 49
  ]
  edge [
    source 4
    target 8
    bw 42
  ]
  edge [
    source 5
    target 8
    bw 34
  ]
  edge [
    source 7
    target 8
    bw 46
  ]
]
