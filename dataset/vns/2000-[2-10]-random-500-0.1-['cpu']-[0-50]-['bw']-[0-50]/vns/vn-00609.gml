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
  id 609
  arrival_time 6140.0
  lifetime 213.58154850967884
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 12
  ]
  node [
    id 1
    label "1"
    cpu 41
  ]
  node [
    id 2
    label "2"
    cpu 25
  ]
  node [
    id 3
    label "3"
    cpu 0
  ]
  node [
    id 4
    label "4"
    cpu 27
  ]
  node [
    id 5
    label "5"
    cpu 27
  ]
  node [
    id 6
    label "6"
    cpu 26
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 22
  ]
  node [
    id 9
    label "9"
    cpu 25
  ]
  edge [
    source 0
    target 2
    bw 5
  ]
  edge [
    source 0
    target 8
    bw 35
  ]
  edge [
    source 1
    target 2
    bw 37
  ]
  edge [
    source 2
    target 4
    bw 3
  ]
  edge [
    source 2
    target 7
    bw 21
  ]
  edge [
    source 3
    target 5
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 36
  ]
  edge [
    source 3
    target 8
    bw 41
  ]
  edge [
    source 4
    target 5
    bw 3
  ]
  edge [
    source 4
    target 6
    bw 4
  ]
  edge [
    source 4
    target 8
    bw 16
  ]
  edge [
    source 4
    target 9
    bw 24
  ]
  edge [
    source 6
    target 7
    bw 35
  ]
  edge [
    source 6
    target 9
    bw 19
  ]
  edge [
    source 7
    target 9
    bw 28
  ]
]
