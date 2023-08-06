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
  id 218
  arrival_time 2212.0
  lifetime 849.4066986154445
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 40
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 44
  ]
  node [
    id 6
    label "6"
    cpu 7
  ]
  node [
    id 7
    label "7"
    cpu 40
  ]
  node [
    id 8
    label "8"
    cpu 37
  ]
  edge [
    source 0
    target 1
    bw 9
  ]
  edge [
    source 0
    target 4
    bw 35
  ]
  edge [
    source 0
    target 5
    bw 30
  ]
  edge [
    source 1
    target 2
    bw 11
  ]
  edge [
    source 1
    target 3
    bw 19
  ]
  edge [
    source 1
    target 5
    bw 1
  ]
  edge [
    source 1
    target 6
    bw 20
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 3
    target 5
    bw 15
  ]
  edge [
    source 4
    target 5
    bw 2
  ]
  edge [
    source 5
    target 7
    bw 20
  ]
  edge [
    source 7
    target 8
    bw 37
  ]
]
