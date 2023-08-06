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
  id 822
  arrival_time 8172.0
  lifetime 535.5244270887499
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 18
  ]
  node [
    id 1
    label "1"
    cpu 4
  ]
  node [
    id 2
    label "2"
    cpu 45
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 23
  ]
  node [
    id 6
    label "6"
    cpu 1
  ]
  node [
    id 7
    label "7"
    cpu 17
  ]
  node [
    id 8
    label "8"
    cpu 39
  ]
  edge [
    source 0
    target 2
    bw 10
  ]
  edge [
    source 0
    target 3
    bw 37
  ]
  edge [
    source 0
    target 4
    bw 6
  ]
  edge [
    source 0
    target 8
    bw 9
  ]
  edge [
    source 1
    target 2
    bw 10
  ]
  edge [
    source 1
    target 3
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 42
  ]
  edge [
    source 1
    target 5
    bw 9
  ]
  edge [
    source 1
    target 6
    bw 3
  ]
  edge [
    source 1
    target 7
    bw 3
  ]
  edge [
    source 2
    target 5
    bw 29
  ]
  edge [
    source 2
    target 6
    bw 27
  ]
  edge [
    source 2
    target 7
    bw 36
  ]
  edge [
    source 3
    target 5
    bw 19
  ]
  edge [
    source 4
    target 6
    bw 37
  ]
  edge [
    source 4
    target 7
    bw 2
  ]
  edge [
    source 5
    target 7
    bw 0
  ]
  edge [
    source 5
    target 8
    bw 4
  ]
  edge [
    source 6
    target 7
    bw 24
  ]
]
