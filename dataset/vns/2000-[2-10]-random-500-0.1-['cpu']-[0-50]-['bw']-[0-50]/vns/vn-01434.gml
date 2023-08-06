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
  id 1434
  arrival_time 14311.0
  lifetime 233.6141472579603
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 23
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 46
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 48
  ]
  node [
    id 7
    label "7"
    cpu 13
  ]
  node [
    id 8
    label "8"
    cpu 38
  ]
  edge [
    source 0
    target 5
    bw 36
  ]
  edge [
    source 0
    target 7
    bw 4
  ]
  edge [
    source 1
    target 6
    bw 42
  ]
  edge [
    source 1
    target 7
    bw 24
  ]
  edge [
    source 1
    target 8
    bw 20
  ]
  edge [
    source 2
    target 3
    bw 22
  ]
  edge [
    source 2
    target 5
    bw 13
  ]
  edge [
    source 2
    target 7
    bw 7
  ]
  edge [
    source 2
    target 8
    bw 50
  ]
  edge [
    source 3
    target 6
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 40
  ]
  edge [
    source 4
    target 5
    bw 6
  ]
  edge [
    source 4
    target 6
    bw 15
  ]
  edge [
    source 4
    target 7
    bw 27
  ]
  edge [
    source 4
    target 8
    bw 24
  ]
  edge [
    source 5
    target 6
    bw 46
  ]
  edge [
    source 5
    target 7
    bw 25
  ]
  edge [
    source 6
    target 7
    bw 26
  ]
]
