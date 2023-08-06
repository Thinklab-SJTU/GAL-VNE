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
  id 15
  arrival_time 174.0
  lifetime 349.2236624237256
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 11
  ]
  node [
    id 4
    label "4"
    cpu 15
  ]
  node [
    id 5
    label "5"
    cpu 48
  ]
  node [
    id 6
    label "6"
    cpu 49
  ]
  node [
    id 7
    label "7"
    cpu 7
  ]
  node [
    id 8
    label "8"
    cpu 30
  ]
  node [
    id 9
    label "9"
    cpu 35
  ]
  edge [
    source 0
    target 1
    bw 27
  ]
  edge [
    source 0
    target 4
    bw 23
  ]
  edge [
    source 0
    target 5
    bw 45
  ]
  edge [
    source 0
    target 8
    bw 47
  ]
  edge [
    source 0
    target 9
    bw 11
  ]
  edge [
    source 1
    target 5
    bw 24
  ]
  edge [
    source 1
    target 7
    bw 12
  ]
  edge [
    source 1
    target 8
    bw 47
  ]
  edge [
    source 2
    target 6
    bw 4
  ]
  edge [
    source 3
    target 6
    bw 46
  ]
  edge [
    source 3
    target 7
    bw 27
  ]
  edge [
    source 3
    target 9
    bw 20
  ]
  edge [
    source 4
    target 7
    bw 7
  ]
  edge [
    source 4
    target 9
    bw 29
  ]
  edge [
    source 5
    target 7
    bw 15
  ]
  edge [
    source 5
    target 8
    bw 34
  ]
  edge [
    source 6
    target 7
    bw 11
  ]
  edge [
    source 6
    target 8
    bw 35
  ]
  edge [
    source 7
    target 8
    bw 21
  ]
  edge [
    source 7
    target 9
    bw 18
  ]
  edge [
    source 8
    target 9
    bw 21
  ]
]
