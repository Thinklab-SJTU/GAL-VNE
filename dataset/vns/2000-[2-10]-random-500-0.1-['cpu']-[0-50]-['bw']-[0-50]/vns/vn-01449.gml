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
  id 1449
  arrival_time 14449.0
  lifetime 169.59791195601125
  num_nodes 9
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
    cpu 5
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 7
  ]
  node [
    id 4
    label "4"
    cpu 7
  ]
  node [
    id 5
    label "5"
    cpu 39
  ]
  node [
    id 6
    label "6"
    cpu 6
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  node [
    id 8
    label "8"
    cpu 13
  ]
  edge [
    source 0
    target 1
    bw 14
  ]
  edge [
    source 0
    target 5
    bw 19
  ]
  edge [
    source 0
    target 6
    bw 13
  ]
  edge [
    source 0
    target 7
    bw 49
  ]
  edge [
    source 0
    target 8
    bw 36
  ]
  edge [
    source 1
    target 2
    bw 39
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 5
    bw 32
  ]
  edge [
    source 1
    target 6
    bw 16
  ]
  edge [
    source 1
    target 7
    bw 35
  ]
  edge [
    source 1
    target 8
    bw 24
  ]
  edge [
    source 2
    target 7
    bw 38
  ]
  edge [
    source 2
    target 8
    bw 46
  ]
  edge [
    source 3
    target 4
    bw 3
  ]
  edge [
    source 3
    target 7
    bw 18
  ]
  edge [
    source 3
    target 8
    bw 23
  ]
  edge [
    source 4
    target 5
    bw 40
  ]
  edge [
    source 4
    target 8
    bw 4
  ]
  edge [
    source 5
    target 8
    bw 17
  ]
  edge [
    source 7
    target 8
    bw 17
  ]
]
