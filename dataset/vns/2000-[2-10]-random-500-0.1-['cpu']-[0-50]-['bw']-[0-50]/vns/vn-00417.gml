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
  id 417
  arrival_time 4197.0
  lifetime 431.41701469890603
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 44
  ]
  node [
    id 1
    label "1"
    cpu 4
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 36
  ]
  node [
    id 6
    label "6"
    cpu 1
  ]
  edge [
    source 0
    target 4
    bw 36
  ]
  edge [
    source 0
    target 5
    bw 49
  ]
  edge [
    source 0
    target 6
    bw 25
  ]
  edge [
    source 1
    target 3
    bw 23
  ]
  edge [
    source 1
    target 5
    bw 0
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 3
    target 4
    bw 2
  ]
  edge [
    source 3
    target 5
    bw 49
  ]
]
