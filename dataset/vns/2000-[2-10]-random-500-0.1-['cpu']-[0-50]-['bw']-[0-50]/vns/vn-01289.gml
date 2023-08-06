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
  id 1289
  arrival_time 12878.0
  lifetime 157.80764426931557
  num_nodes 6
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
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 25
  ]
  node [
    id 4
    label "4"
    cpu 37
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  edge [
    source 0
    target 1
    bw 40
  ]
  edge [
    source 0
    target 2
    bw 25
  ]
  edge [
    source 0
    target 3
    bw 3
  ]
  edge [
    source 0
    target 4
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 17
  ]
  edge [
    source 1
    target 4
    bw 41
  ]
  edge [
    source 2
    target 3
    bw 7
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 3
    target 5
    bw 45
  ]
  edge [
    source 4
    target 5
    bw 22
  ]
]
