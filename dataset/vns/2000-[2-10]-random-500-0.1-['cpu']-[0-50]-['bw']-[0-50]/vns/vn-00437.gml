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
  id 437
  arrival_time 4404.0
  lifetime 739.7691152362185
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 23
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
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 26
  ]
  edge [
    source 0
    target 1
    bw 12
  ]
  edge [
    source 0
    target 4
    bw 5
  ]
  edge [
    source 1
    target 3
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 40
  ]
  edge [
    source 2
    target 3
    bw 36
  ]
  edge [
    source 2
    target 4
    bw 17
  ]
  edge [
    source 3
    target 5
    bw 36
  ]
]
