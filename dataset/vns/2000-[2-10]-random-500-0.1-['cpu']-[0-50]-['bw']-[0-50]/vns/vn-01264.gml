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
  id 1264
  arrival_time 12629.0
  lifetime 22.14712870393769
  num_nodes 7
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
    cpu 33
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 6
  ]
  node [
    id 6
    label "6"
    cpu 49
  ]
  edge [
    source 0
    target 1
    bw 0
  ]
  edge [
    source 0
    target 5
    bw 29
  ]
  edge [
    source 0
    target 6
    bw 25
  ]
  edge [
    source 1
    target 3
    bw 24
  ]
  edge [
    source 1
    target 5
    bw 41
  ]
  edge [
    source 2
    target 5
    bw 3
  ]
  edge [
    source 3
    target 4
    bw 49
  ]
  edge [
    source 5
    target 6
    bw 16
  ]
]
