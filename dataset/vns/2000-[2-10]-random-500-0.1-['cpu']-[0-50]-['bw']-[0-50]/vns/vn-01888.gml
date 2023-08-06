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
  id 1888
  arrival_time 18828.0
  lifetime 144.73125472227048
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 16
  ]
  node [
    id 1
    label "1"
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 40
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 17
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  edge [
    source 0
    target 2
    bw 43
  ]
  edge [
    source 1
    target 2
    bw 24
  ]
  edge [
    source 1
    target 3
    bw 10
  ]
  edge [
    source 1
    target 5
    bw 44
  ]
  edge [
    source 2
    target 3
    bw 15
  ]
  edge [
    source 2
    target 4
    bw 30
  ]
  edge [
    source 2
    target 6
    bw 10
  ]
  edge [
    source 3
    target 4
    bw 34
  ]
  edge [
    source 3
    target 6
    bw 11
  ]
  edge [
    source 4
    target 5
    bw 13
  ]
  edge [
    source 4
    target 6
    bw 33
  ]
  edge [
    source 5
    target 6
    bw 46
  ]
]
