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
  id 1925
  arrival_time 19165.0
  lifetime 1141.2774152859083
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 7
  ]
  node [
    id 1
    label "1"
    cpu 45
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 13
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 18
  ]
  node [
    id 8
    label "8"
    cpu 31
  ]
  edge [
    source 0
    target 1
    bw 14
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 0
    target 5
    bw 39
  ]
  edge [
    source 0
    target 6
    bw 45
  ]
  edge [
    source 1
    target 2
    bw 17
  ]
  edge [
    source 1
    target 7
    bw 33
  ]
  edge [
    source 2
    target 4
    bw 42
  ]
  edge [
    source 2
    target 7
    bw 29
  ]
  edge [
    source 3
    target 4
    bw 49
  ]
  edge [
    source 3
    target 6
    bw 20
  ]
  edge [
    source 3
    target 7
    bw 31
  ]
  edge [
    source 4
    target 6
    bw 0
  ]
  edge [
    source 4
    target 7
    bw 24
  ]
  edge [
    source 5
    target 7
    bw 50
  ]
  edge [
    source 5
    target 8
    bw 6
  ]
  edge [
    source 6
    target 8
    bw 17
  ]
]
