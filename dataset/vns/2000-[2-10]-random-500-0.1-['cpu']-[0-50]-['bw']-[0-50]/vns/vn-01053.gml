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
  id 1053
  arrival_time 10480.0
  lifetime 529.7566125288797
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 44
  ]
  node [
    id 1
    label "1"
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 0
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  node [
    id 6
    label "6"
    cpu 21
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  node [
    id 8
    label "8"
    cpu 39
  ]
  node [
    id 9
    label "9"
    cpu 30
  ]
  edge [
    source 0
    target 1
    bw 0
  ]
  edge [
    source 0
    target 3
    bw 26
  ]
  edge [
    source 0
    target 6
    bw 42
  ]
  edge [
    source 0
    target 8
    bw 1
  ]
  edge [
    source 0
    target 9
    bw 10
  ]
  edge [
    source 1
    target 3
    bw 41
  ]
  edge [
    source 1
    target 5
    bw 9
  ]
  edge [
    source 1
    target 6
    bw 25
  ]
  edge [
    source 1
    target 7
    bw 28
  ]
  edge [
    source 2
    target 5
    bw 25
  ]
  edge [
    source 2
    target 6
    bw 42
  ]
  edge [
    source 2
    target 7
    bw 21
  ]
  edge [
    source 2
    target 8
    bw 46
  ]
  edge [
    source 2
    target 9
    bw 1
  ]
  edge [
    source 3
    target 5
    bw 37
  ]
  edge [
    source 3
    target 9
    bw 22
  ]
  edge [
    source 4
    target 5
    bw 3
  ]
  edge [
    source 4
    target 9
    bw 13
  ]
  edge [
    source 5
    target 6
    bw 19
  ]
  edge [
    source 5
    target 9
    bw 19
  ]
  edge [
    source 6
    target 8
    bw 30
  ]
  edge [
    source 8
    target 9
    bw 32
  ]
]
