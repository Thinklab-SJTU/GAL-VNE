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
  id 1236
  arrival_time 12341.0
  lifetime 137.20388568583104
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 4
  ]
  node [
    id 5
    label "5"
    cpu 22
  ]
  node [
    id 6
    label "6"
    cpu 33
  ]
  edge [
    source 0
    target 2
    bw 13
  ]
  edge [
    source 0
    target 3
    bw 20
  ]
  edge [
    source 1
    target 2
    bw 40
  ]
  edge [
    source 1
    target 4
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 3
  ]
  edge [
    source 1
    target 6
    bw 27
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 3
    target 5
    bw 33
  ]
  edge [
    source 3
    target 6
    bw 30
  ]
]
