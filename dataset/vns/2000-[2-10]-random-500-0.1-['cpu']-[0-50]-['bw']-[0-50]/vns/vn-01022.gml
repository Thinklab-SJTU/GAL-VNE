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
  id 1022
  arrival_time 10190.0
  lifetime 332.7445747823556
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 45
  ]
  node [
    id 1
    label "1"
    cpu 37
  ]
  node [
    id 2
    label "2"
    cpu 14
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 36
  ]
  node [
    id 7
    label "7"
    cpu 43
  ]
  edge [
    source 0
    target 2
    bw 40
  ]
  edge [
    source 0
    target 3
    bw 13
  ]
  edge [
    source 0
    target 4
    bw 44
  ]
  edge [
    source 0
    target 7
    bw 29
  ]
  edge [
    source 1
    target 2
    bw 33
  ]
  edge [
    source 1
    target 3
    bw 34
  ]
  edge [
    source 2
    target 3
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 3
    target 4
    bw 24
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 3
    target 7
    bw 13
  ]
  edge [
    source 4
    target 5
    bw 47
  ]
  edge [
    source 5
    target 6
    bw 1
  ]
]
