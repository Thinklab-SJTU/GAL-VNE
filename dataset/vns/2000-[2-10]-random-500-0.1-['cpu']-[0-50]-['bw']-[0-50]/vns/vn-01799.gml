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
  id 1799
  arrival_time 17968.0
  lifetime 1520.636117215043
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 13
  ]
  node [
    id 1
    label "1"
    cpu 27
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 3
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 14
  ]
  node [
    id 6
    label "6"
    cpu 15
  ]
  node [
    id 7
    label "7"
    cpu 36
  ]
  edge [
    source 0
    target 4
    bw 32
  ]
  edge [
    source 0
    target 6
    bw 8
  ]
  edge [
    source 1
    target 2
    bw 31
  ]
  edge [
    source 1
    target 5
    bw 19
  ]
  edge [
    source 1
    target 6
    bw 17
  ]
  edge [
    source 2
    target 3
    bw 25
  ]
  edge [
    source 2
    target 4
    bw 34
  ]
  edge [
    source 2
    target 5
    bw 12
  ]
  edge [
    source 2
    target 7
    bw 23
  ]
  edge [
    source 3
    target 7
    bw 23
  ]
  edge [
    source 4
    target 6
    bw 7
  ]
  edge [
    source 4
    target 7
    bw 8
  ]
  edge [
    source 5
    target 7
    bw 45
  ]
  edge [
    source 6
    target 7
    bw 13
  ]
]
