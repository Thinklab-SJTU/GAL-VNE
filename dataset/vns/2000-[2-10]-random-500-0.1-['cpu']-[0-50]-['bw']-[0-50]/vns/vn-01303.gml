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
  id 1303
  arrival_time 13033.0
  lifetime 561.0520542156535
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 42
  ]
  node [
    id 3
    label "3"
    cpu 32
  ]
  node [
    id 4
    label "4"
    cpu 41
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 1
    target 2
    bw 44
  ]
  edge [
    source 1
    target 3
    bw 7
  ]
  edge [
    source 1
    target 5
    bw 41
  ]
  edge [
    source 2
    target 3
    bw 29
  ]
  edge [
    source 2
    target 5
    bw 0
  ]
  edge [
    source 3
    target 4
    bw 3
  ]
  edge [
    source 3
    target 5
    bw 23
  ]
]
