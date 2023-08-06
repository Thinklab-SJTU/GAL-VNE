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
  id 1373
  arrival_time 13731.0
  lifetime 835.2024352225897
  num_nodes 9
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
    cpu 16
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 40
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 43
  ]
  node [
    id 6
    label "6"
    cpu 6
  ]
  node [
    id 7
    label "7"
    cpu 16
  ]
  node [
    id 8
    label "8"
    cpu 41
  ]
  edge [
    source 0
    target 1
    bw 17
  ]
  edge [
    source 0
    target 2
    bw 49
  ]
  edge [
    source 0
    target 3
    bw 37
  ]
  edge [
    source 0
    target 7
    bw 39
  ]
  edge [
    source 1
    target 2
    bw 50
  ]
  edge [
    source 1
    target 3
    bw 25
  ]
  edge [
    source 1
    target 4
    bw 41
  ]
  edge [
    source 1
    target 6
    bw 13
  ]
  edge [
    source 1
    target 8
    bw 41
  ]
  edge [
    source 2
    target 3
    bw 40
  ]
  edge [
    source 2
    target 5
    bw 33
  ]
  edge [
    source 2
    target 7
    bw 29
  ]
  edge [
    source 2
    target 8
    bw 11
  ]
  edge [
    source 3
    target 5
    bw 3
  ]
  edge [
    source 3
    target 6
    bw 49
  ]
  edge [
    source 3
    target 8
    bw 6
  ]
  edge [
    source 4
    target 5
    bw 4
  ]
  edge [
    source 4
    target 7
    bw 13
  ]
  edge [
    source 4
    target 8
    bw 19
  ]
]
