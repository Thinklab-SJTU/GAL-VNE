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
  id 1948
  arrival_time 19390.0
  lifetime 495.16313168579364
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 1
  ]
  node [
    id 1
    label "1"
    cpu 26
  ]
  node [
    id 2
    label "2"
    cpu 8
  ]
  node [
    id 3
    label "3"
    cpu 7
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 12
  ]
  node [
    id 7
    label "7"
    cpu 43
  ]
  node [
    id 8
    label "8"
    cpu 48
  ]
  node [
    id 9
    label "9"
    cpu 28
  ]
  edge [
    source 0
    target 4
    bw 6
  ]
  edge [
    source 0
    target 6
    bw 49
  ]
  edge [
    source 0
    target 8
    bw 2
  ]
  edge [
    source 1
    target 3
    bw 48
  ]
  edge [
    source 1
    target 5
    bw 47
  ]
  edge [
    source 1
    target 7
    bw 8
  ]
  edge [
    source 1
    target 8
    bw 49
  ]
  edge [
    source 1
    target 9
    bw 10
  ]
  edge [
    source 2
    target 3
    bw 16
  ]
  edge [
    source 2
    target 5
    bw 33
  ]
  edge [
    source 3
    target 5
    bw 46
  ]
  edge [
    source 3
    target 7
    bw 26
  ]
  edge [
    source 4
    target 6
    bw 14
  ]
  edge [
    source 4
    target 7
    bw 0
  ]
  edge [
    source 5
    target 7
    bw 23
  ]
  edge [
    source 5
    target 8
    bw 14
  ]
  edge [
    source 6
    target 7
    bw 30
  ]
  edge [
    source 7
    target 9
    bw 24
  ]
  edge [
    source 8
    target 9
    bw 3
  ]
]
