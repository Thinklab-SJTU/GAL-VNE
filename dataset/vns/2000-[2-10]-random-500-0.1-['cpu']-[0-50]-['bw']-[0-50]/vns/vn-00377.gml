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
  id 377
  arrival_time 3817.0
  lifetime 82.60367033171003
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 33
  ]
  node [
    id 1
    label "1"
    cpu 24
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 2
  ]
  node [
    id 6
    label "6"
    cpu 47
  ]
  node [
    id 7
    label "7"
    cpu 14
  ]
  node [
    id 8
    label "8"
    cpu 30
  ]
  edge [
    source 0
    target 1
    bw 35
  ]
  edge [
    source 0
    target 2
    bw 28
  ]
  edge [
    source 0
    target 4
    bw 1
  ]
  edge [
    source 0
    target 8
    bw 29
  ]
  edge [
    source 1
    target 2
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 32
  ]
  edge [
    source 1
    target 5
    bw 28
  ]
  edge [
    source 1
    target 8
    bw 22
  ]
  edge [
    source 2
    target 3
    bw 2
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
    source 2
    target 7
    bw 34
  ]
  edge [
    source 2
    target 8
    bw 3
  ]
  edge [
    source 3
    target 8
    bw 3
  ]
  edge [
    source 4
    target 5
    bw 15
  ]
  edge [
    source 4
    target 6
    bw 4
  ]
  edge [
    source 4
    target 8
    bw 31
  ]
  edge [
    source 5
    target 7
    bw 34
  ]
  edge [
    source 5
    target 8
    bw 42
  ]
  edge [
    source 6
    target 8
    bw 35
  ]
]
