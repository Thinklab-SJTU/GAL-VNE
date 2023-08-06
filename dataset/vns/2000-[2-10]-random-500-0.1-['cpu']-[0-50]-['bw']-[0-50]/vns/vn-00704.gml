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
  id 704
  arrival_time 7070.0
  lifetime 656.902595385921
  num_nodes 8
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
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 46
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 36
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 18
  ]
  node [
    id 7
    label "7"
    cpu 45
  ]
  edge [
    source 0
    target 4
    bw 21
  ]
  edge [
    source 0
    target 5
    bw 32
  ]
  edge [
    source 0
    target 6
    bw 2
  ]
  edge [
    source 0
    target 7
    bw 28
  ]
  edge [
    source 1
    target 4
    bw 34
  ]
  edge [
    source 1
    target 5
    bw 40
  ]
  edge [
    source 1
    target 6
    bw 21
  ]
  edge [
    source 1
    target 7
    bw 47
  ]
  edge [
    source 2
    target 3
    bw 30
  ]
  edge [
    source 3
    target 4
    bw 42
  ]
  edge [
    source 3
    target 5
    bw 36
  ]
  edge [
    source 3
    target 6
    bw 5
  ]
  edge [
    source 3
    target 7
    bw 23
  ]
  edge [
    source 4
    target 5
    bw 23
  ]
  edge [
    source 4
    target 6
    bw 41
  ]
  edge [
    source 4
    target 7
    bw 24
  ]
  edge [
    source 6
    target 7
    bw 48
  ]
]
