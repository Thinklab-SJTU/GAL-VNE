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
  id 1024
  arrival_time 10209.0
  lifetime 88.73552066986605
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 9
  ]
  node [
    id 1
    label "1"
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 1
  ]
  node [
    id 3
    label "3"
    cpu 27
  ]
  node [
    id 4
    label "4"
    cpu 38
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  edge [
    source 0
    target 2
    bw 23
  ]
  edge [
    source 0
    target 3
    bw 34
  ]
  edge [
    source 0
    target 5
    bw 17
  ]
  edge [
    source 1
    target 4
    bw 40
  ]
  edge [
    source 1
    target 5
    bw 35
  ]
  edge [
    source 2
    target 5
    bw 28
  ]
  edge [
    source 3
    target 5
    bw 36
  ]
  edge [
    source 4
    target 5
    bw 18
  ]
]
