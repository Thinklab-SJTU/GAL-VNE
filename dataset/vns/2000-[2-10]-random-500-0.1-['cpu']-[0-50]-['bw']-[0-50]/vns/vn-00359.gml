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
  id 359
  arrival_time 3637.0
  lifetime 1045.6127357671496
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 19
  ]
  node [
    id 1
    label "1"
    cpu 20
  ]
  node [
    id 2
    label "2"
    cpu 40
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 5
  ]
  node [
    id 7
    label "7"
    cpu 10
  ]
  node [
    id 8
    label "8"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 20
  ]
  edge [
    source 0
    target 2
    bw 7
  ]
  edge [
    source 0
    target 3
    bw 30
  ]
  edge [
    source 0
    target 6
    bw 20
  ]
  edge [
    source 1
    target 2
    bw 26
  ]
  edge [
    source 1
    target 5
    bw 2
  ]
  edge [
    source 1
    target 6
    bw 7
  ]
  edge [
    source 2
    target 4
    bw 9
  ]
  edge [
    source 2
    target 6
    bw 14
  ]
  edge [
    source 3
    target 5
    bw 12
  ]
  edge [
    source 3
    target 7
    bw 11
  ]
  edge [
    source 4
    target 6
    bw 38
  ]
  edge [
    source 5
    target 6
    bw 48
  ]
  edge [
    source 5
    target 8
    bw 7
  ]
  edge [
    source 6
    target 7
    bw 29
  ]
  edge [
    source 6
    target 8
    bw 32
  ]
]
