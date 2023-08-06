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
  id 1960
  arrival_time 19520.0
  lifetime 13.18886299578224
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 48
  ]
  node [
    id 1
    label "1"
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 12
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 23
  ]
  node [
    id 5
    label "5"
    cpu 27
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  node [
    id 7
    label "7"
    cpu 33
  ]
  node [
    id 8
    label "8"
    cpu 20
  ]
  edge [
    source 0
    target 1
    bw 3
  ]
  edge [
    source 0
    target 5
    bw 44
  ]
  edge [
    source 0
    target 8
    bw 19
  ]
  edge [
    source 1
    target 3
    bw 43
  ]
  edge [
    source 1
    target 4
    bw 39
  ]
  edge [
    source 1
    target 7
    bw 35
  ]
  edge [
    source 2
    target 4
    bw 42
  ]
  edge [
    source 2
    target 6
    bw 30
  ]
  edge [
    source 2
    target 7
    bw 0
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
  edge [
    source 3
    target 6
    bw 39
  ]
  edge [
    source 4
    target 6
    bw 10
  ]
  edge [
    source 4
    target 7
    bw 5
  ]
  edge [
    source 4
    target 8
    bw 6
  ]
  edge [
    source 5
    target 6
    bw 10
  ]
  edge [
    source 5
    target 7
    bw 11
  ]
  edge [
    source 6
    target 7
    bw 8
  ]
  edge [
    source 6
    target 8
    bw 17
  ]
]
