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
  id 1107
  arrival_time 11020.0
  lifetime 577.7218066703615
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 20
  ]
  node [
    id 1
    label "1"
    cpu 45
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  edge [
    source 0
    target 1
    bw 28
  ]
  edge [
    source 0
    target 2
    bw 0
  ]
  edge [
    source 0
    target 3
    bw 15
  ]
  edge [
    source 1
    target 2
    bw 37
  ]
  edge [
    source 1
    target 4
    bw 3
  ]
  edge [
    source 2
    target 3
    bw 10
  ]
  edge [
    source 2
    target 4
    bw 48
  ]
]
