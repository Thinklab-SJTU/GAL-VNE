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
  id 1427
  arrival_time 14239.0
  lifetime 293.5370037729004
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 14
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 46
  ]
  node [
    id 4
    label "4"
    cpu 18
  ]
  node [
    id 5
    label "5"
    cpu 45
  ]
  node [
    id 6
    label "6"
    cpu 2
  ]
  node [
    id 7
    label "7"
    cpu 27
  ]
  node [
    id 8
    label "8"
    cpu 43
  ]
  node [
    id 9
    label "9"
    cpu 43
  ]
  edge [
    source 0
    target 2
    bw 41
  ]
  edge [
    source 1
    target 2
    bw 50
  ]
  edge [
    source 1
    target 3
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 2
  ]
  edge [
    source 1
    target 6
    bw 35
  ]
  edge [
    source 1
    target 7
    bw 40
  ]
  edge [
    source 1
    target 8
    bw 42
  ]
  edge [
    source 1
    target 9
    bw 50
  ]
  edge [
    source 2
    target 3
    bw 44
  ]
  edge [
    source 2
    target 7
    bw 11
  ]
  edge [
    source 3
    target 4
    bw 22
  ]
  edge [
    source 3
    target 5
    bw 15
  ]
  edge [
    source 3
    target 6
    bw 22
  ]
  edge [
    source 3
    target 8
    bw 38
  ]
  edge [
    source 4
    target 5
    bw 31
  ]
  edge [
    source 4
    target 7
    bw 8
  ]
  edge [
    source 4
    target 8
    bw 17
  ]
  edge [
    source 5
    target 7
    bw 36
  ]
  edge [
    source 5
    target 8
    bw 4
  ]
  edge [
    source 7
    target 8
    bw 10
  ]
  edge [
    source 8
    target 9
    bw 44
  ]
]
