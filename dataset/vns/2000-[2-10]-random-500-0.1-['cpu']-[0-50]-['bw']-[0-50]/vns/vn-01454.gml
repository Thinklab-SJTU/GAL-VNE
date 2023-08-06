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
  id 1454
  arrival_time 14487.0
  lifetime 235.258382270299
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 39
  ]
  node [
    id 2
    label "2"
    cpu 16
  ]
  node [
    id 3
    label "3"
    cpu 42
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 15
  ]
  node [
    id 7
    label "7"
    cpu 44
  ]
  node [
    id 8
    label "8"
    cpu 28
  ]
  edge [
    source 0
    target 1
    bw 7
  ]
  edge [
    source 0
    target 3
    bw 20
  ]
  edge [
    source 0
    target 6
    bw 38
  ]
  edge [
    source 0
    target 7
    bw 23
  ]
  edge [
    source 0
    target 8
    bw 30
  ]
  edge [
    source 1
    target 2
    bw 2
  ]
  edge [
    source 1
    target 3
    bw 25
  ]
  edge [
    source 1
    target 4
    bw 9
  ]
  edge [
    source 1
    target 7
    bw 10
  ]
  edge [
    source 1
    target 8
    bw 1
  ]
  edge [
    source 2
    target 4
    bw 3
  ]
  edge [
    source 2
    target 6
    bw 18
  ]
  edge [
    source 2
    target 7
    bw 41
  ]
  edge [
    source 2
    target 8
    bw 6
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 47
  ]
  edge [
    source 4
    target 6
    bw 47
  ]
  edge [
    source 4
    target 7
    bw 43
  ]
  edge [
    source 5
    target 6
    bw 28
  ]
  edge [
    source 5
    target 7
    bw 10
  ]
]