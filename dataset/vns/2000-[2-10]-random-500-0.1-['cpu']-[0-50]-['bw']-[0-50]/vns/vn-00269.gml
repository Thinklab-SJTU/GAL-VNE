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
  id 269
  arrival_time 2697.0
  lifetime 28.531876845039392
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 27
  ]
  node [
    id 1
    label "1"
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 5
  ]
  edge [
    source 0
    target 3
    bw 47
  ]
  edge [
    source 0
    target 4
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 30
  ]
  edge [
    source 1
    target 3
    bw 45
  ]
  edge [
    source 1
    target 4
    bw 28
  ]
  edge [
    source 1
    target 6
    bw 35
  ]
  edge [
    source 2
    target 4
    bw 47
  ]
  edge [
    source 2
    target 6
    bw 38
  ]
  edge [
    source 4
    target 5
    bw 18
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
  edge [
    source 5
    target 6
    bw 16
  ]
]
