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
  id 636
  arrival_time 6412.0
  lifetime 118.33786792124327
  num_nodes 8
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
    cpu 8
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 27
  ]
  node [
    id 5
    label "5"
    cpu 27
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 7
  ]
  edge [
    source 0
    target 2
    bw 0
  ]
  edge [
    source 0
    target 4
    bw 35
  ]
  edge [
    source 0
    target 5
    bw 14
  ]
  edge [
    source 0
    target 6
    bw 23
  ]
  edge [
    source 0
    target 7
    bw 42
  ]
  edge [
    source 1
    target 5
    bw 14
  ]
  edge [
    source 2
    target 3
    bw 40
  ]
  edge [
    source 2
    target 4
    bw 40
  ]
  edge [
    source 3
    target 5
    bw 6
  ]
  edge [
    source 3
    target 7
    bw 8
  ]
  edge [
    source 4
    target 6
    bw 19
  ]
  edge [
    source 4
    target 7
    bw 23
  ]
  edge [
    source 6
    target 7
    bw 41
  ]
]
