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
  id 873
  arrival_time 8705.0
  lifetime 395.4310942087472
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 29
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 49
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 37
  ]
  node [
    id 5
    label "5"
    cpu 13
  ]
  edge [
    source 0
    target 1
    bw 43
  ]
  edge [
    source 0
    target 3
    bw 15
  ]
  edge [
    source 0
    target 4
    bw 47
  ]
  edge [
    source 0
    target 5
    bw 2
  ]
  edge [
    source 1
    target 2
    bw 8
  ]
  edge [
    source 1
    target 3
    bw 3
  ]
  edge [
    source 1
    target 4
    bw 11
  ]
  edge [
    source 1
    target 5
    bw 38
  ]
  edge [
    source 3
    target 4
    bw 16
  ]
  edge [
    source 3
    target 5
    bw 47
  ]
]
