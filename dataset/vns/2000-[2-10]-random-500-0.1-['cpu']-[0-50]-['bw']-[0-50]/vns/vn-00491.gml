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
  id 491
  arrival_time 4971.0
  lifetime 379.51162034140617
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 47
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 18
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 19
  ]
  edge [
    source 0
    target 1
    bw 43
  ]
  edge [
    source 0
    target 4
    bw 10
  ]
  edge [
    source 2
    target 3
    bw 47
  ]
  edge [
    source 2
    target 4
    bw 6
  ]
  edge [
    source 3
    target 4
    bw 33
  ]
]
