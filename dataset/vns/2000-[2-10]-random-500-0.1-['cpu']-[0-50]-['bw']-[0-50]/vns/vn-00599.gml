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
  id 599
  arrival_time 6043.0
  lifetime 525.8682790994701
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 36
  ]
  node [
    id 1
    label "1"
    cpu 14
  ]
  node [
    id 2
    label "2"
    cpu 10
  ]
  node [
    id 3
    label "3"
    cpu 16
  ]
  node [
    id 4
    label "4"
    cpu 42
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  node [
    id 6
    label "6"
    cpu 22
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  node [
    id 8
    label "8"
    cpu 28
  ]
  node [
    id 9
    label "9"
    cpu 48
  ]
  edge [
    source 0
    target 2
    bw 4
  ]
  edge [
    source 0
    target 3
    bw 31
  ]
  edge [
    source 0
    target 4
    bw 10
  ]
  edge [
    source 0
    target 7
    bw 41
  ]
  edge [
    source 0
    target 8
    bw 25
  ]
  edge [
    source 1
    target 2
    bw 36
  ]
  edge [
    source 1
    target 3
    bw 44
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 1
    target 6
    bw 47
  ]
  edge [
    source 1
    target 8
    bw 17
  ]
  edge [
    source 1
    target 9
    bw 27
  ]
  edge [
    source 2
    target 3
    bw 50
  ]
  edge [
    source 2
    target 7
    bw 22
  ]
  edge [
    source 2
    target 8
    bw 37
  ]
  edge [
    source 2
    target 9
    bw 48
  ]
  edge [
    source 3
    target 6
    bw 48
  ]
  edge [
    source 3
    target 7
    bw 40
  ]
  edge [
    source 3
    target 8
    bw 47
  ]
  edge [
    source 3
    target 9
    bw 25
  ]
  edge [
    source 4
    target 9
    bw 23
  ]
  edge [
    source 6
    target 7
    bw 20
  ]
  edge [
    source 6
    target 9
    bw 13
  ]
  edge [
    source 7
    target 8
    bw 35
  ]
  edge [
    source 7
    target 9
    bw 32
  ]
]
