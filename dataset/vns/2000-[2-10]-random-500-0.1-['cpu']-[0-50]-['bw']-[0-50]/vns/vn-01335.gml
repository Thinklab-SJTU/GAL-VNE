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
  id 1335
  arrival_time 13355.0
  lifetime 642.4093258668458
  num_nodes 9
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
    cpu 24
  ]
  node [
    id 2
    label "2"
    cpu 26
  ]
  node [
    id 3
    label "3"
    cpu 44
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 50
  ]
  node [
    id 6
    label "6"
    cpu 37
  ]
  node [
    id 7
    label "7"
    cpu 33
  ]
  node [
    id 8
    label "8"
    cpu 28
  ]
  edge [
    source 0
    target 6
    bw 24
  ]
  edge [
    source 0
    target 7
    bw 1
  ]
  edge [
    source 1
    target 6
    bw 18
  ]
  edge [
    source 1
    target 7
    bw 22
  ]
  edge [
    source 1
    target 8
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 5
  ]
  edge [
    source 2
    target 7
    bw 30
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 6
    bw 38
  ]
  edge [
    source 3
    target 7
    bw 2
  ]
  edge [
    source 4
    target 5
    bw 36
  ]
  edge [
    source 4
    target 8
    bw 13
  ]
  edge [
    source 5
    target 6
    bw 41
  ]
  edge [
    source 5
    target 8
    bw 3
  ]
  edge [
    source 6
    target 7
    bw 17
  ]
  edge [
    source 6
    target 8
    bw 18
  ]
  edge [
    source 7
    target 8
    bw 3
  ]
]
