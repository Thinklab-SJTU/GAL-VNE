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
  id 272
  arrival_time 2729.0
  lifetime 207.29012614742464
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 27
  ]
  node [
    id 1
    label "1"
    cpu 39
  ]
  node [
    id 2
    label "2"
    cpu 14
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 20
  ]
  node [
    id 6
    label "6"
    cpu 45
  ]
  node [
    id 7
    label "7"
    cpu 31
  ]
  node [
    id 8
    label "8"
    cpu 9
  ]
  node [
    id 9
    label "9"
    cpu 41
  ]
  edge [
    source 0
    target 2
    bw 12
  ]
  edge [
    source 0
    target 3
    bw 8
  ]
  edge [
    source 0
    target 5
    bw 38
  ]
  edge [
    source 0
    target 6
    bw 35
  ]
  edge [
    source 0
    target 7
    bw 1
  ]
  edge [
    source 1
    target 3
    bw 49
  ]
  edge [
    source 1
    target 4
    bw 35
  ]
  edge [
    source 1
    target 6
    bw 15
  ]
  edge [
    source 1
    target 7
    bw 12
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 2
    target 5
    bw 46
  ]
  edge [
    source 3
    target 5
    bw 32
  ]
  edge [
    source 3
    target 6
    bw 4
  ]
  edge [
    source 3
    target 8
    bw 45
  ]
  edge [
    source 4
    target 6
    bw 17
  ]
  edge [
    source 4
    target 7
    bw 10
  ]
  edge [
    source 4
    target 9
    bw 4
  ]
  edge [
    source 5
    target 9
    bw 17
  ]
  edge [
    source 6
    target 7
    bw 27
  ]
  edge [
    source 6
    target 8
    bw 9
  ]
]
