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
  id 570
  arrival_time 5748.0
  lifetime 274.7320341711652
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 49
  ]
  node [
    id 1
    label "1"
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 7
  ]
  node [
    id 4
    label "4"
    cpu 24
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 35
  ]
  node [
    id 7
    label "7"
    cpu 49
  ]
  node [
    id 8
    label "8"
    cpu 0
  ]
  node [
    id 9
    label "9"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 2
  ]
  edge [
    source 0
    target 2
    bw 0
  ]
  edge [
    source 0
    target 4
    bw 48
  ]
  edge [
    source 0
    target 7
    bw 10
  ]
  edge [
    source 0
    target 8
    bw 48
  ]
  edge [
    source 1
    target 2
    bw 11
  ]
  edge [
    source 1
    target 3
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 1
  ]
  edge [
    source 1
    target 6
    bw 25
  ]
  edge [
    source 1
    target 8
    bw 28
  ]
  edge [
    source 1
    target 9
    bw 18
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
  edge [
    source 2
    target 7
    bw 43
  ]
  edge [
    source 2
    target 8
    bw 25
  ]
  edge [
    source 3
    target 4
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 43
  ]
  edge [
    source 3
    target 7
    bw 2
  ]
  edge [
    source 3
    target 8
    bw 50
  ]
  edge [
    source 4
    target 5
    bw 30
  ]
  edge [
    source 4
    target 8
    bw 44
  ]
  edge [
    source 5
    target 7
    bw 41
  ]
  edge [
    source 5
    target 8
    bw 43
  ]
  edge [
    source 5
    target 9
    bw 4
  ]
  edge [
    source 6
    target 7
    bw 2
  ]
  edge [
    source 6
    target 8
    bw 46
  ]
  edge [
    source 6
    target 9
    bw 29
  ]
  edge [
    source 7
    target 9
    bw 14
  ]
]
