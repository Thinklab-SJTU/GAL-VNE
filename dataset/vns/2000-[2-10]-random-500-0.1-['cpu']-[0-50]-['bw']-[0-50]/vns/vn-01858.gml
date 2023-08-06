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
  id 1858
  arrival_time 18544.0
  lifetime 150.27860240921166
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 35
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 12
  ]
  node [
    id 6
    label "6"
    cpu 47
  ]
  node [
    id 7
    label "7"
    cpu 36
  ]
  edge [
    source 0
    target 1
    bw 23
  ]
  edge [
    source 0
    target 2
    bw 16
  ]
  edge [
    source 0
    target 4
    bw 43
  ]
  edge [
    source 0
    target 6
    bw 16
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 6
    bw 10
  ]
  edge [
    source 1
    target 7
    bw 14
  ]
  edge [
    source 2
    target 3
    bw 3
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 2
    target 7
    bw 46
  ]
  edge [
    source 3
    target 4
    bw 15
  ]
  edge [
    source 3
    target 7
    bw 12
  ]
  edge [
    source 4
    target 5
    bw 32
  ]
  edge [
    source 4
    target 6
    bw 19
  ]
  edge [
    source 4
    target 7
    bw 18
  ]
  edge [
    source 6
    target 7
    bw 15
  ]
]
