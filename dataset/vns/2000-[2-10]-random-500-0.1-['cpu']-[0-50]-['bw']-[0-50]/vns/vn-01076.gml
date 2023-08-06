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
  id 1076
  arrival_time 10704.0
  lifetime 446.1225637805146
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 2
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 23
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 47
  ]
  node [
    id 7
    label "7"
    cpu 12
  ]
  node [
    id 8
    label "8"
    cpu 17
  ]
  node [
    id 9
    label "9"
    cpu 39
  ]
  edge [
    source 0
    target 7
    bw 48
  ]
  edge [
    source 0
    target 8
    bw 47
  ]
  edge [
    source 1
    target 2
    bw 0
  ]
  edge [
    source 1
    target 3
    bw 20
  ]
  edge [
    source 1
    target 4
    bw 22
  ]
  edge [
    source 2
    target 3
    bw 26
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
  edge [
    source 2
    target 5
    bw 39
  ]
  edge [
    source 2
    target 6
    bw 19
  ]
  edge [
    source 2
    target 7
    bw 11
  ]
  edge [
    source 2
    target 9
    bw 49
  ]
  edge [
    source 3
    target 5
    bw 40
  ]
  edge [
    source 3
    target 6
    bw 31
  ]
  edge [
    source 3
    target 9
    bw 8
  ]
  edge [
    source 4
    target 6
    bw 21
  ]
  edge [
    source 4
    target 8
    bw 50
  ]
  edge [
    source 5
    target 7
    bw 20
  ]
  edge [
    source 5
    target 8
    bw 50
  ]
  edge [
    source 6
    target 7
    bw 24
  ]
  edge [
    source 7
    target 8
    bw 22
  ]
  edge [
    source 7
    target 9
    bw 12
  ]
  edge [
    source 8
    target 9
    bw 46
  ]
]
