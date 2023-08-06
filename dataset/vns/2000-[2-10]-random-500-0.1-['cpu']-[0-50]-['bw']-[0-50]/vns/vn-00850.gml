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
  id 850
  arrival_time 8455.0
  lifetime 943.3055330765901
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 26
  ]
  node [
    id 1
    label "1"
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 13
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 37
  ]
  node [
    id 7
    label "7"
    cpu 40
  ]
  edge [
    source 0
    target 3
    bw 26
  ]
  edge [
    source 0
    target 4
    bw 44
  ]
  edge [
    source 0
    target 5
    bw 34
  ]
  edge [
    source 0
    target 6
    bw 11
  ]
  edge [
    source 1
    target 3
    bw 36
  ]
  edge [
    source 1
    target 4
    bw 49
  ]
  edge [
    source 1
    target 5
    bw 17
  ]
  edge [
    source 1
    target 7
    bw 28
  ]
  edge [
    source 2
    target 5
    bw 45
  ]
  edge [
    source 2
    target 6
    bw 4
  ]
  edge [
    source 3
    target 7
    bw 28
  ]
  edge [
    source 4
    target 6
    bw 34
  ]
  edge [
    source 5
    target 6
    bw 49
  ]
  edge [
    source 5
    target 7
    bw 36
  ]
]
