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
  id 510
  arrival_time 5164.0
  lifetime 499.74778926718534
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 20
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 1
  ]
  node [
    id 3
    label "3"
    cpu 9
  ]
  node [
    id 4
    label "4"
    cpu 45
  ]
  node [
    id 5
    label "5"
    cpu 8
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 49
  ]
  node [
    id 8
    label "8"
    cpu 48
  ]
  node [
    id 9
    label "9"
    cpu 23
  ]
  edge [
    source 0
    target 4
    bw 37
  ]
  edge [
    source 0
    target 5
    bw 50
  ]
  edge [
    source 0
    target 7
    bw 20
  ]
  edge [
    source 0
    target 8
    bw 22
  ]
  edge [
    source 0
    target 9
    bw 9
  ]
  edge [
    source 1
    target 2
    bw 20
  ]
  edge [
    source 1
    target 3
    bw 7
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 7
    bw 46
  ]
  edge [
    source 1
    target 8
    bw 28
  ]
  edge [
    source 1
    target 9
    bw 33
  ]
  edge [
    source 2
    target 3
    bw 11
  ]
  edge [
    source 2
    target 6
    bw 4
  ]
  edge [
    source 2
    target 7
    bw 24
  ]
  edge [
    source 3
    target 5
    bw 5
  ]
  edge [
    source 3
    target 6
    bw 31
  ]
  edge [
    source 3
    target 8
    bw 49
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
  edge [
    source 4
    target 7
    bw 42
  ]
  edge [
    source 5
    target 6
    bw 6
  ]
  edge [
    source 5
    target 7
    bw 1
  ]
  edge [
    source 5
    target 8
    bw 42
  ]
  edge [
    source 6
    target 7
    bw 13
  ]
  edge [
    source 6
    target 8
    bw 8
  ]
  edge [
    source 6
    target 9
    bw 8
  ]
  edge [
    source 7
    target 9
    bw 48
  ]
  edge [
    source 8
    target 9
    bw 0
  ]
]
