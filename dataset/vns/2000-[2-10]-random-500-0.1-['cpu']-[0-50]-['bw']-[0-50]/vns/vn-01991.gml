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
  id 1991
  arrival_time 19815.0
  lifetime 477.98896471289333
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 31
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
    cpu 35
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 4
  ]
  edge [
    source 0
    target 1
    bw 16
  ]
  edge [
    source 0
    target 2
    bw 34
  ]
  edge [
    source 0
    target 3
    bw 16
  ]
  edge [
    source 0
    target 6
    bw 12
  ]
  edge [
    source 1
    target 3
    bw 28
  ]
  edge [
    source 1
    target 4
    bw 17
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 2
    target 4
    bw 41
  ]
  edge [
    source 2
    target 5
    bw 31
  ]
  edge [
    source 3
    target 4
    bw 35
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 3
    target 6
    bw 42
  ]
  edge [
    source 4
    target 6
    bw 8
  ]
  edge [
    source 5
    target 6
    bw 8
  ]
]
