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
  id 825
  arrival_time 8205.0
  lifetime 119.29252866372522
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 41
  ]
  node [
    id 1
    label "1"
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 11
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 12
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  edge [
    source 0
    target 3
    bw 15
  ]
  edge [
    source 0
    target 5
    bw 0
  ]
  edge [
    source 0
    target 6
    bw 47
  ]
  edge [
    source 1
    target 4
    bw 11
  ]
  edge [
    source 1
    target 5
    bw 29
  ]
  edge [
    source 1
    target 6
    bw 33
  ]
  edge [
    source 1
    target 7
    bw 28
  ]
  edge [
    source 2
    target 5
    bw 15
  ]
  edge [
    source 2
    target 7
    bw 13
  ]
  edge [
    source 3
    target 4
    bw 47
  ]
  edge [
    source 3
    target 6
    bw 24
  ]
  edge [
    source 4
    target 6
    bw 46
  ]
  edge [
    source 5
    target 6
    bw 22
  ]
  edge [
    source 5
    target 7
    bw 34
  ]
  edge [
    source 6
    target 7
    bw 27
  ]
]
