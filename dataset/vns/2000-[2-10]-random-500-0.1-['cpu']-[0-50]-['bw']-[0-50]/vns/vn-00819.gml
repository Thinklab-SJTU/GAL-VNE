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
  id 819
  arrival_time 8145.0
  lifetime 832.2073619345283
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 2
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 42
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 28
  ]
  node [
    id 5
    label "5"
    cpu 36
  ]
  edge [
    source 0
    target 2
    bw 41
  ]
  edge [
    source 0
    target 3
    bw 11
  ]
  edge [
    source 0
    target 4
    bw 43
  ]
  edge [
    source 1
    target 2
    bw 27
  ]
  edge [
    source 1
    target 3
    bw 31
  ]
  edge [
    source 1
    target 4
    bw 21
  ]
  edge [
    source 1
    target 5
    bw 28
  ]
  edge [
    source 2
    target 5
    bw 7
  ]
  edge [
    source 4
    target 5
    bw 48
  ]
]
