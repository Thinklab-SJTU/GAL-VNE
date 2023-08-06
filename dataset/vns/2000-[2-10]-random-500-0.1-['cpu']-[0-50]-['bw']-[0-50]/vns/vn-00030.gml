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
  id 30
  arrival_time 333.0
  lifetime 907.9932073574603
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 17
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 5
  ]
  node [
    id 4
    label "4"
    cpu 48
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  edge [
    source 0
    target 1
    bw 19
  ]
  edge [
    source 0
    target 4
    bw 14
  ]
  edge [
    source 0
    target 5
    bw 12
  ]
  edge [
    source 1
    target 4
    bw 34
  ]
  edge [
    source 1
    target 6
    bw 36
  ]
  edge [
    source 2
    target 5
    bw 24
  ]
  edge [
    source 2
    target 6
    bw 24
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 4
    target 5
    bw 49
  ]
  edge [
    source 4
    target 6
    bw 7
  ]
]
