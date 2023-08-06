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
  id 1040
  arrival_time 10357.0
  lifetime 525.7573911822795
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 26
  ]
  node [
    id 1
    label "1"
    cpu 34
  ]
  node [
    id 2
    label "2"
    cpu 31
  ]
  node [
    id 3
    label "3"
    cpu 32
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 12
  ]
  edge [
    source 0
    target 4
    bw 44
  ]
  edge [
    source 1
    target 2
    bw 15
  ]
  edge [
    source 1
    target 3
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
]
