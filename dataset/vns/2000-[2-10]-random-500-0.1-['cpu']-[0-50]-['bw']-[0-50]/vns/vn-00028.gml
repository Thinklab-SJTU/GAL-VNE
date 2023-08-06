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
  id 28
  arrival_time 312.0
  lifetime 1150.8581617888733
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 10
  ]
  node [
    id 1
    label "1"
    cpu 44
  ]
  node [
    id 2
    label "2"
    cpu 35
  ]
  node [
    id 3
    label "3"
    cpu 17
  ]
  node [
    id 4
    label "4"
    cpu 4
  ]
  node [
    id 5
    label "5"
    cpu 22
  ]
  node [
    id 6
    label "6"
    cpu 26
  ]
  node [
    id 7
    label "7"
    cpu 22
  ]
  edge [
    source 0
    target 2
    bw 3
  ]
  edge [
    source 0
    target 3
    bw 26
  ]
  edge [
    source 0
    target 4
    bw 15
  ]
  edge [
    source 0
    target 7
    bw 41
  ]
  edge [
    source 1
    target 2
    bw 15
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 6
    bw 25
  ]
  edge [
    source 2
    target 3
    bw 47
  ]
  edge [
    source 2
    target 4
    bw 44
  ]
  edge [
    source 2
    target 6
    bw 15
  ]
  edge [
    source 2
    target 7
    bw 25
  ]
  edge [
    source 3
    target 6
    bw 0
  ]
  edge [
    source 3
    target 7
    bw 36
  ]
  edge [
    source 4
    target 6
    bw 14
  ]
]
