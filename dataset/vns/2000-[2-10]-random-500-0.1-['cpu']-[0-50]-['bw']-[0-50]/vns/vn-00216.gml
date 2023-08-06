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
  id 216
  arrival_time 2190.0
  lifetime 1583.8998872498116
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 39
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 40
  ]
  edge [
    source 0
    target 4
    bw 3
  ]
  edge [
    source 2
    target 3
    bw 20
  ]
  edge [
    source 2
    target 4
    bw 34
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
]
