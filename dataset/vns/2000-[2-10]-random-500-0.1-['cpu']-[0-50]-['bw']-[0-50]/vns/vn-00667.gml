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
  id 667
  arrival_time 6710.0
  lifetime 285.2312068330253
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 22
  ]
  node [
    id 1
    label "1"
    cpu 43
  ]
  node [
    id 2
    label "2"
    cpu 41
  ]
  node [
    id 3
    label "3"
    cpu 34
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 37
  ]
  edge [
    source 0
    target 1
    bw 23
  ]
  edge [
    source 0
    target 2
    bw 10
  ]
  edge [
    source 1
    target 4
    bw 14
  ]
  edge [
    source 1
    target 6
    bw 36
  ]
  edge [
    source 2
    target 3
    bw 17
  ]
  edge [
    source 2
    target 6
    bw 19
  ]
  edge [
    source 3
    target 5
    bw 0
  ]
  edge [
    source 3
    target 6
    bw 28
  ]
  edge [
    source 4
    target 5
    bw 44
  ]
  edge [
    source 4
    target 6
    bw 39
  ]
  edge [
    source 5
    target 6
    bw 12
  ]
]
