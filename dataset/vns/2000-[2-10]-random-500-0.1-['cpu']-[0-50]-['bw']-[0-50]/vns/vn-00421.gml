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
  id 421
  arrival_time 4236.0
  lifetime 99.59702004559458
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 15
  ]
  node [
    id 1
    label "1"
    cpu 2
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 5
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 15
  ]
  node [
    id 6
    label "6"
    cpu 4
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  edge [
    source 0
    target 1
    bw 41
  ]
  edge [
    source 0
    target 2
    bw 23
  ]
  edge [
    source 0
    target 5
    bw 10
  ]
  edge [
    source 0
    target 6
    bw 2
  ]
  edge [
    source 0
    target 7
    bw 48
  ]
  edge [
    source 1
    target 2
    bw 3
  ]
  edge [
    source 1
    target 4
    bw 14
  ]
  edge [
    source 1
    target 5
    bw 14
  ]
  edge [
    source 1
    target 7
    bw 29
  ]
  edge [
    source 2
    target 3
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 21
  ]
  edge [
    source 2
    target 5
    bw 28
  ]
  edge [
    source 2
    target 6
    bw 7
  ]
  edge [
    source 3
    target 6
    bw 5
  ]
  edge [
    source 3
    target 7
    bw 44
  ]
  edge [
    source 4
    target 5
    bw 16
  ]
  edge [
    source 4
    target 6
    bw 30
  ]
  edge [
    source 4
    target 7
    bw 28
  ]
]
