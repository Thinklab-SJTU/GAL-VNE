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
  id 1693
  arrival_time 16879.0
  lifetime 359.54870988645
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 24
  ]
  node [
    id 1
    label "1"
    cpu 18
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 34
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 42
  ]
  node [
    id 6
    label "6"
    cpu 4
  ]
  node [
    id 7
    label "7"
    cpu 20
  ]
  node [
    id 8
    label "8"
    cpu 12
  ]
  edge [
    source 0
    target 4
    bw 15
  ]
  edge [
    source 0
    target 8
    bw 18
  ]
  edge [
    source 1
    target 5
    bw 45
  ]
  edge [
    source 1
    target 6
    bw 36
  ]
  edge [
    source 2
    target 3
    bw 11
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 2
    target 6
    bw 3
  ]
  edge [
    source 2
    target 8
    bw 31
  ]
  edge [
    source 3
    target 6
    bw 42
  ]
  edge [
    source 4
    target 5
    bw 33
  ]
  edge [
    source 5
    target 6
    bw 49
  ]
  edge [
    source 5
    target 8
    bw 34
  ]
  edge [
    source 6
    target 7
    bw 44
  ]
  edge [
    source 6
    target 8
    bw 50
  ]
  edge [
    source 7
    target 8
    bw 47
  ]
]
