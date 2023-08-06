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
  id 3
  arrival_time 56.0
  lifetime 64.47550422060604
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 37
  ]
  node [
    id 1
    label "1"
    cpu 2
  ]
  node [
    id 2
    label "2"
    cpu 15
  ]
  node [
    id 3
    label "3"
    cpu 8
  ]
  node [
    id 4
    label "4"
    cpu 36
  ]
  node [
    id 5
    label "5"
    cpu 48
  ]
  node [
    id 6
    label "6"
    cpu 8
  ]
  edge [
    source 0
    target 2
    bw 21
  ]
  edge [
    source 0
    target 4
    bw 38
  ]
  edge [
    source 0
    target 5
    bw 5
  ]
  edge [
    source 1
    target 4
    bw 7
  ]
  edge [
    source 1
    target 5
    bw 21
  ]
  edge [
    source 1
    target 6
    bw 15
  ]
  edge [
    source 2
    target 4
    bw 48
  ]
  edge [
    source 2
    target 5
    bw 44
  ]
  edge [
    source 2
    target 6
    bw 18
  ]
  edge [
    source 3
    target 4
    bw 32
  ]
  edge [
    source 3
    target 6
    bw 50
  ]
  edge [
    source 4
    target 6
    bw 22
  ]
]
