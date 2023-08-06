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
  id 536
  arrival_time 5413.0
  lifetime 212.44789570029982
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 5
  ]
  node [
    id 2
    label "2"
    cpu 2
  ]
  node [
    id 3
    label "3"
    cpu 32
  ]
  node [
    id 4
    label "4"
    cpu 43
  ]
  node [
    id 5
    label "5"
    cpu 2
  ]
  node [
    id 6
    label "6"
    cpu 22
  ]
  node [
    id 7
    label "7"
    cpu 25
  ]
  node [
    id 8
    label "8"
    cpu 45
  ]
  edge [
    source 0
    target 1
    bw 33
  ]
  edge [
    source 0
    target 6
    bw 25
  ]
  edge [
    source 0
    target 7
    bw 10
  ]
  edge [
    source 1
    target 3
    bw 43
  ]
  edge [
    source 1
    target 5
    bw 1
  ]
  edge [
    source 1
    target 6
    bw 25
  ]
  edge [
    source 2
    target 3
    bw 44
  ]
  edge [
    source 2
    target 4
    bw 18
  ]
  edge [
    source 3
    target 4
    bw 39
  ]
  edge [
    source 3
    target 5
    bw 47
  ]
  edge [
    source 3
    target 6
    bw 11
  ]
  edge [
    source 3
    target 7
    bw 35
  ]
  edge [
    source 3
    target 8
    bw 38
  ]
  edge [
    source 4
    target 5
    bw 38
  ]
  edge [
    source 4
    target 6
    bw 16
  ]
  edge [
    source 5
    target 6
    bw 26
  ]
  edge [
    source 5
    target 7
    bw 30
  ]
  edge [
    source 5
    target 8
    bw 44
  ]
  edge [
    source 6
    target 7
    bw 24
  ]
  edge [
    source 6
    target 8
    bw 23
  ]
]
