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
  id 1439
  arrival_time 14353.0
  lifetime 712.9578307581194
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 43
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 32
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 37
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  node [
    id 6
    label "6"
    cpu 20
  ]
  node [
    id 7
    label "7"
    cpu 48
  ]
  node [
    id 8
    label "8"
    cpu 29
  ]
  edge [
    source 0
    target 2
    bw 32
  ]
  edge [
    source 0
    target 3
    bw 39
  ]
  edge [
    source 0
    target 5
    bw 46
  ]
  edge [
    source 0
    target 6
    bw 19
  ]
  edge [
    source 0
    target 7
    bw 3
  ]
  edge [
    source 0
    target 8
    bw 23
  ]
  edge [
    source 1
    target 2
    bw 23
  ]
  edge [
    source 1
    target 5
    bw 29
  ]
  edge [
    source 1
    target 6
    bw 29
  ]
  edge [
    source 1
    target 7
    bw 14
  ]
  edge [
    source 1
    target 8
    bw 19
  ]
  edge [
    source 2
    target 3
    bw 17
  ]
  edge [
    source 2
    target 4
    bw 26
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 2
    target 7
    bw 15
  ]
  edge [
    source 3
    target 4
    bw 31
  ]
  edge [
    source 3
    target 5
    bw 50
  ]
  edge [
    source 3
    target 6
    bw 40
  ]
  edge [
    source 3
    target 8
    bw 24
  ]
  edge [
    source 4
    target 5
    bw 29
  ]
  edge [
    source 4
    target 6
    bw 15
  ]
  edge [
    source 4
    target 7
    bw 27
  ]
  edge [
    source 5
    target 7
    bw 24
  ]
]
