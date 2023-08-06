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
  id 851
  arrival_time 8465.0
  lifetime 0.11612467871335914
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
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 24
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 27
  ]
  node [
    id 5
    label "5"
    cpu 30
  ]
  node [
    id 6
    label "6"
    cpu 12
  ]
  node [
    id 7
    label "7"
    cpu 39
  ]
  node [
    id 8
    label "8"
    cpu 43
  ]
  node [
    id 9
    label "9"
    cpu 39
  ]
  edge [
    source 0
    target 2
    bw 2
  ]
  edge [
    source 0
    target 7
    bw 34
  ]
  edge [
    source 0
    target 9
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 9
  ]
  edge [
    source 1
    target 8
    bw 17
  ]
  edge [
    source 2
    target 7
    bw 45
  ]
  edge [
    source 2
    target 9
    bw 13
  ]
  edge [
    source 3
    target 5
    bw 4
  ]
  edge [
    source 3
    target 7
    bw 24
  ]
  edge [
    source 3
    target 9
    bw 21
  ]
  edge [
    source 4
    target 6
    bw 38
  ]
  edge [
    source 4
    target 7
    bw 48
  ]
  edge [
    source 4
    target 8
    bw 24
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
  edge [
    source 6
    target 9
    bw 24
  ]
  edge [
    source 8
    target 9
    bw 40
  ]
]
