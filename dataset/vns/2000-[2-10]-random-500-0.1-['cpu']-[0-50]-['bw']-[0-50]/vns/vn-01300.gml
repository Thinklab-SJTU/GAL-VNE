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
  id 1300
  arrival_time 13007.0
  lifetime 848.4166681430304
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 14
  ]
  node [
    id 1
    label "1"
    cpu 21
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 3
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 50
  ]
  edge [
    source 0
    target 2
    bw 42
  ]
  edge [
    source 0
    target 4
    bw 8
  ]
  edge [
    source 0
    target 5
    bw 20
  ]
  edge [
    source 0
    target 6
    bw 4
  ]
  edge [
    source 1
    target 2
    bw 3
  ]
  edge [
    source 1
    target 5
    bw 21
  ]
  edge [
    source 2
    target 6
    bw 14
  ]
  edge [
    source 3
    target 4
    bw 44
  ]
  edge [
    source 3
    target 5
    bw 50
  ]
  edge [
    source 3
    target 6
    bw 7
  ]
  edge [
    source 4
    target 5
    bw 50
  ]
  edge [
    source 4
    target 6
    bw 4
  ]
  edge [
    source 5
    target 6
    bw 20
  ]
]