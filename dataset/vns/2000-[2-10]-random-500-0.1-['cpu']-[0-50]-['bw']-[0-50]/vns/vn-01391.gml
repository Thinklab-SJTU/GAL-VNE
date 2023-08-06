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
  id 1391
  arrival_time 13900.0
  lifetime 303.27407740567236
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 19
  ]
  node [
    id 1
    label "1"
    cpu 34
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 29
  ]
  node [
    id 4
    label "4"
    cpu 45
  ]
  node [
    id 5
    label "5"
    cpu 43
  ]
  edge [
    source 0
    target 2
    bw 16
  ]
  edge [
    source 0
    target 4
    bw 20
  ]
  edge [
    source 0
    target 5
    bw 34
  ]
  edge [
    source 1
    target 2
    bw 31
  ]
  edge [
    source 1
    target 3
    bw 27
  ]
  edge [
    source 1
    target 4
    bw 14
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 2
    target 4
    bw 45
  ]
  edge [
    source 2
    target 5
    bw 4
  ]
  edge [
    source 3
    target 4
    bw 33
  ]
  edge [
    source 3
    target 5
    bw 11
  ]
  edge [
    source 4
    target 5
    bw 48
  ]
]
