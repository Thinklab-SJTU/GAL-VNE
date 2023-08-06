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
  id 1135
  arrival_time 11303.0
  lifetime 61.13695725249161
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 43
  ]
  node [
    id 1
    label "1"
    cpu 21
  ]
  node [
    id 2
    label "2"
    cpu 45
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  node [
    id 5
    label "5"
    cpu 14
  ]
  node [
    id 6
    label "6"
    cpu 11
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  edge [
    source 0
    target 1
    bw 29
  ]
  edge [
    source 0
    target 3
    bw 22
  ]
  edge [
    source 0
    target 4
    bw 1
  ]
  edge [
    source 0
    target 5
    bw 1
  ]
  edge [
    source 0
    target 6
    bw 31
  ]
  edge [
    source 0
    target 7
    bw 28
  ]
  edge [
    source 1
    target 2
    bw 28
  ]
  edge [
    source 1
    target 6
    bw 40
  ]
  edge [
    source 1
    target 7
    bw 8
  ]
  edge [
    source 2
    target 5
    bw 2
  ]
  edge [
    source 3
    target 4
    bw 44
  ]
  edge [
    source 4
    target 6
    bw 23
  ]
  edge [
    source 5
    target 7
    bw 7
  ]
  edge [
    source 6
    target 7
    bw 38
  ]
]
