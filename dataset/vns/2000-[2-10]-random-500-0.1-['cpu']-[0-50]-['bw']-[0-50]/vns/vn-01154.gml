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
  id 1154
  arrival_time 11494.0
  lifetime 157.38400702113356
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 31
  ]
  node [
    id 1
    label "1"
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 18
  ]
  node [
    id 3
    label "3"
    cpu 0
  ]
  node [
    id 4
    label "4"
    cpu 19
  ]
  node [
    id 5
    label "5"
    cpu 31
  ]
  edge [
    source 0
    target 1
    bw 5
  ]
  edge [
    source 0
    target 2
    bw 46
  ]
  edge [
    source 0
    target 5
    bw 33
  ]
  edge [
    source 1
    target 3
    bw 3
  ]
  edge [
    source 1
    target 5
    bw 22
  ]
  edge [
    source 2
    target 3
    bw 12
  ]
  edge [
    source 2
    target 5
    bw 39
  ]
  edge [
    source 3
    target 4
    bw 25
  ]
]
