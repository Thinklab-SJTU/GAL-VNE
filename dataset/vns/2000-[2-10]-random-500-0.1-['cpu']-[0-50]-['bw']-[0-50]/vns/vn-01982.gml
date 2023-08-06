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
  id 1982
  arrival_time 19736.0
  lifetime 51.008377554580136
  num_nodes 9
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
    cpu 39
  ]
  node [
    id 2
    label "2"
    cpu 16
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 21
  ]
  node [
    id 6
    label "6"
    cpu 17
  ]
  node [
    id 7
    label "7"
    cpu 40
  ]
  node [
    id 8
    label "8"
    cpu 15
  ]
  edge [
    source 0
    target 1
    bw 8
  ]
  edge [
    source 0
    target 2
    bw 43
  ]
  edge [
    source 0
    target 3
    bw 6
  ]
  edge [
    source 0
    target 5
    bw 17
  ]
  edge [
    source 1
    target 3
    bw 14
  ]
  edge [
    source 1
    target 4
    bw 7
  ]
  edge [
    source 1
    target 6
    bw 43
  ]
  edge [
    source 1
    target 7
    bw 48
  ]
  edge [
    source 1
    target 8
    bw 13
  ]
  edge [
    source 2
    target 3
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 27
  ]
  edge [
    source 2
    target 5
    bw 0
  ]
  edge [
    source 2
    target 6
    bw 31
  ]
  edge [
    source 3
    target 4
    bw 49
  ]
  edge [
    source 3
    target 7
    bw 30
  ]
  edge [
    source 4
    target 7
    bw 42
  ]
  edge [
    source 4
    target 8
    bw 47
  ]
  edge [
    source 5
    target 6
    bw 13
  ]
  edge [
    source 5
    target 7
    bw 31
  ]
  edge [
    source 5
    target 8
    bw 31
  ]
  edge [
    source 6
    target 7
    bw 39
  ]
]
