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
  id 639
  arrival_time 6440.0
  lifetime 779.2142535427042
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 33
  ]
  node [
    id 2
    label "2"
    cpu 24
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 45
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 0
  ]
  edge [
    source 0
    target 1
    bw 27
  ]
  edge [
    source 0
    target 2
    bw 9
  ]
  edge [
    source 0
    target 3
    bw 39
  ]
  edge [
    source 0
    target 4
    bw 26
  ]
  edge [
    source 1
    target 3
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 0
  ]
  edge [
    source 1
    target 5
    bw 10
  ]
  edge [
    source 1
    target 6
    bw 3
  ]
  edge [
    source 2
    target 3
    bw 8
  ]
  edge [
    source 2
    target 4
    bw 25
  ]
  edge [
    source 2
    target 5
    bw 31
  ]
  edge [
    source 3
    target 4
    bw 0
  ]
  edge [
    source 3
    target 5
    bw 46
  ]
  edge [
    source 4
    target 5
    bw 10
  ]
  edge [
    source 5
    target 6
    bw 0
  ]
]
