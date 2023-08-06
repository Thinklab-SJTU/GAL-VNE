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
  id 546
  arrival_time 5499.0
  lifetime 218.49863477878864
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 39
  ]
  node [
    id 1
    label "1"
    cpu 41
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  edge [
    source 0
    target 2
    bw 21
  ]
  edge [
    source 0
    target 3
    bw 10
  ]
  edge [
    source 0
    target 4
    bw 13
  ]
  edge [
    source 1
    target 3
    bw 12
  ]
  edge [
    source 1
    target 4
    bw 47
  ]
]
