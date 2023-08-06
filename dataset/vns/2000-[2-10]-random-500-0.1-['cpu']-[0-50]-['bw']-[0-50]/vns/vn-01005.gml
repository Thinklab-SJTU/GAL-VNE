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
  id 1005
  arrival_time 10012.0
  lifetime 175.04585440897534
  num_nodes 9
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
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 7
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 20
  ]
  node [
    id 7
    label "7"
    cpu 20
  ]
  node [
    id 8
    label "8"
    cpu 38
  ]
  edge [
    source 0
    target 3
    bw 31
  ]
  edge [
    source 0
    target 6
    bw 19
  ]
  edge [
    source 0
    target 7
    bw 21
  ]
  edge [
    source 1
    target 2
    bw 25
  ]
  edge [
    source 1
    target 3
    bw 34
  ]
  edge [
    source 1
    target 5
    bw 5
  ]
  edge [
    source 2
    target 5
    bw 25
  ]
  edge [
    source 2
    target 7
    bw 44
  ]
  edge [
    source 2
    target 8
    bw 28
  ]
  edge [
    source 3
    target 5
    bw 43
  ]
  edge [
    source 3
    target 7
    bw 28
  ]
  edge [
    source 3
    target 8
    bw 19
  ]
  edge [
    source 4
    target 6
    bw 5
  ]
  edge [
    source 4
    target 8
    bw 38
  ]
  edge [
    source 6
    target 7
    bw 42
  ]
]
