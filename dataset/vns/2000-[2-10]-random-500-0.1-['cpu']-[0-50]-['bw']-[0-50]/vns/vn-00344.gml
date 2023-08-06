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
  id 344
  arrival_time 3475.0
  lifetime 1078.1266713561308
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 50
  ]
  node [
    id 1
    label "1"
    cpu 35
  ]
  node [
    id 2
    label "2"
    cpu 8
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  node [
    id 6
    label "6"
    cpu 11
  ]
  node [
    id 7
    label "7"
    cpu 13
  ]
  node [
    id 8
    label "8"
    cpu 32
  ]
  node [
    id 9
    label "9"
    cpu 45
  ]
  edge [
    source 0
    target 1
    bw 12
  ]
  edge [
    source 0
    target 3
    bw 14
  ]
  edge [
    source 0
    target 4
    bw 49
  ]
  edge [
    source 0
    target 5
    bw 16
  ]
  edge [
    source 0
    target 6
    bw 4
  ]
  edge [
    source 0
    target 7
    bw 7
  ]
  edge [
    source 1
    target 7
    bw 33
  ]
  edge [
    source 2
    target 3
    bw 2
  ]
  edge [
    source 2
    target 4
    bw 0
  ]
  edge [
    source 2
    target 5
    bw 18
  ]
  edge [
    source 2
    target 9
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 15
  ]
  edge [
    source 3
    target 5
    bw 48
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
  edge [
    source 3
    target 9
    bw 23
  ]
  edge [
    source 4
    target 8
    bw 37
  ]
  edge [
    source 5
    target 6
    bw 10
  ]
  edge [
    source 5
    target 8
    bw 12
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
  edge [
    source 6
    target 9
    bw 29
  ]
  edge [
    source 7
    target 9
    bw 21
  ]
  edge [
    source 8
    target 9
    bw 41
  ]
]
