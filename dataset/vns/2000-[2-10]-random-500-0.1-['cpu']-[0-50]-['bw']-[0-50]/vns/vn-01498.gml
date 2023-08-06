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
  id 1498
  arrival_time 14973.0
  lifetime 11.80513008413336
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 22
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 10
  ]
  node [
    id 3
    label "3"
    cpu 0
  ]
  node [
    id 4
    label "4"
    cpu 42
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 2
    bw 16
  ]
  edge [
    source 0
    target 3
    bw 29
  ]
  edge [
    source 0
    target 4
    bw 21
  ]
  edge [
    source 1
    target 2
    bw 6
  ]
  edge [
    source 1
    target 3
    bw 22
  ]
  edge [
    source 1
    target 4
    bw 16
  ]
  edge [
    source 2
    target 3
    bw 4
  ]
]
