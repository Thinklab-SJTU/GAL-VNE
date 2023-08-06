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
  id 478
  arrival_time 4829.0
  lifetime 459.5193252567522
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 22
  ]
  node [
    id 1
    label "1"
    cpu 37
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 8
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 22
  ]
  edge [
    source 0
    target 2
    bw 35
  ]
  edge [
    source 1
    target 2
    bw 15
  ]
  edge [
    source 1
    target 3
    bw 45
  ]
  edge [
    source 1
    target 4
    bw 20
  ]
  edge [
    source 2
    target 3
    bw 5
  ]
  edge [
    source 2
    target 5
    bw 6
  ]
  edge [
    source 3
    target 5
    bw 40
  ]
]
