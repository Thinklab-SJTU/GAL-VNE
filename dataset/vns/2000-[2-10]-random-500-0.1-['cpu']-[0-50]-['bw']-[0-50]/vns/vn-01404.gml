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
  id 1404
  arrival_time 14025.0
  lifetime 389.7233931244424
  num_nodes 8
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
    cpu 3
  ]
  node [
    id 2
    label "2"
    cpu 14
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  edge [
    source 0
    target 2
    bw 46
  ]
  edge [
    source 0
    target 3
    bw 42
  ]
  edge [
    source 0
    target 5
    bw 11
  ]
  edge [
    source 1
    target 2
    bw 29
  ]
  edge [
    source 1
    target 3
    bw 15
  ]
  edge [
    source 1
    target 5
    bw 20
  ]
  edge [
    source 1
    target 6
    bw 1
  ]
  edge [
    source 2
    target 3
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 18
  ]
  edge [
    source 2
    target 5
    bw 46
  ]
  edge [
    source 2
    target 6
    bw 23
  ]
  edge [
    source 3
    target 7
    bw 32
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
]
