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
  id 61
  arrival_time 637.0
  lifetime 491.7785309940754
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 24
  ]
  node [
    id 1
    label "1"
    cpu 21
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 20
  ]
  node [
    id 5
    label "5"
    cpu 26
  ]
  node [
    id 6
    label "6"
    cpu 34
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 7
  ]
  node [
    id 9
    label "9"
    cpu 15
  ]
  edge [
    source 0
    target 1
    bw 17
  ]
  edge [
    source 0
    target 3
    bw 5
  ]
  edge [
    source 0
    target 4
    bw 50
  ]
  edge [
    source 0
    target 7
    bw 16
  ]
  edge [
    source 0
    target 8
    bw 32
  ]
  edge [
    source 1
    target 3
    bw 2
  ]
  edge [
    source 1
    target 6
    bw 25
  ]
  edge [
    source 1
    target 7
    bw 4
  ]
  edge [
    source 1
    target 8
    bw 0
  ]
  edge [
    source 1
    target 9
    bw 44
  ]
  edge [
    source 2
    target 4
    bw 0
  ]
  edge [
    source 2
    target 5
    bw 5
  ]
  edge [
    source 2
    target 7
    bw 21
  ]
  edge [
    source 2
    target 8
    bw 26
  ]
  edge [
    source 2
    target 9
    bw 14
  ]
  edge [
    source 3
    target 7
    bw 16
  ]
  edge [
    source 3
    target 8
    bw 4
  ]
  edge [
    source 4
    target 5
    bw 13
  ]
  edge [
    source 4
    target 7
    bw 28
  ]
  edge [
    source 4
    target 8
    bw 50
  ]
  edge [
    source 5
    target 6
    bw 42
  ]
  edge [
    source 5
    target 7
    bw 22
  ]
  edge [
    source 6
    target 7
    bw 11
  ]
  edge [
    source 6
    target 8
    bw 25
  ]
]
