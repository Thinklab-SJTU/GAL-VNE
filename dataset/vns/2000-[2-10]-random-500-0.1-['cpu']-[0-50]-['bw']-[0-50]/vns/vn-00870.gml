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
  id 870
  arrival_time 8679.0
  lifetime 553.1673684508725
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
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 41
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 43
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 27
  ]
  node [
    id 9
    label "9"
    cpu 48
  ]
  edge [
    source 0
    target 1
    bw 47
  ]
  edge [
    source 0
    target 5
    bw 40
  ]
  edge [
    source 0
    target 6
    bw 31
  ]
  edge [
    source 0
    target 7
    bw 47
  ]
  edge [
    source 0
    target 8
    bw 25
  ]
  edge [
    source 1
    target 3
    bw 40
  ]
  edge [
    source 1
    target 9
    bw 50
  ]
  edge [
    source 2
    target 3
    bw 36
  ]
  edge [
    source 3
    target 4
    bw 25
  ]
  edge [
    source 3
    target 8
    bw 11
  ]
  edge [
    source 3
    target 9
    bw 12
  ]
  edge [
    source 4
    target 8
    bw 13
  ]
  edge [
    source 4
    target 9
    bw 9
  ]
  edge [
    source 5
    target 6
    bw 8
  ]
  edge [
    source 5
    target 7
    bw 7
  ]
  edge [
    source 6
    target 8
    bw 42
  ]
  edge [
    source 6
    target 9
    bw 28
  ]
  edge [
    source 7
    target 9
    bw 34
  ]
]
