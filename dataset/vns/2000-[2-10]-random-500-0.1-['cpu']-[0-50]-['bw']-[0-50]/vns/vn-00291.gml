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
  id 291
  arrival_time 2930.0
  lifetime 473.9851096607705
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 35
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 41
  ]
  node [
    id 3
    label "3"
    cpu 43
  ]
  node [
    id 4
    label "4"
    cpu 14
  ]
  node [
    id 5
    label "5"
    cpu 30
  ]
  node [
    id 6
    label "6"
    cpu 17
  ]
  node [
    id 7
    label "7"
    cpu 0
  ]
  node [
    id 8
    label "8"
    cpu 41
  ]
  edge [
    source 0
    target 1
    bw 22
  ]
  edge [
    source 0
    target 2
    bw 45
  ]
  edge [
    source 0
    target 4
    bw 18
  ]
  edge [
    source 0
    target 5
    bw 22
  ]
  edge [
    source 0
    target 6
    bw 37
  ]
  edge [
    source 0
    target 7
    bw 50
  ]
  edge [
    source 0
    target 8
    bw 32
  ]
  edge [
    source 1
    target 2
    bw 50
  ]
  edge [
    source 1
    target 3
    bw 6
  ]
  edge [
    source 1
    target 5
    bw 25
  ]
  edge [
    source 1
    target 6
    bw 10
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
  edge [
    source 2
    target 6
    bw 1
  ]
  edge [
    source 2
    target 7
    bw 41
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 38
  ]
  edge [
    source 4
    target 6
    bw 11
  ]
  edge [
    source 5
    target 6
    bw 31
  ]
  edge [
    source 5
    target 8
    bw 7
  ]
  edge [
    source 6
    target 7
    bw 8
  ]
  edge [
    source 7
    target 8
    bw 30
  ]
]
