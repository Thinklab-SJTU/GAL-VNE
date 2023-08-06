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
  id 1468
  arrival_time 14658.0
  lifetime 1063.2246543287008
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 21
  ]
  node [
    id 2
    label "2"
    cpu 1
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 6
  ]
  edge [
    source 0
    target 3
    bw 28
  ]
  edge [
    source 1
    target 3
    bw 38
  ]
  edge [
    source 1
    target 4
    bw 4
  ]
  edge [
    source 1
    target 5
    bw 22
  ]
  edge [
    source 2
    target 3
    bw 3
  ]
  edge [
    source 2
    target 4
    bw 0
  ]
  edge [
    source 3
    target 4
    bw 50
  ]
  edge [
    source 3
    target 5
    bw 28
  ]
  edge [
    source 4
    target 5
    bw 49
  ]
]
