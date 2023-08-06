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
  id 840
  arrival_time 8355.0
  lifetime 620.3361329160343
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 18
  ]
  node [
    id 1
    label "1"
    cpu 38
  ]
  node [
    id 2
    label "2"
    cpu 46
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 1
  ]
  node [
    id 5
    label "5"
    cpu 1
  ]
  node [
    id 6
    label "6"
    cpu 1
  ]
  edge [
    source 0
    target 2
    bw 3
  ]
  edge [
    source 0
    target 3
    bw 35
  ]
  edge [
    source 0
    target 5
    bw 23
  ]
  edge [
    source 0
    target 6
    bw 43
  ]
  edge [
    source 1
    target 3
    bw 47
  ]
  edge [
    source 1
    target 4
    bw 1
  ]
  edge [
    source 1
    target 6
    bw 26
  ]
  edge [
    source 2
    target 4
    bw 46
  ]
  edge [
    source 3
    target 5
    bw 8
  ]
  edge [
    source 3
    target 6
    bw 47
  ]
  edge [
    source 4
    target 5
    bw 23
  ]
  edge [
    source 4
    target 6
    bw 6
  ]
]
