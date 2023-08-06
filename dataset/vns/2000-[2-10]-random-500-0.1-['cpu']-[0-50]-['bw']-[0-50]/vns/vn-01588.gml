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
  id 1588
  arrival_time 15825.0
  lifetime 355.4956192637588
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
    cpu 30
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 39
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  edge [
    source 0
    target 2
    bw 30
  ]
  edge [
    source 0
    target 4
    bw 47
  ]
  edge [
    source 1
    target 2
    bw 39
  ]
  edge [
    source 1
    target 3
    bw 20
  ]
  edge [
    source 1
    target 5
    bw 10
  ]
  edge [
    source 3
    target 4
    bw 40
  ]
  edge [
    source 3
    target 5
    bw 44
  ]
]
