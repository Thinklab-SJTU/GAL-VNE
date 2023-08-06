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
  id 653
  arrival_time 6563.0
  lifetime 684.140299999699
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 7
  ]
  node [
    id 1
    label "1"
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 42
  ]
  node [
    id 3
    label "3"
    cpu 43
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 9
  ]
  node [
    id 6
    label "6"
    cpu 39
  ]
  edge [
    source 0
    target 2
    bw 44
  ]
  edge [
    source 0
    target 4
    bw 12
  ]
  edge [
    source 0
    target 5
    bw 28
  ]
  edge [
    source 0
    target 6
    bw 45
  ]
  edge [
    source 1
    target 4
    bw 49
  ]
  edge [
    source 2
    target 3
    bw 43
  ]
  edge [
    source 2
    target 4
    bw 9
  ]
  edge [
    source 3
    target 4
    bw 26
  ]
  edge [
    source 3
    target 6
    bw 38
  ]
  edge [
    source 4
    target 5
    bw 44
  ]
]
