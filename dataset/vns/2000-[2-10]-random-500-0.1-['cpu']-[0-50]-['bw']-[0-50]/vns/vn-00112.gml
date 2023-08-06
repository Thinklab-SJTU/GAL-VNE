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
  id 112
  arrival_time 1154.0
  lifetime 63.07295938201663
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 2
  ]
  node [
    id 6
    label "6"
    cpu 6
  ]
  node [
    id 7
    label "7"
    cpu 17
  ]
  node [
    id 8
    label "8"
    cpu 43
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 2
    bw 13
  ]
  edge [
    source 0
    target 3
    bw 4
  ]
  edge [
    source 0
    target 5
    bw 16
  ]
  edge [
    source 1
    target 2
    bw 50
  ]
  edge [
    source 1
    target 4
    bw 17
  ]
  edge [
    source 1
    target 5
    bw 26
  ]
  edge [
    source 1
    target 7
    bw 28
  ]
  edge [
    source 1
    target 8
    bw 22
  ]
  edge [
    source 2
    target 3
    bw 17
  ]
  edge [
    source 2
    target 4
    bw 39
  ]
  edge [
    source 3
    target 4
    bw 0
  ]
  edge [
    source 3
    target 6
    bw 50
  ]
  edge [
    source 3
    target 7
    bw 41
  ]
  edge [
    source 3
    target 8
    bw 41
  ]
  edge [
    source 4
    target 5
    bw 31
  ]
  edge [
    source 4
    target 7
    bw 14
  ]
  edge [
    source 5
    target 7
    bw 33
  ]
  edge [
    source 5
    target 8
    bw 50
  ]
  edge [
    source 7
    target 8
    bw 45
  ]
]
