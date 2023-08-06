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
  id 1725
  arrival_time 17223.0
  lifetime 696.0101598079442
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 10
  ]
  node [
    id 1
    label "1"
    cpu 35
  ]
  node [
    id 2
    label "2"
    cpu 42
  ]
  node [
    id 3
    label "3"
    cpu 38
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 0
  ]
  edge [
    source 0
    target 2
    bw 29
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 1
    target 2
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 20
  ]
  edge [
    source 2
    target 4
    bw 49
  ]
  edge [
    source 2
    target 5
    bw 4
  ]
  edge [
    source 3
    target 5
    bw 41
  ]
]
