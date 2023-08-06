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
  id 1914
  arrival_time 19057.0
  lifetime 374.307897437745
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 43
  ]
  node [
    id 1
    label "1"
    cpu 4
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 43
  ]
  node [
    id 4
    label "4"
    cpu 7
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  node [
    id 6
    label "6"
    cpu 37
  ]
  edge [
    source 0
    target 4
    bw 2
  ]
  edge [
    source 1
    target 2
    bw 48
  ]
  edge [
    source 1
    target 3
    bw 44
  ]
  edge [
    source 1
    target 5
    bw 3
  ]
  edge [
    source 1
    target 6
    bw 4
  ]
  edge [
    source 2
    target 3
    bw 34
  ]
  edge [
    source 2
    target 4
    bw 38
  ]
  edge [
    source 2
    target 5
    bw 22
  ]
  edge [
    source 2
    target 6
    bw 19
  ]
  edge [
    source 3
    target 4
    bw 34
  ]
  edge [
    source 3
    target 6
    bw 6
  ]
]
