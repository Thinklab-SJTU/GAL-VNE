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
  id 754
  arrival_time 7566.0
  lifetime 565.0823206449808
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 44
  ]
  node [
    id 2
    label "2"
    cpu 41
  ]
  node [
    id 3
    label "3"
    cpu 29
  ]
  node [
    id 4
    label "4"
    cpu 26
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 23
  ]
  edge [
    source 0
    target 2
    bw 27
  ]
  edge [
    source 0
    target 4
    bw 48
  ]
  edge [
    source 0
    target 5
    bw 12
  ]
  edge [
    source 1
    target 2
    bw 9
  ]
  edge [
    source 1
    target 6
    bw 24
  ]
  edge [
    source 2
    target 3
    bw 40
  ]
  edge [
    source 3
    target 5
    bw 47
  ]
  edge [
    source 3
    target 6
    bw 13
  ]
  edge [
    source 4
    target 5
    bw 25
  ]
  edge [
    source 4
    target 6
    bw 4
  ]
]
