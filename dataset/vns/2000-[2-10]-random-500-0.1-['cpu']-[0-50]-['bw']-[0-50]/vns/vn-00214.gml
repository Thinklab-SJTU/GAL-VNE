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
  id 214
  arrival_time 2159.0
  lifetime 137.78643469461954
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 24
  ]
  node [
    id 1
    label "1"
    cpu 20
  ]
  node [
    id 2
    label "2"
    cpu 34
  ]
  node [
    id 3
    label "3"
    cpu 29
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 28
  ]
  node [
    id 6
    label "6"
    cpu 30
  ]
  node [
    id 7
    label "7"
    cpu 25
  ]
  edge [
    source 0
    target 1
    bw 20
  ]
  edge [
    source 0
    target 2
    bw 19
  ]
  edge [
    source 0
    target 4
    bw 38
  ]
  edge [
    source 0
    target 6
    bw 10
  ]
  edge [
    source 1
    target 2
    bw 30
  ]
  edge [
    source 1
    target 5
    bw 33
  ]
  edge [
    source 1
    target 7
    bw 0
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 2
    target 6
    bw 29
  ]
  edge [
    source 3
    target 5
    bw 4
  ]
  edge [
    source 3
    target 7
    bw 43
  ]
  edge [
    source 4
    target 6
    bw 40
  ]
  edge [
    source 6
    target 7
    bw 48
  ]
]
