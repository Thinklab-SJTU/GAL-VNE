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
  id 1921
  arrival_time 19125.0
  lifetime 135.20088446569764
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 31
  ]
  node [
    id 1
    label "1"
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 49
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 9
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 10
  ]
  edge [
    source 0
    target 3
    bw 29
  ]
  edge [
    source 0
    target 4
    bw 20
  ]
  edge [
    source 0
    target 5
    bw 11
  ]
  edge [
    source 0
    target 6
    bw 12
  ]
  edge [
    source 1
    target 2
    bw 23
  ]
  edge [
    source 1
    target 3
    bw 35
  ]
  edge [
    source 1
    target 4
    bw 26
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 2
    target 5
    bw 12
  ]
  edge [
    source 3
    target 4
    bw 36
  ]
  edge [
    source 3
    target 6
    bw 16
  ]
  edge [
    source 4
    target 5
    bw 14
  ]
  edge [
    source 4
    target 6
    bw 24
  ]
]
