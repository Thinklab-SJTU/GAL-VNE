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
  id 1021
  arrival_time 10184.0
  lifetime 569.0530262908879
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 6
  ]
  node [
    id 1
    label "1"
    cpu 27
  ]
  node [
    id 2
    label "2"
    cpu 4
  ]
  node [
    id 3
    label "3"
    cpu 29
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 13
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 21
  ]
  node [
    id 8
    label "8"
    cpu 3
  ]
  node [
    id 9
    label "9"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 13
  ]
  edge [
    source 0
    target 3
    bw 27
  ]
  edge [
    source 0
    target 5
    bw 11
  ]
  edge [
    source 0
    target 6
    bw 34
  ]
  edge [
    source 0
    target 8
    bw 19
  ]
  edge [
    source 1
    target 3
    bw 7
  ]
  edge [
    source 1
    target 4
    bw 30
  ]
  edge [
    source 1
    target 5
    bw 46
  ]
  edge [
    source 1
    target 6
    bw 20
  ]
  edge [
    source 1
    target 7
    bw 46
  ]
  edge [
    source 1
    target 8
    bw 19
  ]
  edge [
    source 2
    target 3
    bw 15
  ]
  edge [
    source 2
    target 4
    bw 24
  ]
  edge [
    source 2
    target 5
    bw 34
  ]
  edge [
    source 2
    target 6
    bw 33
  ]
  edge [
    source 3
    target 4
    bw 12
  ]
  edge [
    source 3
    target 8
    bw 40
  ]
  edge [
    source 3
    target 9
    bw 29
  ]
  edge [
    source 4
    target 5
    bw 5
  ]
  edge [
    source 6
    target 8
    bw 38
  ]
  edge [
    source 6
    target 9
    bw 49
  ]
  edge [
    source 7
    target 8
    bw 46
  ]
]
