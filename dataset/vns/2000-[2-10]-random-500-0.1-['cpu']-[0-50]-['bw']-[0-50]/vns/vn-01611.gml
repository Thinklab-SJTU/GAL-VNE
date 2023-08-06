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
  id 1611
  arrival_time 16056.0
  lifetime 264.01682161528305
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 16
  ]
  node [
    id 1
    label "1"
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 8
  ]
  node [
    id 6
    label "6"
    cpu 16
  ]
  edge [
    source 0
    target 2
    bw 34
  ]
  edge [
    source 0
    target 4
    bw 49
  ]
  edge [
    source 1
    target 2
    bw 4
  ]
  edge [
    source 1
    target 3
    bw 12
  ]
  edge [
    source 1
    target 6
    bw 13
  ]
  edge [
    source 2
    target 4
    bw 31
  ]
  edge [
    source 2
    target 5
    bw 27
  ]
  edge [
    source 3
    target 5
    bw 15
  ]
  edge [
    source 3
    target 6
    bw 0
  ]
  edge [
    source 4
    target 5
    bw 38
  ]
  edge [
    source 4
    target 6
    bw 13
  ]
  edge [
    source 5
    target 6
    bw 45
  ]
]
