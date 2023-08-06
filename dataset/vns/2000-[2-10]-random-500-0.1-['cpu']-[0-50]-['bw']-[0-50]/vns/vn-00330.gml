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
  id 330
  arrival_time 3347.0
  lifetime 1081.4046107791805
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 37
  ]
  node [
    id 1
    label "1"
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 37
  ]
  node [
    id 7
    label "7"
    cpu 0
  ]
  node [
    id 8
    label "8"
    cpu 31
  ]
  node [
    id 9
    label "9"
    cpu 46
  ]
  edge [
    source 0
    target 1
    bw 15
  ]
  edge [
    source 0
    target 2
    bw 5
  ]
  edge [
    source 0
    target 3
    bw 18
  ]
  edge [
    source 0
    target 5
    bw 50
  ]
  edge [
    source 0
    target 8
    bw 50
  ]
  edge [
    source 0
    target 9
    bw 45
  ]
  edge [
    source 1
    target 2
    bw 31
  ]
  edge [
    source 1
    target 6
    bw 26
  ]
  edge [
    source 1
    target 7
    bw 24
  ]
  edge [
    source 2
    target 5
    bw 25
  ]
  edge [
    source 2
    target 7
    bw 6
  ]
  edge [
    source 3
    target 4
    bw 27
  ]
  edge [
    source 3
    target 5
    bw 33
  ]
  edge [
    source 3
    target 9
    bw 37
  ]
  edge [
    source 4
    target 5
    bw 24
  ]
  edge [
    source 4
    target 6
    bw 12
  ]
  edge [
    source 4
    target 9
    bw 7
  ]
  edge [
    source 5
    target 8
    bw 27
  ]
  edge [
    source 6
    target 7
    bw 0
  ]
  edge [
    source 6
    target 8
    bw 39
  ]
  edge [
    source 6
    target 9
    bw 10
  ]
  edge [
    source 7
    target 8
    bw 47
  ]
]
