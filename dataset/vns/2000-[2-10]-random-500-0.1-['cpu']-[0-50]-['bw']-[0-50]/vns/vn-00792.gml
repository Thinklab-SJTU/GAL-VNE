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
  id 792
  arrival_time 7902.0
  lifetime 450.81007520627094
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 36
  ]
  node [
    id 1
    label "1"
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 49
  ]
  node [
    id 4
    label "4"
    cpu 17
  ]
  node [
    id 5
    label "5"
    cpu 38
  ]
  edge [
    source 0
    target 1
    bw 20
  ]
  edge [
    source 1
    target 4
    bw 43
  ]
  edge [
    source 1
    target 5
    bw 6
  ]
  edge [
    source 2
    target 3
    bw 48
  ]
  edge [
    source 2
    target 5
    bw 8
  ]
  edge [
    source 3
    target 5
    bw 34
  ]
  edge [
    source 4
    target 5
    bw 45
  ]
]
