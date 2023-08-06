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
  id 55
  arrival_time 584.0
  lifetime 171.69903876607972
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 30
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  edge [
    source 0
    target 2
    bw 36
  ]
  edge [
    source 0
    target 3
    bw 41
  ]
  edge [
    source 0
    target 4
    bw 10
  ]
  edge [
    source 1
    target 2
    bw 24
  ]
  edge [
    source 1
    target 3
    bw 28
  ]
  edge [
    source 1
    target 4
    bw 50
  ]
  edge [
    source 2
    target 4
    bw 6
  ]
  edge [
    source 3
    target 4
    bw 30
  ]
]
