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
  id 1192
  arrival_time 11882.0
  lifetime 66.45652957362212
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 1
  ]
  node [
    id 1
    label "1"
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 12
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 34
  ]
  node [
    id 7
    label "7"
    cpu 24
  ]
  node [
    id 8
    label "8"
    cpu 18
  ]
  edge [
    source 0
    target 1
    bw 30
  ]
  edge [
    source 0
    target 3
    bw 32
  ]
  edge [
    source 0
    target 5
    bw 25
  ]
  edge [
    source 0
    target 6
    bw 6
  ]
  edge [
    source 0
    target 7
    bw 26
  ]
  edge [
    source 0
    target 8
    bw 18
  ]
  edge [
    source 1
    target 2
    bw 25
  ]
  edge [
    source 1
    target 5
    bw 23
  ]
  edge [
    source 1
    target 7
    bw 33
  ]
  edge [
    source 1
    target 8
    bw 35
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 2
    target 4
    bw 31
  ]
  edge [
    source 2
    target 6
    bw 47
  ]
  edge [
    source 2
    target 8
    bw 15
  ]
  edge [
    source 3
    target 4
    bw 46
  ]
  edge [
    source 3
    target 7
    bw 37
  ]
  edge [
    source 3
    target 8
    bw 11
  ]
  edge [
    source 4
    target 6
    bw 25
  ]
  edge [
    source 5
    target 7
    bw 6
  ]
  edge [
    source 6
    target 7
    bw 48
  ]
  edge [
    source 6
    target 8
    bw 46
  ]
  edge [
    source 7
    target 8
    bw 43
  ]
]
