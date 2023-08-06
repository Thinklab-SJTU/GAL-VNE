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
  id 827
  arrival_time 8227.0
  lifetime 129.49690712841655
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 35
  ]
  node [
    id 1
    label "1"
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 17
  ]
  node [
    id 3
    label "3"
    cpu 11
  ]
  node [
    id 4
    label "4"
    cpu 9
  ]
  node [
    id 5
    label "5"
    cpu 36
  ]
  node [
    id 6
    label "6"
    cpu 48
  ]
  node [
    id 7
    label "7"
    cpu 21
  ]
  edge [
    source 0
    target 1
    bw 11
  ]
  edge [
    source 0
    target 3
    bw 0
  ]
  edge [
    source 0
    target 6
    bw 34
  ]
  edge [
    source 0
    target 7
    bw 28
  ]
  edge [
    source 1
    target 3
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 43
  ]
  edge [
    source 1
    target 7
    bw 9
  ]
  edge [
    source 2
    target 5
    bw 29
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 3
    target 5
    bw 24
  ]
  edge [
    source 3
    target 7
    bw 6
  ]
  edge [
    source 4
    target 5
    bw 45
  ]
  edge [
    source 4
    target 7
    bw 23
  ]
]