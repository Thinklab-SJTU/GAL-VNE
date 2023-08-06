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
  id 558
  arrival_time 5611.0
  lifetime 209.01446106385146
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
    cpu 39
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 23
  ]
  node [
    id 5
    label "5"
    cpu 46
  ]
  edge [
    source 0
    target 1
    bw 29
  ]
  edge [
    source 0
    target 4
    bw 36
  ]
  edge [
    source 1
    target 2
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 41
  ]
  edge [
    source 2
    target 5
    bw 23
  ]
  edge [
    source 3
    target 4
    bw 3
  ]
  edge [
    source 3
    target 5
    bw 8
  ]
]
