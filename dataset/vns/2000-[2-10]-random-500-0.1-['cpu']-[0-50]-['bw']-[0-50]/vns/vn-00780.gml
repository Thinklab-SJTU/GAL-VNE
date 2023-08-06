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
  id 780
  arrival_time 7796.0
  lifetime 87.69328473164252
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 42
  ]
  node [
    id 1
    label "1"
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 34
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 12
  ]
  edge [
    source 0
    target 1
    bw 29
  ]
  edge [
    source 0
    target 3
    bw 29
  ]
  edge [
    source 0
    target 5
    bw 6
  ]
  edge [
    source 1
    target 3
    bw 0
  ]
  edge [
    source 2
    target 4
    bw 38
  ]
  edge [
    source 2
    target 6
    bw 28
  ]
  edge [
    source 3
    target 4
    bw 26
  ]
  edge [
    source 3
    target 6
    bw 48
  ]
]
