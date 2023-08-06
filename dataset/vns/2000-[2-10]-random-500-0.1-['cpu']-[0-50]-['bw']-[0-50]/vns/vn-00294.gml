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
  id 294
  arrival_time 2971.0
  lifetime 241.14821484888577
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 1
  ]
  node [
    id 1
    label "1"
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 24
  ]
  node [
    id 3
    label "3"
    cpu 12
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 28
  ]
  node [
    id 6
    label "6"
    cpu 24
  ]
  edge [
    source 0
    target 2
    bw 13
  ]
  edge [
    source 0
    target 5
    bw 4
  ]
  edge [
    source 0
    target 6
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 44
  ]
  edge [
    source 2
    target 3
    bw 2
  ]
  edge [
    source 2
    target 6
    bw 12
  ]
  edge [
    source 3
    target 4
    bw 27
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 4
    target 5
    bw 45
  ]
  edge [
    source 5
    target 6
    bw 48
  ]
]
