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
  id 1849
  arrival_time 18440.0
  lifetime 249.57918435338195
  num_nodes 7
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
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 19
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 7
  ]
  node [
    id 6
    label "6"
    cpu 16
  ]
  edge [
    source 0
    target 3
    bw 28
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 1
    target 3
    bw 34
  ]
  edge [
    source 1
    target 6
    bw 20
  ]
  edge [
    source 2
    target 5
    bw 50
  ]
  edge [
    source 2
    target 6
    bw 25
  ]
  edge [
    source 3
    target 5
    bw 6
  ]
  edge [
    source 4
    target 6
    bw 8
  ]
  edge [
    source 5
    target 6
    bw 7
  ]
]
