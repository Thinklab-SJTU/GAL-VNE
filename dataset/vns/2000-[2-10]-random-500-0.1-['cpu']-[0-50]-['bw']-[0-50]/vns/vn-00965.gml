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
  id 965
  arrival_time 9609.0
  lifetime 2779.48964633773
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
    cpu 22
  ]
  node [
    id 2
    label "2"
    cpu 4
  ]
  node [
    id 3
    label "3"
    cpu 7
  ]
  node [
    id 4
    label "4"
    cpu 33
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  edge [
    source 0
    target 1
    bw 18
  ]
  edge [
    source 0
    target 3
    bw 11
  ]
  edge [
    source 0
    target 6
    bw 21
  ]
  edge [
    source 1
    target 2
    bw 48
  ]
  edge [
    source 1
    target 5
    bw 49
  ]
  edge [
    source 1
    target 6
    bw 1
  ]
  edge [
    source 2
    target 3
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 22
  ]
  edge [
    source 2
    target 5
    bw 26
  ]
  edge [
    source 3
    target 6
    bw 36
  ]
]
