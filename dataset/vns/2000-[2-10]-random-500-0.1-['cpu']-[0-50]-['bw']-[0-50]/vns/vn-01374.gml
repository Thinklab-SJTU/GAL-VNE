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
  id 1374
  arrival_time 13741.0
  lifetime 217.69591324013308
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 42
  ]
  node [
    id 1
    label "1"
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 8
  ]
  node [
    id 7
    label "7"
    cpu 16
  ]
  node [
    id 8
    label "8"
    cpu 30
  ]
  node [
    id 9
    label "9"
    cpu 44
  ]
  edge [
    source 0
    target 6
    bw 12
  ]
  edge [
    source 0
    target 9
    bw 7
  ]
  edge [
    source 1
    target 4
    bw 23
  ]
  edge [
    source 1
    target 5
    bw 24
  ]
  edge [
    source 1
    target 6
    bw 41
  ]
  edge [
    source 1
    target 7
    bw 10
  ]
  edge [
    source 1
    target 9
    bw 16
  ]
  edge [
    source 2
    target 5
    bw 1
  ]
  edge [
    source 2
    target 7
    bw 29
  ]
  edge [
    source 2
    target 8
    bw 29
  ]
  edge [
    source 2
    target 9
    bw 1
  ]
  edge [
    source 3
    target 4
    bw 14
  ]
  edge [
    source 3
    target 7
    bw 12
  ]
  edge [
    source 3
    target 8
    bw 34
  ]
  edge [
    source 3
    target 9
    bw 38
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
  edge [
    source 4
    target 7
    bw 5
  ]
  edge [
    source 5
    target 6
    bw 45
  ]
  edge [
    source 6
    target 7
    bw 36
  ]
  edge [
    source 6
    target 8
    bw 31
  ]
  edge [
    source 6
    target 9
    bw 43
  ]
  edge [
    source 7
    target 8
    bw 23
  ]
  edge [
    source 8
    target 9
    bw 44
  ]
]
