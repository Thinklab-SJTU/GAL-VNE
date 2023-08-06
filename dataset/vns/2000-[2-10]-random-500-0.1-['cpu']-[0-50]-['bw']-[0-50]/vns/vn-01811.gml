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
  id 1811
  arrival_time 18064.0
  lifetime 199.54078051311544
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 42
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 20
  ]
  node [
    id 7
    label "7"
    cpu 45
  ]
  node [
    id 8
    label "8"
    cpu 24
  ]
  edge [
    source 0
    target 2
    bw 22
  ]
  edge [
    source 0
    target 6
    bw 39
  ]
  edge [
    source 0
    target 7
    bw 47
  ]
  edge [
    source 1
    target 2
    bw 39
  ]
  edge [
    source 1
    target 5
    bw 38
  ]
  edge [
    source 1
    target 6
    bw 15
  ]
  edge [
    source 1
    target 7
    bw 50
  ]
  edge [
    source 1
    target 8
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 7
  ]
  edge [
    source 2
    target 5
    bw 6
  ]
  edge [
    source 3
    target 5
    bw 50
  ]
  edge [
    source 3
    target 7
    bw 42
  ]
  edge [
    source 3
    target 8
    bw 46
  ]
  edge [
    source 4
    target 6
    bw 37
  ]
  edge [
    source 4
    target 8
    bw 36
  ]
  edge [
    source 5
    target 6
    bw 47
  ]
]
