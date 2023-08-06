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
  id 1612
  arrival_time 16072.0
  lifetime 347.938442047772
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 45
  ]
  node [
    id 1
    label "1"
    cpu 23
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 19
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 25
  ]
  edge [
    source 0
    target 3
    bw 21
  ]
  edge [
    source 0
    target 4
    bw 13
  ]
  edge [
    source 0
    target 5
    bw 29
  ]
  edge [
    source 0
    target 6
    bw 31
  ]
  edge [
    source 1
    target 2
    bw 15
  ]
  edge [
    source 1
    target 3
    bw 12
  ]
  edge [
    source 1
    target 4
    bw 15
  ]
  edge [
    source 1
    target 5
    bw 44
  ]
  edge [
    source 3
    target 4
    bw 45
  ]
  edge [
    source 3
    target 6
    bw 2
  ]
  edge [
    source 4
    target 6
    bw 41
  ]
]
