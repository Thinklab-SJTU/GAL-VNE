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
  id 89
  arrival_time 936.0
  lifetime 891.2069590762352
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 46
  ]
  edge [
    source 0
    target 1
    bw 16
  ]
  edge [
    source 0
    target 2
    bw 22
  ]
  edge [
    source 0
    target 3
    bw 26
  ]
  edge [
    source 0
    target 4
    bw 14
  ]
  edge [
    source 0
    target 5
    bw 2
  ]
  edge [
    source 1
    target 4
    bw 18
  ]
  edge [
    source 1
    target 5
    bw 2
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 3
    target 5
    bw 22
  ]
  edge [
    source 4
    target 5
    bw 23
  ]
]
