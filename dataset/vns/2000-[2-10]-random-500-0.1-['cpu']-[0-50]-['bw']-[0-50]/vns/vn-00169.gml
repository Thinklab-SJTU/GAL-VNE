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
  id 169
  arrival_time 1713.0
  lifetime 743.5798317693468
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 21
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 11
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 32
  ]
  node [
    id 6
    label "6"
    cpu 1
  ]
  edge [
    source 0
    target 3
    bw 17
  ]
  edge [
    source 0
    target 5
    bw 9
  ]
  edge [
    source 0
    target 6
    bw 16
  ]
  edge [
    source 1
    target 5
    bw 12
  ]
  edge [
    source 2
    target 3
    bw 48
  ]
  edge [
    source 2
    target 5
    bw 25
  ]
  edge [
    source 3
    target 5
    bw 35
  ]
  edge [
    source 3
    target 6
    bw 1
  ]
  edge [
    source 4
    target 5
    bw 39
  ]
  edge [
    source 4
    target 6
    bw 35
  ]
]
