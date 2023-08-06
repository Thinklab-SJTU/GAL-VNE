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
  id 1648
  arrival_time 16429.0
  lifetime 54.359449195788976
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 39
  ]
  node [
    id 1
    label "1"
    cpu 39
  ]
  node [
    id 2
    label "2"
    cpu 49
  ]
  node [
    id 3
    label "3"
    cpu 41
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 0
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  node [
    id 8
    label "8"
    cpu 4
  ]
  node [
    id 9
    label "9"
    cpu 36
  ]
  edge [
    source 0
    target 2
    bw 43
  ]
  edge [
    source 0
    target 4
    bw 21
  ]
  edge [
    source 0
    target 6
    bw 9
  ]
  edge [
    source 1
    target 7
    bw 8
  ]
  edge [
    source 1
    target 8
    bw 35
  ]
  edge [
    source 1
    target 9
    bw 45
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 2
    target 5
    bw 43
  ]
  edge [
    source 2
    target 8
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 36
  ]
  edge [
    source 3
    target 8
    bw 14
  ]
  edge [
    source 4
    target 5
    bw 21
  ]
  edge [
    source 4
    target 7
    bw 33
  ]
  edge [
    source 4
    target 8
    bw 2
  ]
  edge [
    source 4
    target 9
    bw 43
  ]
  edge [
    source 5
    target 6
    bw 9
  ]
  edge [
    source 5
    target 8
    bw 14
  ]
  edge [
    source 6
    target 7
    bw 10
  ]
  edge [
    source 7
    target 8
    bw 17
  ]
  edge [
    source 7
    target 9
    bw 22
  ]
  edge [
    source 8
    target 9
    bw 22
  ]
]