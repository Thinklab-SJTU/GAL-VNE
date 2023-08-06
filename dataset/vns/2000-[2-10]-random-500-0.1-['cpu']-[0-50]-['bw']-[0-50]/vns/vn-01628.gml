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
  id 1628
  arrival_time 16224.0
  lifetime 528.6982890881346
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 4
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 48
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 41
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 9
  ]
  node [
    id 8
    label "8"
    cpu 4
  ]
  edge [
    source 0
    target 3
    bw 5
  ]
  edge [
    source 0
    target 5
    bw 0
  ]
  edge [
    source 0
    target 7
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 34
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 2
    target 8
    bw 20
  ]
  edge [
    source 3
    target 4
    bw 35
  ]
  edge [
    source 3
    target 5
    bw 48
  ]
  edge [
    source 3
    target 8
    bw 37
  ]
  edge [
    source 4
    target 6
    bw 43
  ]
  edge [
    source 4
    target 7
    bw 29
  ]
  edge [
    source 4
    target 8
    bw 31
  ]
  edge [
    source 5
    target 8
    bw 42
  ]
]
