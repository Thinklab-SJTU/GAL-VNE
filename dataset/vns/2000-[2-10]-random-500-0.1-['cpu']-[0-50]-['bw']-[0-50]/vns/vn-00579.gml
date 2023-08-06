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
  id 579
  arrival_time 5831.0
  lifetime 550.7539210361145
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
    cpu 6
  ]
  node [
    id 2
    label "2"
    cpu 31
  ]
  node [
    id 3
    label "3"
    cpu 42
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 1
  ]
  node [
    id 6
    label "6"
    cpu 1
  ]
  edge [
    source 0
    target 2
    bw 37
  ]
  edge [
    source 0
    target 3
    bw 25
  ]
  edge [
    source 0
    target 6
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 6
    bw 32
  ]
  edge [
    source 3
    target 5
    bw 6
  ]
  edge [
    source 3
    target 6
    bw 24
  ]
]
