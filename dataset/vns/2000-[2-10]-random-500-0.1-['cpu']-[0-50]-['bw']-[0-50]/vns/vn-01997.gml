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
  id 1997
  arrival_time 19868.0
  lifetime 70.64762517063657
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 18
  ]
  node [
    id 1
    label "1"
    cpu 14
  ]
  node [
    id 2
    label "2"
    cpu 1
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 38
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 47
  ]
  edge [
    source 0
    target 1
    bw 8
  ]
  edge [
    source 0
    target 2
    bw 31
  ]
  edge [
    source 0
    target 4
    bw 37
  ]
  edge [
    source 1
    target 3
    bw 42
  ]
  edge [
    source 1
    target 4
    bw 28
  ]
  edge [
    source 1
    target 5
    bw 13
  ]
  edge [
    source 2
    target 3
    bw 11
  ]
  edge [
    source 2
    target 4
    bw 19
  ]
  edge [
    source 2
    target 5
    bw 2
  ]
  edge [
    source 2
    target 6
    bw 23
  ]
  edge [
    source 3
    target 4
    bw 44
  ]
  edge [
    source 3
    target 5
    bw 20
  ]
  edge [
    source 3
    target 6
    bw 5
  ]
  edge [
    source 5
    target 6
    bw 11
  ]
]
