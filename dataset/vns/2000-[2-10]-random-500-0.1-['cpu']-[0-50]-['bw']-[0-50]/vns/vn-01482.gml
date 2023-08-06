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
  id 1482
  arrival_time 14798.0
  lifetime 36.964296932582
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 42
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 27
  ]
  node [
    id 5
    label "5"
    cpu 1
  ]
  node [
    id 6
    label "6"
    cpu 15
  ]
  edge [
    source 0
    target 1
    bw 25
  ]
  edge [
    source 0
    target 3
    bw 25
  ]
  edge [
    source 0
    target 4
    bw 1
  ]
  edge [
    source 0
    target 6
    bw 16
  ]
  edge [
    source 1
    target 2
    bw 32
  ]
  edge [
    source 1
    target 3
    bw 17
  ]
  edge [
    source 1
    target 4
    bw 27
  ]
  edge [
    source 1
    target 6
    bw 20
  ]
  edge [
    source 2
    target 5
    bw 45
  ]
  edge [
    source 4
    target 5
    bw 9
  ]
]
