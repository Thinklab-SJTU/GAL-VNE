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
  id 247
  arrival_time 2494.0
  lifetime 19.12993697310592
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 43
  ]
  node [
    id 1
    label "1"
    cpu 29
  ]
  node [
    id 2
    label "2"
    cpu 35
  ]
  node [
    id 3
    label "3"
    cpu 10
  ]
  node [
    id 4
    label "4"
    cpu 14
  ]
  node [
    id 5
    label "5"
    cpu 48
  ]
  node [
    id 6
    label "6"
    cpu 33
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  node [
    id 8
    label "8"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 8
  ]
  edge [
    source 0
    target 3
    bw 1
  ]
  edge [
    source 0
    target 5
    bw 45
  ]
  edge [
    source 0
    target 7
    bw 50
  ]
  edge [
    source 0
    target 8
    bw 13
  ]
  edge [
    source 1
    target 2
    bw 15
  ]
  edge [
    source 1
    target 3
    bw 19
  ]
  edge [
    source 1
    target 4
    bw 42
  ]
  edge [
    source 1
    target 7
    bw 14
  ]
  edge [
    source 3
    target 4
    bw 33
  ]
  edge [
    source 3
    target 7
    bw 34
  ]
  edge [
    source 4
    target 7
    bw 35
  ]
  edge [
    source 5
    target 8
    bw 17
  ]
  edge [
    source 6
    target 7
    bw 47
  ]
  edge [
    source 6
    target 8
    bw 3
  ]
]
