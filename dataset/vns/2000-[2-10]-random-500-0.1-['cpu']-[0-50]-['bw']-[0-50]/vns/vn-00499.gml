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
  id 499
  arrival_time 5056.0
  lifetime 451.9175744368787
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 3
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 13
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  node [
    id 5
    label "5"
    cpu 44
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 24
  ]
  node [
    id 8
    label "8"
    cpu 6
  ]
  edge [
    source 0
    target 2
    bw 50
  ]
  edge [
    source 0
    target 3
    bw 12
  ]
  edge [
    source 0
    target 6
    bw 22
  ]
  edge [
    source 0
    target 8
    bw 12
  ]
  edge [
    source 1
    target 3
    bw 36
  ]
  edge [
    source 1
    target 4
    bw 37
  ]
  edge [
    source 1
    target 6
    bw 2
  ]
  edge [
    source 1
    target 7
    bw 12
  ]
  edge [
    source 2
    target 3
    bw 43
  ]
  edge [
    source 2
    target 4
    bw 14
  ]
  edge [
    source 2
    target 6
    bw 38
  ]
  edge [
    source 2
    target 7
    bw 33
  ]
  edge [
    source 3
    target 8
    bw 18
  ]
  edge [
    source 4
    target 6
    bw 0
  ]
  edge [
    source 4
    target 7
    bw 6
  ]
  edge [
    source 4
    target 8
    bw 7
  ]
  edge [
    source 5
    target 7
    bw 12
  ]
  edge [
    source 5
    target 8
    bw 11
  ]
  edge [
    source 6
    target 8
    bw 6
  ]
]
