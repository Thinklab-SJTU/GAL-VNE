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
  id 97
  arrival_time 1007.0
  lifetime 259.40871469348224
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 13
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 32
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 50
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 1
  ]
  node [
    id 8
    label "8"
    cpu 19
  ]
  edge [
    source 0
    target 3
    bw 33
  ]
  edge [
    source 0
    target 4
    bw 3
  ]
  edge [
    source 0
    target 5
    bw 44
  ]
  edge [
    source 0
    target 6
    bw 31
  ]
  edge [
    source 0
    target 8
    bw 12
  ]
  edge [
    source 1
    target 3
    bw 26
  ]
  edge [
    source 1
    target 4
    bw 26
  ]
  edge [
    source 1
    target 5
    bw 12
  ]
  edge [
    source 1
    target 6
    bw 47
  ]
  edge [
    source 1
    target 7
    bw 45
  ]
  edge [
    source 2
    target 7
    bw 49
  ]
  edge [
    source 2
    target 8
    bw 22
  ]
  edge [
    source 3
    target 4
    bw 12
  ]
  edge [
    source 3
    target 5
    bw 31
  ]
  edge [
    source 4
    target 5
    bw 45
  ]
  edge [
    source 4
    target 6
    bw 34
  ]
  edge [
    source 4
    target 7
    bw 45
  ]
  edge [
    source 5
    target 7
    bw 44
  ]
  edge [
    source 7
    target 8
    bw 16
  ]
]
