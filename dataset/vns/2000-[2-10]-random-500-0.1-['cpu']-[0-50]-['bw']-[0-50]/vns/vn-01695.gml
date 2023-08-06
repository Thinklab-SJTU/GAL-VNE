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
  id 1695
  arrival_time 16899.0
  lifetime 20.13867932997055
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 44
  ]
  node [
    id 1
    label "1"
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 46
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 15
  ]
  node [
    id 6
    label "6"
    cpu 6
  ]
  node [
    id 7
    label "7"
    cpu 45
  ]
  edge [
    source 0
    target 1
    bw 22
  ]
  edge [
    source 0
    target 6
    bw 0
  ]
  edge [
    source 0
    target 7
    bw 36
  ]
  edge [
    source 1
    target 5
    bw 28
  ]
  edge [
    source 1
    target 7
    bw 8
  ]
  edge [
    source 2
    target 4
    bw 26
  ]
  edge [
    source 2
    target 5
    bw 37
  ]
  edge [
    source 2
    target 6
    bw 49
  ]
  edge [
    source 2
    target 7
    bw 42
  ]
  edge [
    source 3
    target 4
    bw 41
  ]
  edge [
    source 3
    target 5
    bw 44
  ]
  edge [
    source 4
    target 5
    bw 34
  ]
  edge [
    source 4
    target 7
    bw 4
  ]
  edge [
    source 5
    target 6
    bw 48
  ]
  edge [
    source 5
    target 7
    bw 34
  ]
]
