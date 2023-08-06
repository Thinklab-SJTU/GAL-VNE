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
  id 1133
  arrival_time 11279.0
  lifetime 121.81358867346702
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 6
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 27
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 36
  ]
  node [
    id 7
    label "7"
    cpu 6
  ]
  node [
    id 8
    label "8"
    cpu 11
  ]
  edge [
    source 0
    target 1
    bw 34
  ]
  edge [
    source 0
    target 2
    bw 14
  ]
  edge [
    source 0
    target 3
    bw 40
  ]
  edge [
    source 0
    target 4
    bw 47
  ]
  edge [
    source 0
    target 5
    bw 20
  ]
  edge [
    source 0
    target 6
    bw 29
  ]
  edge [
    source 0
    target 7
    bw 34
  ]
  edge [
    source 1
    target 2
    bw 12
  ]
  edge [
    source 1
    target 4
    bw 24
  ]
  edge [
    source 1
    target 6
    bw 18
  ]
  edge [
    source 1
    target 8
    bw 9
  ]
  edge [
    source 2
    target 3
    bw 7
  ]
  edge [
    source 2
    target 4
    bw 0
  ]
  edge [
    source 2
    target 5
    bw 16
  ]
  edge [
    source 2
    target 8
    bw 50
  ]
  edge [
    source 3
    target 6
    bw 30
  ]
  edge [
    source 3
    target 7
    bw 13
  ]
  edge [
    source 3
    target 8
    bw 18
  ]
  edge [
    source 4
    target 5
    bw 33
  ]
  edge [
    source 4
    target 7
    bw 25
  ]
  edge [
    source 5
    target 6
    bw 21
  ]
  edge [
    source 5
    target 7
    bw 9
  ]
  edge [
    source 5
    target 8
    bw 16
  ]
  edge [
    source 7
    target 8
    bw 25
  ]
]
