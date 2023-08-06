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
  id 209
  arrival_time 2099.0
  lifetime 194.16143311791137
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 33
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 42
  ]
  node [
    id 6
    label "6"
    cpu 30
  ]
  node [
    id 7
    label "7"
    cpu 16
  ]
  edge [
    source 0
    target 4
    bw 36
  ]
  edge [
    source 1
    target 3
    bw 33
  ]
  edge [
    source 1
    target 5
    bw 9
  ]
  edge [
    source 1
    target 6
    bw 48
  ]
  edge [
    source 1
    target 7
    bw 49
  ]
  edge [
    source 2
    target 3
    bw 26
  ]
  edge [
    source 2
    target 6
    bw 36
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 7
    bw 19
  ]
  edge [
    source 4
    target 5
    bw 0
  ]
  edge [
    source 5
    target 6
    bw 44
  ]
]
