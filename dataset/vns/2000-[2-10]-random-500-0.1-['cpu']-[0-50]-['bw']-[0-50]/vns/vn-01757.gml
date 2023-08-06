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
  id 1757
  arrival_time 17563.0
  lifetime 309.63982928468585
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 3
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 17
  ]
  node [
    id 4
    label "4"
    cpu 36
  ]
  node [
    id 5
    label "5"
    cpu 38
  ]
  node [
    id 6
    label "6"
    cpu 11
  ]
  node [
    id 7
    label "7"
    cpu 10
  ]
  node [
    id 8
    label "8"
    cpu 0
  ]
  node [
    id 9
    label "9"
    cpu 39
  ]
  edge [
    source 0
    target 2
    bw 36
  ]
  edge [
    source 0
    target 3
    bw 36
  ]
  edge [
    source 0
    target 5
    bw 21
  ]
  edge [
    source 0
    target 6
    bw 21
  ]
  edge [
    source 0
    target 7
    bw 24
  ]
  edge [
    source 0
    target 8
    bw 49
  ]
  edge [
    source 0
    target 9
    bw 1
  ]
  edge [
    source 1
    target 3
    bw 36
  ]
  edge [
    source 1
    target 4
    bw 35
  ]
  edge [
    source 1
    target 5
    bw 48
  ]
  edge [
    source 2
    target 6
    bw 23
  ]
  edge [
    source 2
    target 7
    bw 48
  ]
  edge [
    source 2
    target 9
    bw 47
  ]
  edge [
    source 3
    target 4
    bw 44
  ]
  edge [
    source 3
    target 9
    bw 2
  ]
  edge [
    source 4
    target 8
    bw 40
  ]
  edge [
    source 4
    target 9
    bw 48
  ]
  edge [
    source 5
    target 6
    bw 33
  ]
  edge [
    source 5
    target 8
    bw 42
  ]
  edge [
    source 6
    target 7
    bw 4
  ]
  edge [
    source 6
    target 9
    bw 8
  ]
  edge [
    source 7
    target 8
    bw 34
  ]
]
