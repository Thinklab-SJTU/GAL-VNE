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
  id 833
  arrival_time 8291.0
  lifetime 421.9609574896612
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 21
  ]
  node [
    id 1
    label "1"
    cpu 24
  ]
  node [
    id 2
    label "2"
    cpu 3
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 33
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 17
  ]
  node [
    id 7
    label "7"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 31
  ]
  edge [
    source 0
    target 3
    bw 4
  ]
  edge [
    source 0
    target 4
    bw 14
  ]
  edge [
    source 0
    target 6
    bw 16
  ]
  edge [
    source 0
    target 7
    bw 48
  ]
  edge [
    source 1
    target 2
    bw 0
  ]
  edge [
    source 2
    target 4
    bw 39
  ]
  edge [
    source 2
    target 5
    bw 12
  ]
  edge [
    source 2
    target 7
    bw 33
  ]
  edge [
    source 3
    target 5
    bw 1
  ]
  edge [
    source 3
    target 6
    bw 3
  ]
  edge [
    source 3
    target 7
    bw 48
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
  edge [
    source 5
    target 6
    bw 0
  ]
  edge [
    source 6
    target 7
    bw 4
  ]
]
