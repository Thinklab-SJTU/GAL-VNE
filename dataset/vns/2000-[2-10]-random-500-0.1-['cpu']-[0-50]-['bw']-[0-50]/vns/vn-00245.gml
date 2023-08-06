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
  id 245
  arrival_time 2477.0
  lifetime 306.6702969537092
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 31
  ]
  node [
    id 1
    label "1"
    cpu 23
  ]
  node [
    id 2
    label "2"
    cpu 49
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 12
  ]
  node [
    id 5
    label "5"
    cpu 22
  ]
  node [
    id 6
    label "6"
    cpu 22
  ]
  node [
    id 7
    label "7"
    cpu 37
  ]
  node [
    id 8
    label "8"
    cpu 1
  ]
  node [
    id 9
    label "9"
    cpu 11
  ]
  edge [
    source 0
    target 2
    bw 42
  ]
  edge [
    source 0
    target 4
    bw 41
  ]
  edge [
    source 0
    target 7
    bw 14
  ]
  edge [
    source 0
    target 8
    bw 28
  ]
  edge [
    source 1
    target 2
    bw 18
  ]
  edge [
    source 1
    target 6
    bw 45
  ]
  edge [
    source 2
    target 4
    bw 9
  ]
  edge [
    source 2
    target 6
    bw 35
  ]
  edge [
    source 2
    target 7
    bw 0
  ]
  edge [
    source 2
    target 8
    bw 7
  ]
  edge [
    source 3
    target 7
    bw 22
  ]
  edge [
    source 3
    target 9
    bw 0
  ]
  edge [
    source 4
    target 6
    bw 1
  ]
  edge [
    source 5
    target 9
    bw 8
  ]
  edge [
    source 6
    target 7
    bw 40
  ]
  edge [
    source 6
    target 8
    bw 4
  ]
  edge [
    source 7
    target 8
    bw 1
  ]
  edge [
    source 7
    target 9
    bw 29
  ]
]
