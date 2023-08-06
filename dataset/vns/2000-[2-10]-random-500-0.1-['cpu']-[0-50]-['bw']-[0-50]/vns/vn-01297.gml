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
  id 1297
  arrival_time 12975.0
  lifetime 212.1529772931149
  num_nodes 10
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
    cpu 16
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 3
  ]
  node [
    id 4
    label "4"
    cpu 14
  ]
  node [
    id 5
    label "5"
    cpu 48
  ]
  node [
    id 6
    label "6"
    cpu 24
  ]
  node [
    id 7
    label "7"
    cpu 37
  ]
  node [
    id 8
    label "8"
    cpu 47
  ]
  node [
    id 9
    label "9"
    cpu 33
  ]
  edge [
    source 0
    target 2
    bw 45
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 0
    target 6
    bw 50
  ]
  edge [
    source 0
    target 7
    bw 43
  ]
  edge [
    source 0
    target 8
    bw 28
  ]
  edge [
    source 0
    target 9
    bw 1
  ]
  edge [
    source 1
    target 3
    bw 21
  ]
  edge [
    source 1
    target 5
    bw 36
  ]
  edge [
    source 1
    target 6
    bw 28
  ]
  edge [
    source 1
    target 7
    bw 10
  ]
  edge [
    source 1
    target 9
    bw 42
  ]
  edge [
    source 2
    target 4
    bw 21
  ]
  edge [
    source 2
    target 6
    bw 32
  ]
  edge [
    source 2
    target 9
    bw 20
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 12
  ]
  edge [
    source 4
    target 8
    bw 12
  ]
  edge [
    source 5
    target 6
    bw 31
  ]
  edge [
    source 6
    target 8
    bw 43
  ]
  edge [
    source 7
    target 9
    bw 8
  ]
]
