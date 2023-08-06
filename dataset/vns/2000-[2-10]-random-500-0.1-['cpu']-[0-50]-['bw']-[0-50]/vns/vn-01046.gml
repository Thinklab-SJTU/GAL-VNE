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
  id 1046
  arrival_time 10414.0
  lifetime 334.0694081890794
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 11
  ]
  node [
    id 1
    label "1"
    cpu 23
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 42
  ]
  node [
    id 5
    label "5"
    cpu 35
  ]
  node [
    id 6
    label "6"
    cpu 32
  ]
  edge [
    source 0
    target 1
    bw 27
  ]
  edge [
    source 0
    target 2
    bw 0
  ]
  edge [
    source 0
    target 4
    bw 30
  ]
  edge [
    source 0
    target 5
    bw 12
  ]
  edge [
    source 0
    target 6
    bw 37
  ]
  edge [
    source 1
    target 3
    bw 13
  ]
  edge [
    source 1
    target 4
    bw 19
  ]
  edge [
    source 1
    target 5
    bw 2
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
]
