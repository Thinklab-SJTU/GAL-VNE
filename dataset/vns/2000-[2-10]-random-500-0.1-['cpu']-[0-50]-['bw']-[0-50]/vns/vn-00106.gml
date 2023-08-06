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
  id 106
  arrival_time 1092.0
  lifetime 371.6831305081504
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 35
  ]
  node [
    id 2
    label "2"
    cpu 45
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 43
  ]
  node [
    id 5
    label "5"
    cpu 39
  ]
  node [
    id 6
    label "6"
    cpu 22
  ]
  node [
    id 7
    label "7"
    cpu 45
  ]
  edge [
    source 0
    target 3
    bw 17
  ]
  edge [
    source 0
    target 4
    bw 34
  ]
  edge [
    source 1
    target 4
    bw 31
  ]
  edge [
    source 1
    target 5
    bw 17
  ]
  edge [
    source 2
    target 5
    bw 36
  ]
  edge [
    source 2
    target 6
    bw 50
  ]
  edge [
    source 2
    target 7
    bw 20
  ]
  edge [
    source 3
    target 6
    bw 44
  ]
  edge [
    source 3
    target 7
    bw 33
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
  edge [
    source 5
    target 6
    bw 13
  ]
]
