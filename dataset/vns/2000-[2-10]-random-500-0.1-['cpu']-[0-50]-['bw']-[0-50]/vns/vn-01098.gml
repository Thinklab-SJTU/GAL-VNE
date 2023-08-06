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
  id 1098
  arrival_time 10921.0
  lifetime 187.36519494313282
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 5
  ]
  node [
    id 2
    label "2"
    cpu 8
  ]
  node [
    id 3
    label "3"
    cpu 37
  ]
  node [
    id 4
    label "4"
    cpu 48
  ]
  node [
    id 5
    label "5"
    cpu 3
  ]
  node [
    id 6
    label "6"
    cpu 29
  ]
  edge [
    source 0
    target 2
    bw 10
  ]
  edge [
    source 0
    target 3
    bw 6
  ]
  edge [
    source 0
    target 5
    bw 24
  ]
  edge [
    source 0
    target 6
    bw 3
  ]
  edge [
    source 1
    target 4
    bw 17
  ]
  edge [
    source 1
    target 6
    bw 26
  ]
  edge [
    source 2
    target 3
    bw 7
  ]
  edge [
    source 2
    target 4
    bw 13
  ]
  edge [
    source 3
    target 6
    bw 31
  ]
  edge [
    source 4
    target 6
    bw 13
  ]
]
