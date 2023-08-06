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
  id 1514
  arrival_time 15116.0
  lifetime 669.9820422447724
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 41
  ]
  node [
    id 4
    label "4"
    cpu 9
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 3
  ]
  edge [
    source 0
    target 2
    bw 5
  ]
  edge [
    source 0
    target 4
    bw 20
  ]
  edge [
    source 0
    target 5
    bw 8
  ]
  edge [
    source 1
    target 2
    bw 19
  ]
  edge [
    source 1
    target 4
    bw 9
  ]
  edge [
    source 2
    target 3
    bw 24
  ]
  edge [
    source 2
    target 5
    bw 13
  ]
  edge [
    source 2
    target 6
    bw 45
  ]
  edge [
    source 3
    target 5
    bw 6
  ]
  edge [
    source 4
    target 5
    bw 24
  ]
]
