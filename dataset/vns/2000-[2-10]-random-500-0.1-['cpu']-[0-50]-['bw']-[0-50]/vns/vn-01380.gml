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
  id 1380
  arrival_time 13786.0
  lifetime 1236.1271361940544
  num_nodes 10
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
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 11
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 36
  ]
  node [
    id 6
    label "6"
    cpu 35
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  node [
    id 8
    label "8"
    cpu 5
  ]
  node [
    id 9
    label "9"
    cpu 31
  ]
  edge [
    source 0
    target 5
    bw 45
  ]
  edge [
    source 1
    target 4
    bw 25
  ]
  edge [
    source 1
    target 8
    bw 28
  ]
  edge [
    source 2
    target 7
    bw 0
  ]
  edge [
    source 2
    target 9
    bw 5
  ]
  edge [
    source 3
    target 4
    bw 29
  ]
  edge [
    source 3
    target 5
    bw 26
  ]
  edge [
    source 3
    target 6
    bw 3
  ]
  edge [
    source 3
    target 9
    bw 30
  ]
  edge [
    source 4
    target 5
    bw 31
  ]
  edge [
    source 4
    target 6
    bw 7
  ]
  edge [
    source 4
    target 8
    bw 33
  ]
  edge [
    source 4
    target 9
    bw 44
  ]
  edge [
    source 5
    target 7
    bw 47
  ]
  edge [
    source 5
    target 9
    bw 23
  ]
  edge [
    source 6
    target 7
    bw 37
  ]
  edge [
    source 6
    target 8
    bw 5
  ]
  edge [
    source 7
    target 8
    bw 0
  ]
  edge [
    source 7
    target 9
    bw 40
  ]
  edge [
    source 8
    target 9
    bw 35
  ]
]
