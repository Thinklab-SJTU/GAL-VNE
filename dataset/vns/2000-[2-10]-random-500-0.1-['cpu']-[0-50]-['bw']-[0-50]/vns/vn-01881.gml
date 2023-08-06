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
  id 1881
  arrival_time 18769.0
  lifetime 2085.0030669594826
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 12
  ]
  node [
    id 3
    label "3"
    cpu 25
  ]
  node [
    id 4
    label "4"
    cpu 30
  ]
  node [
    id 5
    label "5"
    cpu 36
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  edge [
    source 0
    target 2
    bw 40
  ]
  edge [
    source 0
    target 3
    bw 38
  ]
  edge [
    source 0
    target 7
    bw 31
  ]
  edge [
    source 1
    target 3
    bw 43
  ]
  edge [
    source 1
    target 4
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 40
  ]
  edge [
    source 1
    target 6
    bw 43
  ]
  edge [
    source 1
    target 7
    bw 50
  ]
  edge [
    source 2
    target 4
    bw 15
  ]
  edge [
    source 2
    target 5
    bw 26
  ]
  edge [
    source 2
    target 7
    bw 18
  ]
  edge [
    source 3
    target 5
    bw 29
  ]
  edge [
    source 3
    target 7
    bw 11
  ]
  edge [
    source 4
    target 5
    bw 43
  ]
  edge [
    source 5
    target 6
    bw 13
  ]
]
