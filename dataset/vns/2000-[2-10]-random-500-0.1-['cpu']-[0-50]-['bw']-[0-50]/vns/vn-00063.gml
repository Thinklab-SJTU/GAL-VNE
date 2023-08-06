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
  id 63
  arrival_time 658.0
  lifetime 46.56803740209267
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 42
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 43
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 24
  ]
  node [
    id 7
    label "7"
    cpu 12
  ]
  node [
    id 8
    label "8"
    cpu 18
  ]
  node [
    id 9
    label "9"
    cpu 46
  ]
  edge [
    source 0
    target 2
    bw 36
  ]
  edge [
    source 0
    target 4
    bw 7
  ]
  edge [
    source 0
    target 6
    bw 34
  ]
  edge [
    source 1
    target 2
    bw 50
  ]
  edge [
    source 1
    target 3
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 40
  ]
  edge [
    source 1
    target 7
    bw 24
  ]
  edge [
    source 1
    target 8
    bw 36
  ]
  edge [
    source 2
    target 4
    bw 7
  ]
  edge [
    source 2
    target 6
    bw 37
  ]
  edge [
    source 2
    target 7
    bw 39
  ]
  edge [
    source 2
    target 8
    bw 28
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 5
    bw 39
  ]
  edge [
    source 3
    target 6
    bw 14
  ]
  edge [
    source 3
    target 9
    bw 48
  ]
  edge [
    source 4
    target 5
    bw 37
  ]
  edge [
    source 4
    target 7
    bw 8
  ]
  edge [
    source 5
    target 7
    bw 27
  ]
  edge [
    source 5
    target 8
    bw 43
  ]
  edge [
    source 5
    target 9
    bw 0
  ]
  edge [
    source 6
    target 7
    bw 2
  ]
  edge [
    source 6
    target 8
    bw 1
  ]
  edge [
    source 6
    target 9
    bw 33
  ]
  edge [
    source 7
    target 9
    bw 17
  ]
  edge [
    source 8
    target 9
    bw 50
  ]
]
