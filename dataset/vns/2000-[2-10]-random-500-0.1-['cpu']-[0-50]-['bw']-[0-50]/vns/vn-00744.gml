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
  id 744
  arrival_time 7469.0
  lifetime 1451.8711978252506
  num_nodes 9
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
    cpu 29
  ]
  node [
    id 2
    label "2"
    cpu 16
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
    cpu 6
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  node [
    id 8
    label "8"
    cpu 34
  ]
  edge [
    source 0
    target 1
    bw 3
  ]
  edge [
    source 0
    target 3
    bw 48
  ]
  edge [
    source 0
    target 5
    bw 33
  ]
  edge [
    source 0
    target 6
    bw 4
  ]
  edge [
    source 0
    target 7
    bw 7
  ]
  edge [
    source 0
    target 8
    bw 44
  ]
  edge [
    source 1
    target 2
    bw 34
  ]
  edge [
    source 1
    target 4
    bw 28
  ]
  edge [
    source 1
    target 7
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 33
  ]
  edge [
    source 2
    target 6
    bw 7
  ]
  edge [
    source 2
    target 7
    bw 20
  ]
  edge [
    source 3
    target 4
    bw 41
  ]
  edge [
    source 3
    target 6
    bw 36
  ]
  edge [
    source 3
    target 7
    bw 8
  ]
  edge [
    source 4
    target 5
    bw 40
  ]
  edge [
    source 4
    target 6
    bw 5
  ]
  edge [
    source 4
    target 8
    bw 9
  ]
  edge [
    source 5
    target 7
    bw 10
  ]
  edge [
    source 6
    target 7
    bw 49
  ]
  edge [
    source 6
    target 8
    bw 36
  ]
  edge [
    source 7
    target 8
    bw 15
  ]
]
