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
  id 1877
  arrival_time 18729.0
  lifetime 339.2520675913782
  num_nodes 10
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
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 37
  ]
  node [
    id 3
    label "3"
    cpu 50
  ]
  node [
    id 4
    label "4"
    cpu 40
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  node [
    id 6
    label "6"
    cpu 16
  ]
  node [
    id 7
    label "7"
    cpu 44
  ]
  node [
    id 8
    label "8"
    cpu 29
  ]
  node [
    id 9
    label "9"
    cpu 37
  ]
  edge [
    source 0
    target 2
    bw 11
  ]
  edge [
    source 0
    target 5
    bw 26
  ]
  edge [
    source 0
    target 7
    bw 44
  ]
  edge [
    source 0
    target 9
    bw 7
  ]
  edge [
    source 1
    target 2
    bw 40
  ]
  edge [
    source 1
    target 3
    bw 2
  ]
  edge [
    source 1
    target 5
    bw 9
  ]
  edge [
    source 1
    target 7
    bw 36
  ]
  edge [
    source 2
    target 3
    bw 10
  ]
  edge [
    source 2
    target 6
    bw 14
  ]
  edge [
    source 2
    target 7
    bw 22
  ]
  edge [
    source 2
    target 8
    bw 7
  ]
  edge [
    source 3
    target 5
    bw 34
  ]
  edge [
    source 3
    target 6
    bw 46
  ]
  edge [
    source 3
    target 9
    bw 49
  ]
  edge [
    source 4
    target 6
    bw 35
  ]
  edge [
    source 4
    target 8
    bw 8
  ]
  edge [
    source 5
    target 8
    bw 16
  ]
  edge [
    source 6
    target 7
    bw 11
  ]
  edge [
    source 8
    target 9
    bw 21
  ]
]
