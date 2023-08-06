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
  id 1516
  arrival_time 15136.0
  lifetime 245.3437643733893
  num_nodes 8
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
    cpu 4
  ]
  node [
    id 2
    label "2"
    cpu 31
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 25
  ]
  node [
    id 6
    label "6"
    cpu 23
  ]
  node [
    id 7
    label "7"
    cpu 29
  ]
  edge [
    source 0
    target 1
    bw 24
  ]
  edge [
    source 0
    target 2
    bw 9
  ]
  edge [
    source 0
    target 7
    bw 20
  ]
  edge [
    source 1
    target 4
    bw 13
  ]
  edge [
    source 1
    target 5
    bw 1
  ]
  edge [
    source 1
    target 6
    bw 45
  ]
  edge [
    source 2
    target 5
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 35
  ]
  edge [
    source 3
    target 6
    bw 15
  ]
  edge [
    source 4
    target 5
    bw 6
  ]
  edge [
    source 4
    target 7
    bw 34
  ]
  edge [
    source 5
    target 6
    bw 28
  ]
]
