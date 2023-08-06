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
  id 786
  arrival_time 7854.0
  lifetime 845.9295574962117
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 22
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  edge [
    source 0
    target 2
    bw 3
  ]
  edge [
    source 0
    target 4
    bw 17
  ]
  edge [
    source 1
    target 3
    bw 18
  ]
  edge [
    source 1
    target 4
    bw 4
  ]
  edge [
    source 2
    target 3
    bw 2
  ]
  edge [
    source 2
    target 4
    bw 13
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
]
