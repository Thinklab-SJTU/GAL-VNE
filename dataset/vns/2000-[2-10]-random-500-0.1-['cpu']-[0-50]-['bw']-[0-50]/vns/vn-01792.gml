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
  id 1792
  arrival_time 17900.0
  lifetime 661.2339037535993
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 48
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  node [
    id 5
    label "5"
    cpu 26
  ]
  node [
    id 6
    label "6"
    cpu 19
  ]
  edge [
    source 0
    target 5
    bw 50
  ]
  edge [
    source 0
    target 6
    bw 14
  ]
  edge [
    source 1
    target 2
    bw 24
  ]
  edge [
    source 1
    target 4
    bw 1
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 6
    bw 21
  ]
  edge [
    source 2
    target 4
    bw 36
  ]
  edge [
    source 2
    target 5
    bw 17
  ]
  edge [
    source 2
    target 6
    bw 10
  ]
  edge [
    source 3
    target 4
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 26
  ]
  edge [
    source 4
    target 5
    bw 11
  ]
  edge [
    source 4
    target 6
    bw 40
  ]
  edge [
    source 5
    target 6
    bw 44
  ]
]
