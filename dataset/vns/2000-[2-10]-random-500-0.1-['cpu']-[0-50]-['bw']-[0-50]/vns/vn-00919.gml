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
  id 919
  arrival_time 9173.0
  lifetime 59.13958567659136
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
    cpu 29
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 16
  ]
  node [
    id 4
    label "4"
    cpu 8
  ]
  node [
    id 5
    label "5"
    cpu 13
  ]
  node [
    id 6
    label "6"
    cpu 38
  ]
  node [
    id 7
    label "7"
    cpu 15
  ]
  node [
    id 8
    label "8"
    cpu 42
  ]
  node [
    id 9
    label "9"
    cpu 10
  ]
  edge [
    source 0
    target 2
    bw 30
  ]
  edge [
    source 0
    target 6
    bw 43
  ]
  edge [
    source 0
    target 7
    bw 36
  ]
  edge [
    source 1
    target 2
    bw 6
  ]
  edge [
    source 1
    target 3
    bw 37
  ]
  edge [
    source 1
    target 6
    bw 12
  ]
  edge [
    source 1
    target 8
    bw 46
  ]
  edge [
    source 2
    target 3
    bw 45
  ]
  edge [
    source 2
    target 4
    bw 4
  ]
  edge [
    source 2
    target 7
    bw 16
  ]
  edge [
    source 2
    target 8
    bw 4
  ]
  edge [
    source 2
    target 9
    bw 17
  ]
  edge [
    source 3
    target 4
    bw 42
  ]
  edge [
    source 3
    target 6
    bw 48
  ]
  edge [
    source 3
    target 7
    bw 21
  ]
  edge [
    source 3
    target 9
    bw 27
  ]
  edge [
    source 4
    target 5
    bw 5
  ]
  edge [
    source 4
    target 6
    bw 13
  ]
  edge [
    source 4
    target 7
    bw 0
  ]
  edge [
    source 4
    target 8
    bw 47
  ]
  edge [
    source 4
    target 9
    bw 25
  ]
  edge [
    source 5
    target 8
    bw 29
  ]
  edge [
    source 5
    target 9
    bw 11
  ]
  edge [
    source 6
    target 8
    bw 15
  ]
  edge [
    source 6
    target 9
    bw 41
  ]
  edge [
    source 7
    target 8
    bw 9
  ]
]
