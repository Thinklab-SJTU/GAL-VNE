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
  id 1307
  arrival_time 13078.0
  lifetime 194.7191097426879
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 39
  ]
  node [
    id 5
    label "5"
    cpu 30
  ]
  node [
    id 6
    label "6"
    cpu 44
  ]
  node [
    id 7
    label "7"
    cpu 43
  ]
  node [
    id 8
    label "8"
    cpu 25
  ]
  edge [
    source 0
    target 1
    bw 42
  ]
  edge [
    source 0
    target 2
    bw 34
  ]
  edge [
    source 0
    target 3
    bw 32
  ]
  edge [
    source 0
    target 5
    bw 48
  ]
  edge [
    source 0
    target 7
    bw 46
  ]
  edge [
    source 0
    target 8
    bw 40
  ]
  edge [
    source 1
    target 4
    bw 29
  ]
  edge [
    source 1
    target 6
    bw 8
  ]
  edge [
    source 1
    target 7
    bw 22
  ]
  edge [
    source 2
    target 3
    bw 27
  ]
  edge [
    source 2
    target 4
    bw 38
  ]
  edge [
    source 2
    target 5
    bw 19
  ]
  edge [
    source 2
    target 6
    bw 24
  ]
  edge [
    source 2
    target 7
    bw 35
  ]
  edge [
    source 3
    target 4
    bw 46
  ]
  edge [
    source 3
    target 6
    bw 45
  ]
  edge [
    source 3
    target 8
    bw 36
  ]
  edge [
    source 4
    target 5
    bw 36
  ]
  edge [
    source 4
    target 8
    bw 50
  ]
  edge [
    source 5
    target 6
    bw 16
  ]
  edge [
    source 5
    target 7
    bw 29
  ]
  edge [
    source 5
    target 8
    bw 39
  ]
  edge [
    source 6
    target 7
    bw 27
  ]
  edge [
    source 6
    target 8
    bw 16
  ]
  edge [
    source 7
    target 8
    bw 14
  ]
]
