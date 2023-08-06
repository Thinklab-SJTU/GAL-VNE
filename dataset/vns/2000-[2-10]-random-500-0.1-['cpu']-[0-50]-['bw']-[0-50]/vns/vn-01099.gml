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
  id 1099
  arrival_time 10923.0
  lifetime 1510.8667102465552
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 8
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  node [
    id 6
    label "6"
    cpu 4
  ]
  edge [
    source 0
    target 2
    bw 5
  ]
  edge [
    source 0
    target 3
    bw 39
  ]
  edge [
    source 0
    target 5
    bw 19
  ]
  edge [
    source 1
    target 2
    bw 49
  ]
  edge [
    source 1
    target 4
    bw 14
  ]
  edge [
    source 1
    target 6
    bw 33
  ]
  edge [
    source 2
    target 5
    bw 42
  ]
  edge [
    source 3
    target 5
    bw 35
  ]
  edge [
    source 4
    target 6
    bw 26
  ]
]
