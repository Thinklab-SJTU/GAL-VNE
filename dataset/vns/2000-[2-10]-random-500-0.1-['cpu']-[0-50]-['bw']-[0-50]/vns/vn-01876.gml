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
  id 1876
  arrival_time 18718.0
  lifetime 145.40102829836619
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 28
  ]
  node [
    id 1
    label "1"
    cpu 20
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 35
  ]
  node [
    id 4
    label "4"
    cpu 8
  ]
  edge [
    source 0
    target 1
    bw 39
  ]
  edge [
    source 0
    target 4
    bw 6
  ]
  edge [
    source 1
    target 2
    bw 10
  ]
  edge [
    source 1
    target 3
    bw 43
  ]
  edge [
    source 1
    target 4
    bw 46
  ]
  edge [
    source 2
    target 3
    bw 46
  ]
]
