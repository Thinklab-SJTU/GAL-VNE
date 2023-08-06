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
  id 397
  arrival_time 4007.0
  lifetime 345.3755112015808
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 4
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 40
  ]
  node [
    id 4
    label "4"
    cpu 12
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  node [
    id 7
    label "7"
    cpu 8
  ]
  node [
    id 8
    label "8"
    cpu 20
  ]
  edge [
    source 0
    target 1
    bw 27
  ]
  edge [
    source 0
    target 2
    bw 44
  ]
  edge [
    source 0
    target 3
    bw 42
  ]
  edge [
    source 0
    target 4
    bw 47
  ]
  edge [
    source 0
    target 7
    bw 24
  ]
  edge [
    source 1
    target 3
    bw 42
  ]
  edge [
    source 1
    target 4
    bw 7
  ]
  edge [
    source 1
    target 6
    bw 40
  ]
  edge [
    source 1
    target 7
    bw 43
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 2
    target 6
    bw 48
  ]
  edge [
    source 2
    target 7
    bw 50
  ]
  edge [
    source 2
    target 8
    bw 49
  ]
  edge [
    source 3
    target 4
    bw 4
  ]
  edge [
    source 3
    target 7
    bw 14
  ]
  edge [
    source 3
    target 8
    bw 28
  ]
  edge [
    source 4
    target 5
    bw 5
  ]
  edge [
    source 4
    target 6
    bw 4
  ]
  edge [
    source 4
    target 7
    bw 17
  ]
  edge [
    source 4
    target 8
    bw 31
  ]
  edge [
    source 6
    target 7
    bw 50
  ]
  edge [
    source 6
    target 8
    bw 17
  ]
  edge [
    source 7
    target 8
    bw 15
  ]
]
