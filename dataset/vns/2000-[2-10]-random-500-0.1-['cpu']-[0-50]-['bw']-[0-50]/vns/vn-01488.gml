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
  id 1488
  arrival_time 14866.0
  lifetime 1708.1023866542432
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 12
  ]
  node [
    id 1
    label "1"
    cpu 50
  ]
  node [
    id 2
    label "2"
    cpu 43
  ]
  node [
    id 3
    label "3"
    cpu 25
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 43
  ]
  node [
    id 6
    label "6"
    cpu 14
  ]
  node [
    id 7
    label "7"
    cpu 15
  ]
  node [
    id 8
    label "8"
    cpu 47
  ]
  node [
    id 9
    label "9"
    cpu 33
  ]
  edge [
    source 0
    target 1
    bw 11
  ]
  edge [
    source 0
    target 2
    bw 38
  ]
  edge [
    source 0
    target 3
    bw 26
  ]
  edge [
    source 1
    target 2
    bw 22
  ]
  edge [
    source 1
    target 6
    bw 30
  ]
  edge [
    source 1
    target 7
    bw 31
  ]
  edge [
    source 2
    target 7
    bw 24
  ]
  edge [
    source 2
    target 8
    bw 50
  ]
  edge [
    source 3
    target 5
    bw 4
  ]
  edge [
    source 3
    target 6
    bw 33
  ]
  edge [
    source 3
    target 7
    bw 27
  ]
  edge [
    source 3
    target 8
    bw 41
  ]
  edge [
    source 3
    target 9
    bw 2
  ]
  edge [
    source 4
    target 5
    bw 35
  ]
  edge [
    source 4
    target 7
    bw 6
  ]
  edge [
    source 4
    target 9
    bw 28
  ]
  edge [
    source 5
    target 8
    bw 40
  ]
  edge [
    source 5
    target 9
    bw 21
  ]
  edge [
    source 6
    target 7
    bw 3
  ]
  edge [
    source 6
    target 9
    bw 31
  ]
  edge [
    source 7
    target 8
    bw 48
  ]
]
