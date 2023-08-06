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
  id 348
  arrival_time 3522.0
  lifetime 154.35345061545522
  num_nodes 9
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
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 4
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  node [
    id 7
    label "7"
    cpu 29
  ]
  node [
    id 8
    label "8"
    cpu 36
  ]
  edge [
    source 0
    target 2
    bw 45
  ]
  edge [
    source 0
    target 3
    bw 43
  ]
  edge [
    source 0
    target 4
    bw 37
  ]
  edge [
    source 0
    target 6
    bw 1
  ]
  edge [
    source 0
    target 8
    bw 16
  ]
  edge [
    source 1
    target 3
    bw 45
  ]
  edge [
    source 1
    target 4
    bw 11
  ]
  edge [
    source 2
    target 4
    bw 24
  ]
  edge [
    source 2
    target 5
    bw 15
  ]
  edge [
    source 2
    target 7
    bw 0
  ]
  edge [
    source 3
    target 4
    bw 40
  ]
  edge [
    source 3
    target 6
    bw 9
  ]
  edge [
    source 3
    target 7
    bw 19
  ]
  edge [
    source 3
    target 8
    bw 8
  ]
  edge [
    source 4
    target 8
    bw 46
  ]
  edge [
    source 5
    target 7
    bw 47
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
  edge [
    source 6
    target 8
    bw 4
  ]
]
