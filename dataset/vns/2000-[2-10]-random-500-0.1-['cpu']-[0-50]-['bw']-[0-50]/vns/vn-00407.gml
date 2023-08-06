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
  id 407
  arrival_time 4097.0
  lifetime 1116.8798658095302
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 2
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
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 49
  ]
  node [
    id 7
    label "7"
    cpu 22
  ]
  node [
    id 8
    label "8"
    cpu 39
  ]
  edge [
    source 0
    target 1
    bw 39
  ]
  edge [
    source 0
    target 3
    bw 46
  ]
  edge [
    source 0
    target 5
    bw 15
  ]
  edge [
    source 0
    target 7
    bw 30
  ]
  edge [
    source 1
    target 2
    bw 24
  ]
  edge [
    source 1
    target 3
    bw 17
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 2
    target 3
    bw 43
  ]
  edge [
    source 2
    target 4
    bw 4
  ]
  edge [
    source 2
    target 6
    bw 34
  ]
  edge [
    source 2
    target 8
    bw 40
  ]
  edge [
    source 3
    target 5
    bw 29
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 35
  ]
  edge [
    source 3
    target 8
    bw 48
  ]
  edge [
    source 7
    target 8
    bw 7
  ]
]
