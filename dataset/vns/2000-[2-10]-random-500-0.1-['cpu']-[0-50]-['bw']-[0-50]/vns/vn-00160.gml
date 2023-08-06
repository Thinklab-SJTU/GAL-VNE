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
  id 160
  arrival_time 1614.0
  lifetime 1112.7290562608964
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 14
  ]
  node [
    id 1
    label "1"
    cpu 5
  ]
  node [
    id 2
    label "2"
    cpu 7
  ]
  node [
    id 3
    label "3"
    cpu 26
  ]
  node [
    id 4
    label "4"
    cpu 32
  ]
  node [
    id 5
    label "5"
    cpu 15
  ]
  node [
    id 6
    label "6"
    cpu 5
  ]
  node [
    id 7
    label "7"
    cpu 9
  ]
  node [
    id 8
    label "8"
    cpu 14
  ]
  edge [
    source 0
    target 1
    bw 15
  ]
  edge [
    source 0
    target 3
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 1
  ]
  edge [
    source 0
    target 6
    bw 20
  ]
  edge [
    source 1
    target 3
    bw 15
  ]
  edge [
    source 2
    target 3
    bw 23
  ]
  edge [
    source 2
    target 4
    bw 34
  ]
  edge [
    source 2
    target 8
    bw 49
  ]
  edge [
    source 3
    target 4
    bw 18
  ]
  edge [
    source 3
    target 6
    bw 43
  ]
  edge [
    source 3
    target 7
    bw 21
  ]
  edge [
    source 3
    target 8
    bw 36
  ]
  edge [
    source 4
    target 6
    bw 40
  ]
  edge [
    source 4
    target 8
    bw 49
  ]
  edge [
    source 5
    target 6
    bw 36
  ]
  edge [
    source 5
    target 7
    bw 29
  ]
  edge [
    source 5
    target 8
    bw 39
  ]
  edge [
    source 7
    target 8
    bw 11
  ]
]
