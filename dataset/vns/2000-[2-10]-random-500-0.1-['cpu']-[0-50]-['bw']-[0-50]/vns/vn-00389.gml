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
  id 389
  arrival_time 3928.0
  lifetime 974.9297587997968
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 2
  ]
  node [
    id 3
    label "3"
    cpu 12
  ]
  node [
    id 4
    label "4"
    cpu 33
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 14
  ]
  node [
    id 7
    label "7"
    cpu 7
  ]
  node [
    id 8
    label "8"
    cpu 7
  ]
  edge [
    source 0
    target 1
    bw 16
  ]
  edge [
    source 0
    target 2
    bw 1
  ]
  edge [
    source 0
    target 6
    bw 50
  ]
  edge [
    source 0
    target 7
    bw 25
  ]
  edge [
    source 1
    target 4
    bw 40
  ]
  edge [
    source 1
    target 7
    bw 5
  ]
  edge [
    source 1
    target 8
    bw 15
  ]
  edge [
    source 2
    target 6
    bw 31
  ]
  edge [
    source 2
    target 7
    bw 33
  ]
  edge [
    source 3
    target 4
    bw 45
  ]
  edge [
    source 3
    target 5
    bw 35
  ]
  edge [
    source 3
    target 6
    bw 11
  ]
  edge [
    source 3
    target 7
    bw 18
  ]
  edge [
    source 4
    target 7
    bw 29
  ]
  edge [
    source 4
    target 8
    bw 3
  ]
]
