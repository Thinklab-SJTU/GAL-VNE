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
  id 183
  arrival_time 1853.0
  lifetime 748.7941085215484
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 47
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 30
  ]
  node [
    id 5
    label "5"
    cpu 13
  ]
  node [
    id 6
    label "6"
    cpu 35
  ]
  node [
    id 7
    label "7"
    cpu 21
  ]
  node [
    id 8
    label "8"
    cpu 37
  ]
  node [
    id 9
    label "9"
    cpu 16
  ]
  edge [
    source 0
    target 3
    bw 13
  ]
  edge [
    source 0
    target 4
    bw 40
  ]
  edge [
    source 0
    target 5
    bw 28
  ]
  edge [
    source 0
    target 6
    bw 49
  ]
  edge [
    source 1
    target 4
    bw 32
  ]
  edge [
    source 1
    target 5
    bw 10
  ]
  edge [
    source 1
    target 7
    bw 12
  ]
  edge [
    source 1
    target 8
    bw 25
  ]
  edge [
    source 2
    target 3
    bw 17
  ]
  edge [
    source 2
    target 4
    bw 30
  ]
  edge [
    source 2
    target 5
    bw 10
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 2
    target 8
    bw 17
  ]
  edge [
    source 2
    target 9
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 18
  ]
  edge [
    source 3
    target 7
    bw 17
  ]
  edge [
    source 3
    target 9
    bw 17
  ]
  edge [
    source 4
    target 5
    bw 6
  ]
  edge [
    source 4
    target 6
    bw 24
  ]
  edge [
    source 4
    target 8
    bw 46
  ]
  edge [
    source 4
    target 9
    bw 24
  ]
  edge [
    source 5
    target 7
    bw 36
  ]
  edge [
    source 5
    target 8
    bw 34
  ]
  edge [
    source 6
    target 7
    bw 49
  ]
  edge [
    source 6
    target 8
    bw 25
  ]
  edge [
    source 7
    target 8
    bw 12
  ]
]
