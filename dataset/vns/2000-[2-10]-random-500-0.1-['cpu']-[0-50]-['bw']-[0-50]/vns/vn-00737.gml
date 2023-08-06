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
  id 737
  arrival_time 7397.0
  lifetime 3.520035021790323
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 8
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
    cpu 6
  ]
  node [
    id 8
    label "8"
    cpu 20
  ]
  edge [
    source 0
    target 1
    bw 34
  ]
  edge [
    source 0
    target 2
    bw 9
  ]
  edge [
    source 0
    target 7
    bw 31
  ]
  edge [
    source 0
    target 8
    bw 24
  ]
  edge [
    source 1
    target 4
    bw 48
  ]
  edge [
    source 1
    target 6
    bw 34
  ]
  edge [
    source 1
    target 8
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 38
  ]
  edge [
    source 2
    target 5
    bw 8
  ]
  edge [
    source 2
    target 6
    bw 14
  ]
  edge [
    source 2
    target 8
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 8
  ]
  edge [
    source 3
    target 5
    bw 21
  ]
  edge [
    source 3
    target 7
    bw 0
  ]
  edge [
    source 4
    target 5
    bw 39
  ]
  edge [
    source 4
    target 7
    bw 11
  ]
  edge [
    source 5
    target 8
    bw 33
  ]
  edge [
    source 6
    target 8
    bw 5
  ]
  edge [
    source 7
    target 8
    bw 37
  ]
]
