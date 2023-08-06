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
  id 1649
  arrival_time 16444.0
  lifetime 25.971678256633126
  num_nodes 7
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
    cpu 27
  ]
  node [
    id 2
    label "2"
    cpu 25
  ]
  node [
    id 3
    label "3"
    cpu 37
  ]
  node [
    id 4
    label "4"
    cpu 43
  ]
  node [
    id 5
    label "5"
    cpu 39
  ]
  node [
    id 6
    label "6"
    cpu 46
  ]
  edge [
    source 0
    target 1
    bw 4
  ]
  edge [
    source 0
    target 3
    bw 8
  ]
  edge [
    source 0
    target 6
    bw 23
  ]
  edge [
    source 1
    target 3
    bw 29
  ]
  edge [
    source 1
    target 4
    bw 22
  ]
  edge [
    source 1
    target 5
    bw 10
  ]
  edge [
    source 1
    target 6
    bw 31
  ]
  edge [
    source 2
    target 5
    bw 47
  ]
  edge [
    source 3
    target 4
    bw 39
  ]
  edge [
    source 3
    target 5
    bw 9
  ]
  edge [
    source 4
    target 6
    bw 32
  ]
  edge [
    source 5
    target 6
    bw 45
  ]
]
