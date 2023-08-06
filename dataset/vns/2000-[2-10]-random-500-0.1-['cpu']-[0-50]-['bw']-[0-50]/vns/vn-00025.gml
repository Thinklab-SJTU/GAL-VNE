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
  id 25
  arrival_time 287.0
  lifetime 496.1808232252943
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 23
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 45
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 14
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 2
  ]
  edge [
    source 0
    target 3
    bw 0
  ]
  edge [
    source 0
    target 4
    bw 45
  ]
  edge [
    source 0
    target 6
    bw 16
  ]
  edge [
    source 1
    target 2
    bw 26
  ]
  edge [
    source 1
    target 3
    bw 4
  ]
  edge [
    source 1
    target 4
    bw 11
  ]
  edge [
    source 1
    target 7
    bw 3
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 2
    target 5
    bw 23
  ]
  edge [
    source 3
    target 4
    bw 5
  ]
  edge [
    source 3
    target 6
    bw 45
  ]
  edge [
    source 3
    target 7
    bw 41
  ]
  edge [
    source 4
    target 5
    bw 29
  ]
  edge [
    source 4
    target 6
    bw 44
  ]
  edge [
    source 4
    target 7
    bw 37
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
]
