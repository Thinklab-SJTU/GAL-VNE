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
  id 393
  arrival_time 3966.0
  lifetime 189.2802444313498
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 11
  ]
  node [
    id 1
    label "1"
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 45
  ]
  node [
    id 5
    label "5"
    cpu 3
  ]
  node [
    id 6
    label "6"
    cpu 46
  ]
  edge [
    source 0
    target 3
    bw 44
  ]
  edge [
    source 0
    target 4
    bw 44
  ]
  edge [
    source 1
    target 3
    bw 45
  ]
  edge [
    source 1
    target 5
    bw 42
  ]
  edge [
    source 1
    target 6
    bw 17
  ]
  edge [
    source 2
    target 3
    bw 36
  ]
  edge [
    source 2
    target 4
    bw 19
  ]
  edge [
    source 2
    target 6
    bw 5
  ]
  edge [
    source 3
    target 4
    bw 4
  ]
  edge [
    source 3
    target 6
    bw 14
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
  edge [
    source 4
    target 6
    bw 34
  ]
]
