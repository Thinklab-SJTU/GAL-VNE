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
  id 1416
  arrival_time 14142.0
  lifetime 906.3780798209324
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 48
  ]
  node [
    id 1
    label "1"
    cpu 28
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 33
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 49
  ]
  node [
    id 7
    label "7"
    cpu 18
  ]
  edge [
    source 0
    target 1
    bw 44
  ]
  edge [
    source 0
    target 2
    bw 25
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 0
    target 6
    bw 6
  ]
  edge [
    source 0
    target 7
    bw 15
  ]
  edge [
    source 1
    target 3
    bw 6
  ]
  edge [
    source 1
    target 4
    bw 13
  ]
  edge [
    source 1
    target 6
    bw 21
  ]
  edge [
    source 1
    target 7
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 2
    target 5
    bw 34
  ]
  edge [
    source 2
    target 6
    bw 3
  ]
  edge [
    source 3
    target 4
    bw 8
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 3
    target 6
    bw 38
  ]
  edge [
    source 5
    target 6
    bw 33
  ]
  edge [
    source 6
    target 7
    bw 41
  ]
]