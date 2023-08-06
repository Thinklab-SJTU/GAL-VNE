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
  id 1087
  arrival_time 10822.0
  lifetime 297.8185676270282
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 10
  ]
  node [
    id 2
    label "2"
    cpu 30
  ]
  node [
    id 3
    label "3"
    cpu 10
  ]
  node [
    id 4
    label "4"
    cpu 7
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  node [
    id 6
    label "6"
    cpu 46
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  node [
    id 8
    label "8"
    cpu 42
  ]
  edge [
    source 0
    target 2
    bw 13
  ]
  edge [
    source 0
    target 5
    bw 31
  ]
  edge [
    source 0
    target 6
    bw 16
  ]
  edge [
    source 0
    target 8
    bw 26
  ]
  edge [
    source 1
    target 2
    bw 43
  ]
  edge [
    source 1
    target 3
    bw 30
  ]
  edge [
    source 1
    target 6
    bw 9
  ]
  edge [
    source 1
    target 7
    bw 5
  ]
  edge [
    source 1
    target 8
    bw 20
  ]
  edge [
    source 2
    target 3
    bw 26
  ]
  edge [
    source 2
    target 6
    bw 17
  ]
  edge [
    source 2
    target 8
    bw 45
  ]
  edge [
    source 3
    target 4
    bw 0
  ]
  edge [
    source 3
    target 5
    bw 18
  ]
  edge [
    source 3
    target 6
    bw 4
  ]
  edge [
    source 4
    target 5
    bw 18
  ]
  edge [
    source 4
    target 7
    bw 30
  ]
  edge [
    source 5
    target 6
    bw 15
  ]
  edge [
    source 6
    target 7
    bw 42
  ]
  edge [
    source 6
    target 8
    bw 39
  ]
]
