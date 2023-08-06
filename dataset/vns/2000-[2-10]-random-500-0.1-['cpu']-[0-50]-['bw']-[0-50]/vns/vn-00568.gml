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
  id 568
  arrival_time 5728.0
  lifetime 37.48818087770701
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 40
  ]
  node [
    id 1
    label "1"
    cpu 37
  ]
  node [
    id 2
    label "2"
    cpu 32
  ]
  node [
    id 3
    label "3"
    cpu 44
  ]
  node [
    id 4
    label "4"
    cpu 41
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  node [
    id 6
    label "6"
    cpu 23
  ]
  edge [
    source 0
    target 6
    bw 34
  ]
  edge [
    source 1
    target 3
    bw 35
  ]
  edge [
    source 1
    target 5
    bw 49
  ]
  edge [
    source 1
    target 6
    bw 12
  ]
  edge [
    source 2
    target 3
    bw 44
  ]
  edge [
    source 2
    target 4
    bw 15
  ]
  edge [
    source 3
    target 4
    bw 43
  ]
  edge [
    source 3
    target 6
    bw 22
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
  edge [
    source 4
    target 6
    bw 22
  ]
  edge [
    source 5
    target 6
    bw 50
  ]
]
