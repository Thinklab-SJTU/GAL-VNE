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
  id 1233
  arrival_time 12304.0
  lifetime 263.65511760786524
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 21
  ]
  node [
    id 1
    label "1"
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 3
  ]
  node [
    id 3
    label "3"
    cpu 40
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 24
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 30
  ]
  node [
    id 9
    label "9"
    cpu 41
  ]
  edge [
    source 0
    target 1
    bw 26
  ]
  edge [
    source 0
    target 2
    bw 35
  ]
  edge [
    source 0
    target 3
    bw 31
  ]
  edge [
    source 0
    target 5
    bw 38
  ]
  edge [
    source 0
    target 6
    bw 50
  ]
  edge [
    source 0
    target 7
    bw 32
  ]
  edge [
    source 1
    target 2
    bw 11
  ]
  edge [
    source 1
    target 3
    bw 25
  ]
  edge [
    source 1
    target 5
    bw 46
  ]
  edge [
    source 1
    target 7
    bw 25
  ]
  edge [
    source 1
    target 9
    bw 9
  ]
  edge [
    source 2
    target 4
    bw 32
  ]
  edge [
    source 2
    target 5
    bw 42
  ]
  edge [
    source 2
    target 7
    bw 17
  ]
  edge [
    source 2
    target 8
    bw 38
  ]
  edge [
    source 3
    target 5
    bw 13
  ]
  edge [
    source 3
    target 8
    bw 16
  ]
  edge [
    source 4
    target 5
    bw 26
  ]
  edge [
    source 5
    target 7
    bw 42
  ]
  edge [
    source 8
    target 9
    bw 24
  ]
]
