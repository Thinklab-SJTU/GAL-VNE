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
  id 251
  arrival_time 2532.0
  lifetime 695.4808389475497
  num_nodes 6
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
    cpu 50
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 31
  ]
  edge [
    source 0
    target 2
    bw 44
  ]
  edge [
    source 0
    target 4
    bw 22
  ]
  edge [
    source 0
    target 5
    bw 31
  ]
  edge [
    source 1
    target 2
    bw 22
  ]
  edge [
    source 1
    target 3
    bw 35
  ]
  edge [
    source 1
    target 4
    bw 33
  ]
  edge [
    source 2
    target 4
    bw 33
  ]
  edge [
    source 2
    target 5
    bw 14
  ]
  edge [
    source 3
    target 4
    bw 9
  ]
  edge [
    source 4
    target 5
    bw 5
  ]
]
