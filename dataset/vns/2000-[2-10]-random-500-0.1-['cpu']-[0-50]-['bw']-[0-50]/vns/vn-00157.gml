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
  id 157
  arrival_time 1581.0
  lifetime 509.1544967984948
  num_nodes 9
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
    cpu 28
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 27
  ]
  node [
    id 7
    label "7"
    cpu 36
  ]
  node [
    id 8
    label "8"
    cpu 38
  ]
  edge [
    source 0
    target 2
    bw 9
  ]
  edge [
    source 0
    target 4
    bw 35
  ]
  edge [
    source 0
    target 5
    bw 8
  ]
  edge [
    source 1
    target 2
    bw 30
  ]
  edge [
    source 1
    target 4
    bw 3
  ]
  edge [
    source 1
    target 8
    bw 46
  ]
  edge [
    source 2
    target 6
    bw 29
  ]
  edge [
    source 2
    target 7
    bw 8
  ]
  edge [
    source 3
    target 4
    bw 8
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 20
  ]
  edge [
    source 4
    target 5
    bw 30
  ]
  edge [
    source 4
    target 6
    bw 14
  ]
  edge [
    source 5
    target 7
    bw 30
  ]
  edge [
    source 5
    target 8
    bw 1
  ]
  edge [
    source 7
    target 8
    bw 33
  ]
]
