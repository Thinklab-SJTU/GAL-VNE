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
  id 690
  arrival_time 6943.0
  lifetime 2338.569406774741
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 12
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 48
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 28
  ]
  node [
    id 6
    label "6"
    cpu 21
  ]
  node [
    id 7
    label "7"
    cpu 26
  ]
  edge [
    source 0
    target 1
    bw 45
  ]
  edge [
    source 0
    target 2
    bw 27
  ]
  edge [
    source 0
    target 3
    bw 33
  ]
  edge [
    source 0
    target 4
    bw 48
  ]
  edge [
    source 0
    target 6
    bw 32
  ]
  edge [
    source 1
    target 3
    bw 17
  ]
  edge [
    source 1
    target 5
    bw 44
  ]
  edge [
    source 2
    target 3
    bw 3
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 2
    target 6
    bw 34
  ]
  edge [
    source 2
    target 7
    bw 17
  ]
  edge [
    source 3
    target 4
    bw 1
  ]
  edge [
    source 3
    target 5
    bw 3
  ]
]