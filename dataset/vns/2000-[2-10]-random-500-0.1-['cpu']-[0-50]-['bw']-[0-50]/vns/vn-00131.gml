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
  id 131
  arrival_time 1316.0
  lifetime 270.89149663793904
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 31
  ]
  node [
    id 1
    label "1"
    cpu 23
  ]
  node [
    id 2
    label "2"
    cpu 17
  ]
  node [
    id 3
    label "3"
    cpu 49
  ]
  node [
    id 4
    label "4"
    cpu 20
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  node [
    id 6
    label "6"
    cpu 12
  ]
  edge [
    source 0
    target 6
    bw 37
  ]
  edge [
    source 1
    target 3
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 1
    target 6
    bw 47
  ]
  edge [
    source 2
    target 4
    bw 5
  ]
  edge [
    source 2
    target 5
    bw 49
  ]
  edge [
    source 3
    target 4
    bw 50
  ]
  edge [
    source 3
    target 5
    bw 24
  ]
  edge [
    source 3
    target 6
    bw 10
  ]
  edge [
    source 4
    target 6
    bw 40
  ]
  edge [
    source 5
    target 6
    bw 17
  ]
]
