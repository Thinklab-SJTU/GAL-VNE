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
  id 1436
  arrival_time 14333.0
  lifetime 40.07763088039846
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 16
  ]
  node [
    id 4
    label "4"
    cpu 9
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 50
  ]
  node [
    id 7
    label "7"
    cpu 8
  ]
  node [
    id 8
    label "8"
    cpu 25
  ]
  edge [
    source 0
    target 5
    bw 20
  ]
  edge [
    source 0
    target 7
    bw 43
  ]
  edge [
    source 0
    target 8
    bw 47
  ]
  edge [
    source 1
    target 2
    bw 11
  ]
  edge [
    source 1
    target 3
    bw 44
  ]
  edge [
    source 1
    target 5
    bw 0
  ]
  edge [
    source 1
    target 6
    bw 5
  ]
  edge [
    source 1
    target 7
    bw 39
  ]
  edge [
    source 1
    target 8
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 39
  ]
  edge [
    source 2
    target 5
    bw 34
  ]
  edge [
    source 2
    target 6
    bw 45
  ]
  edge [
    source 2
    target 7
    bw 35
  ]
  edge [
    source 3
    target 4
    bw 13
  ]
  edge [
    source 3
    target 5
    bw 32
  ]
  edge [
    source 3
    target 6
    bw 13
  ]
  edge [
    source 3
    target 8
    bw 44
  ]
  edge [
    source 4
    target 5
    bw 3
  ]
  edge [
    source 4
    target 6
    bw 14
  ]
  edge [
    source 4
    target 7
    bw 37
  ]
  edge [
    source 5
    target 6
    bw 25
  ]
  edge [
    source 5
    target 7
    bw 49
  ]
  edge [
    source 5
    target 8
    bw 46
  ]
  edge [
    source 6
    target 8
    bw 3
  ]
  edge [
    source 7
    target 8
    bw 8
  ]
]
