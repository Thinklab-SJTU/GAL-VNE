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
  id 36
  arrival_time 389.0
  lifetime 113.08392200616285
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 43
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 50
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 0
  ]
  node [
    id 7
    label "7"
    cpu 4
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 3
    bw 23
  ]
  edge [
    source 0
    target 5
    bw 46
  ]
  edge [
    source 1
    target 4
    bw 36
  ]
  edge [
    source 1
    target 7
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 6
  ]
  edge [
    source 2
    target 7
    bw 46
  ]
  edge [
    source 3
    target 4
    bw 2
  ]
  edge [
    source 3
    target 7
    bw 12
  ]
  edge [
    source 4
    target 7
    bw 16
  ]
  edge [
    source 5
    target 6
    bw 47
  ]
]
