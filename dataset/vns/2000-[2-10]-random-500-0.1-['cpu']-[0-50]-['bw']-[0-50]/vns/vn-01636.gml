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
  id 1636
  arrival_time 16305.0
  lifetime 73.39824232989598
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
    cpu 23
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 2
  ]
  node [
    id 7
    label "7"
    cpu 47
  ]
  node [
    id 8
    label "8"
    cpu 5
  ]
  node [
    id 9
    label "9"
    cpu 12
  ]
  edge [
    source 0
    target 2
    bw 5
  ]
  edge [
    source 0
    target 4
    bw 39
  ]
  edge [
    source 0
    target 6
    bw 15
  ]
  edge [
    source 0
    target 7
    bw 16
  ]
  edge [
    source 0
    target 9
    bw 49
  ]
  edge [
    source 1
    target 3
    bw 46
  ]
  edge [
    source 1
    target 6
    bw 19
  ]
  edge [
    source 1
    target 7
    bw 2
  ]
  edge [
    source 1
    target 9
    bw 0
  ]
  edge [
    source 2
    target 3
    bw 8
  ]
  edge [
    source 2
    target 5
    bw 50
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 5
    bw 2
  ]
  edge [
    source 3
    target 6
    bw 33
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
  edge [
    source 4
    target 7
    bw 14
  ]
  edge [
    source 4
    target 8
    bw 13
  ]
  edge [
    source 5
    target 6
    bw 28
  ]
  edge [
    source 6
    target 8
    bw 17
  ]
  edge [
    source 6
    target 9
    bw 45
  ]
  edge [
    source 7
    target 8
    bw 30
  ]
]
