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
  id 62
  arrival_time 650.0
  lifetime 240.11008487037822
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 43
  ]
  node [
    id 1
    label "1"
    cpu 8
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 2
  ]
  node [
    id 5
    label "5"
    cpu 35
  ]
  node [
    id 6
    label "6"
    cpu 26
  ]
  node [
    id 7
    label "7"
    cpu 29
  ]
  edge [
    source 0
    target 3
    bw 18
  ]
  edge [
    source 0
    target 4
    bw 43
  ]
  edge [
    source 0
    target 6
    bw 42
  ]
  edge [
    source 0
    target 7
    bw 10
  ]
  edge [
    source 1
    target 3
    bw 41
  ]
  edge [
    source 1
    target 5
    bw 46
  ]
  edge [
    source 1
    target 7
    bw 29
  ]
  edge [
    source 2
    target 3
    bw 23
  ]
  edge [
    source 2
    target 4
    bw 22
  ]
  edge [
    source 2
    target 7
    bw 10
  ]
  edge [
    source 3
    target 4
    bw 7
  ]
  edge [
    source 3
    target 5
    bw 34
  ]
  edge [
    source 3
    target 6
    bw 19
  ]
  edge [
    source 3
    target 7
    bw 18
  ]
  edge [
    source 4
    target 6
    bw 45
  ]
  edge [
    source 5
    target 6
    bw 26
  ]
  edge [
    source 5
    target 7
    bw 15
  ]
  edge [
    source 6
    target 7
    bw 34
  ]
]
