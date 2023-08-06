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
  id 586
  arrival_time 5902.0
  lifetime 144.80741666017093
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 18
  ]
  node [
    id 1
    label "1"
    cpu 29
  ]
  node [
    id 2
    label "2"
    cpu 4
  ]
  node [
    id 3
    label "3"
    cpu 48
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
    cpu 25
  ]
  node [
    id 7
    label "7"
    cpu 42
  ]
  node [
    id 8
    label "8"
    cpu 23
  ]
  edge [
    source 0
    target 1
    bw 42
  ]
  edge [
    source 0
    target 2
    bw 27
  ]
  edge [
    source 0
    target 3
    bw 32
  ]
  edge [
    source 0
    target 7
    bw 3
  ]
  edge [
    source 0
    target 8
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 1
    target 7
    bw 20
  ]
  edge [
    source 1
    target 8
    bw 37
  ]
  edge [
    source 2
    target 3
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 2
  ]
  edge [
    source 2
    target 6
    bw 26
  ]
  edge [
    source 2
    target 8
    bw 12
  ]
  edge [
    source 3
    target 4
    bw 5
  ]
  edge [
    source 3
    target 5
    bw 3
  ]
  edge [
    source 3
    target 7
    bw 50
  ]
  edge [
    source 4
    target 5
    bw 20
  ]
  edge [
    source 6
    target 7
    bw 6
  ]
  edge [
    source 6
    target 8
    bw 47
  ]
  edge [
    source 7
    target 8
    bw 24
  ]
]