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
  id 297
  arrival_time 3007.0
  lifetime 763.9025809596293
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 39
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 28
  ]
  node [
    id 5
    label "5"
    cpu 9
  ]
  node [
    id 6
    label "6"
    cpu 33
  ]
  node [
    id 7
    label "7"
    cpu 48
  ]
  node [
    id 8
    label "8"
    cpu 12
  ]
  edge [
    source 0
    target 5
    bw 10
  ]
  edge [
    source 1
    target 2
    bw 42
  ]
  edge [
    source 1
    target 5
    bw 17
  ]
  edge [
    source 1
    target 6
    bw 15
  ]
  edge [
    source 1
    target 7
    bw 24
  ]
  edge [
    source 1
    target 8
    bw 39
  ]
  edge [
    source 2
    target 3
    bw 0
  ]
  edge [
    source 2
    target 5
    bw 1
  ]
  edge [
    source 2
    target 8
    bw 39
  ]
  edge [
    source 3
    target 8
    bw 50
  ]
  edge [
    source 4
    target 6
    bw 11
  ]
  edge [
    source 4
    target 8
    bw 7
  ]
  edge [
    source 6
    target 8
    bw 37
  ]
]
