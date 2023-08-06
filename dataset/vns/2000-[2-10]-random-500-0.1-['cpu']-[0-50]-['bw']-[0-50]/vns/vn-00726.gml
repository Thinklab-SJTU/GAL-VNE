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
  id 726
  arrival_time 7282.0
  lifetime 542.762729607993
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 19
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 26
  ]
  node [
    id 6
    label "6"
    cpu 2
  ]
  node [
    id 7
    label "7"
    cpu 11
  ]
  node [
    id 8
    label "8"
    cpu 48
  ]
  edge [
    source 0
    target 1
    bw 13
  ]
  edge [
    source 0
    target 3
    bw 20
  ]
  edge [
    source 0
    target 4
    bw 4
  ]
  edge [
    source 0
    target 7
    bw 19
  ]
  edge [
    source 0
    target 8
    bw 3
  ]
  edge [
    source 1
    target 2
    bw 20
  ]
  edge [
    source 1
    target 3
    bw 35
  ]
  edge [
    source 1
    target 5
    bw 23
  ]
  edge [
    source 1
    target 6
    bw 46
  ]
  edge [
    source 1
    target 8
    bw 23
  ]
  edge [
    source 2
    target 3
    bw 34
  ]
  edge [
    source 2
    target 4
    bw 45
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
    source 3
    target 5
    bw 11
  ]
  edge [
    source 3
    target 7
    bw 31
  ]
  edge [
    source 4
    target 6
    bw 36
  ]
  edge [
    source 5
    target 7
    bw 35
  ]
  edge [
    source 5
    target 8
    bw 27
  ]
]
