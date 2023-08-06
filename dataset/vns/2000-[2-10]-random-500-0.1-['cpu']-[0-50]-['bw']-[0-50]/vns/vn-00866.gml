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
  id 866
  arrival_time 8635.0
  lifetime 342.50010271012565
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 20
  ]
  node [
    id 1
    label "1"
    cpu 45
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 9
  ]
  node [
    id 5
    label "5"
    cpu 10
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  node [
    id 7
    label "7"
    cpu 9
  ]
  edge [
    source 0
    target 1
    bw 23
  ]
  edge [
    source 0
    target 3
    bw 0
  ]
  edge [
    source 0
    target 5
    bw 9
  ]
  edge [
    source 0
    target 6
    bw 31
  ]
  edge [
    source 0
    target 7
    bw 38
  ]
  edge [
    source 1
    target 2
    bw 39
  ]
  edge [
    source 1
    target 4
    bw 0
  ]
  edge [
    source 1
    target 5
    bw 30
  ]
  edge [
    source 1
    target 6
    bw 19
  ]
  edge [
    source 2
    target 4
    bw 14
  ]
  edge [
    source 2
    target 5
    bw 50
  ]
  edge [
    source 2
    target 6
    bw 44
  ]
  edge [
    source 3
    target 4
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 18
  ]
  edge [
    source 4
    target 5
    bw 27
  ]
  edge [
    source 4
    target 7
    bw 47
  ]
  edge [
    source 5
    target 6
    bw 8
  ]
  edge [
    source 5
    target 7
    bw 11
  ]
  edge [
    source 6
    target 7
    bw 4
  ]
]
