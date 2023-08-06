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
  id 722
  arrival_time 7248.0
  lifetime 149.72677234077602
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 10
  ]
  node [
    id 1
    label "1"
    cpu 35
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 23
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 44
  ]
  node [
    id 8
    label "8"
    cpu 19
  ]
  node [
    id 9
    label "9"
    cpu 3
  ]
  edge [
    source 0
    target 1
    bw 27
  ]
  edge [
    source 0
    target 3
    bw 19
  ]
  edge [
    source 0
    target 4
    bw 21
  ]
  edge [
    source 0
    target 5
    bw 21
  ]
  edge [
    source 0
    target 6
    bw 24
  ]
  edge [
    source 0
    target 7
    bw 5
  ]
  edge [
    source 0
    target 8
    bw 3
  ]
  edge [
    source 1
    target 4
    bw 6
  ]
  edge [
    source 1
    target 6
    bw 33
  ]
  edge [
    source 1
    target 8
    bw 48
  ]
  edge [
    source 2
    target 6
    bw 24
  ]
  edge [
    source 2
    target 8
    bw 33
  ]
  edge [
    source 3
    target 5
    bw 17
  ]
  edge [
    source 3
    target 6
    bw 16
  ]
  edge [
    source 3
    target 8
    bw 37
  ]
  edge [
    source 4
    target 6
    bw 46
  ]
  edge [
    source 4
    target 7
    bw 38
  ]
  edge [
    source 4
    target 9
    bw 15
  ]
  edge [
    source 5
    target 6
    bw 17
  ]
  edge [
    source 5
    target 9
    bw 24
  ]
  edge [
    source 7
    target 8
    bw 43
  ]
  edge [
    source 8
    target 9
    bw 11
  ]
]
