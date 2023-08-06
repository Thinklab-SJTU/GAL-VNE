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
  id 1275
  arrival_time 12744.0
  lifetime 907.1685931432391
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 45
  ]
  node [
    id 1
    label "1"
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 11
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 31
  ]
  edge [
    source 0
    target 1
    bw 47
  ]
  edge [
    source 0
    target 3
    bw 25
  ]
  edge [
    source 0
    target 4
    bw 24
  ]
  edge [
    source 0
    target 5
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 29
  ]
  edge [
    source 2
    target 6
    bw 44
  ]
  edge [
    source 3
    target 4
    bw 41
  ]
  edge [
    source 3
    target 6
    bw 7
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 6
    bw 45
  ]
]
