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
  id 1012
  arrival_time 10097.0
  lifetime 51.15608873830606
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 1
  ]
  node [
    id 1
    label "1"
    cpu 43
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 23
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 46
  ]
  node [
    id 6
    label "6"
    cpu 7
  ]
  node [
    id 7
    label "7"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 7
  ]
  edge [
    source 0
    target 2
    bw 43
  ]
  edge [
    source 0
    target 3
    bw 0
  ]
  edge [
    source 0
    target 4
    bw 8
  ]
  edge [
    source 0
    target 6
    bw 27
  ]
  edge [
    source 1
    target 2
    bw 36
  ]
  edge [
    source 1
    target 4
    bw 32
  ]
  edge [
    source 1
    target 5
    bw 28
  ]
  edge [
    source 1
    target 6
    bw 27
  ]
  edge [
    source 2
    target 6
    bw 12
  ]
  edge [
    source 3
    target 4
    bw 18
  ]
  edge [
    source 3
    target 6
    bw 3
  ]
  edge [
    source 3
    target 7
    bw 19
  ]
  edge [
    source 4
    target 5
    bw 13
  ]
  edge [
    source 4
    target 7
    bw 26
  ]
  edge [
    source 5
    target 6
    bw 33
  ]
  edge [
    source 5
    target 7
    bw 4
  ]
]
