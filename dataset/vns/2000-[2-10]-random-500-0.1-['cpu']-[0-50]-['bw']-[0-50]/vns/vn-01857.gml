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
  id 1857
  arrival_time 18528.0
  lifetime 430.31961876171135
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 49
  ]
  node [
    id 1
    label "1"
    cpu 28
  ]
  node [
    id 2
    label "2"
    cpu 16
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 1
  ]
  node [
    id 5
    label "5"
    cpu 14
  ]
  node [
    id 6
    label "6"
    cpu 4
  ]
  node [
    id 7
    label "7"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 26
  ]
  edge [
    source 0
    target 3
    bw 27
  ]
  edge [
    source 0
    target 4
    bw 46
  ]
  edge [
    source 1
    target 5
    bw 6
  ]
  edge [
    source 2
    target 3
    bw 12
  ]
  edge [
    source 2
    target 4
    bw 24
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 3
    target 4
    bw 31
  ]
  edge [
    source 3
    target 6
    bw 39
  ]
  edge [
    source 5
    target 7
    bw 19
  ]
  edge [
    source 6
    target 7
    bw 33
  ]
]
