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
  id 1816
  arrival_time 18108.0
  lifetime 1005.7610606839087
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 47
  ]
  node [
    id 1
    label "1"
    cpu 32
  ]
  node [
    id 2
    label "2"
    cpu 33
  ]
  node [
    id 3
    label "3"
    cpu 37
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 49
  ]
  node [
    id 6
    label "6"
    cpu 23
  ]
  edge [
    source 0
    target 1
    bw 15
  ]
  edge [
    source 0
    target 2
    bw 1
  ]
  edge [
    source 0
    target 3
    bw 1
  ]
  edge [
    source 0
    target 4
    bw 47
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
    bw 32
  ]
  edge [
    source 1
    target 5
    bw 38
  ]
  edge [
    source 1
    target 6
    bw 19
  ]
  edge [
    source 2
    target 3
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 45
  ]
  edge [
    source 2
    target 6
    bw 50
  ]
  edge [
    source 3
    target 5
    bw 41
  ]
  edge [
    source 5
    target 6
    bw 13
  ]
]
