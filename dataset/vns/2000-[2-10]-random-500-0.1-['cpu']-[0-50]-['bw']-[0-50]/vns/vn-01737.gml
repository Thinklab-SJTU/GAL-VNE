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
  id 1737
  arrival_time 17355.0
  lifetime 615.2472617618508
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 15
  ]
  node [
    id 1
    label "1"
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 2
  ]
  edge [
    source 0
    target 1
    bw 38
  ]
  edge [
    source 0
    target 2
    bw 31
  ]
  edge [
    source 0
    target 3
    bw 22
  ]
  edge [
    source 0
    target 4
    bw 36
  ]
  edge [
    source 0
    target 6
    bw 24
  ]
  edge [
    source 1
    target 3
    bw 47
  ]
  edge [
    source 1
    target 4
    bw 41
  ]
  edge [
    source 1
    target 5
    bw 23
  ]
  edge [
    source 2
    target 4
    bw 17
  ]
  edge [
    source 2
    target 5
    bw 18
  ]
  edge [
    source 3
    target 4
    bw 28
  ]
  edge [
    source 3
    target 5
    bw 32
  ]
  edge [
    source 4
    target 5
    bw 22
  ]
  edge [
    source 4
    target 6
    bw 38
  ]
]
