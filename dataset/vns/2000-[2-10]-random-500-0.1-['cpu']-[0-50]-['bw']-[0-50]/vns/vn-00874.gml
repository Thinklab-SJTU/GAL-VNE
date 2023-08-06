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
  id 874
  arrival_time 8713.0
  lifetime 200.63382521725853
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 20
  ]
  node [
    id 1
    label "1"
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 39
  ]
  node [
    id 3
    label "3"
    cpu 19
  ]
  node [
    id 4
    label "4"
    cpu 6
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 16
  ]
  node [
    id 7
    label "7"
    cpu 41
  ]
  node [
    id 8
    label "8"
    cpu 42
  ]
  edge [
    source 0
    target 1
    bw 18
  ]
  edge [
    source 0
    target 2
    bw 44
  ]
  edge [
    source 0
    target 4
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 1
  ]
  edge [
    source 1
    target 7
    bw 38
  ]
  edge [
    source 1
    target 8
    bw 21
  ]
  edge [
    source 2
    target 5
    bw 32
  ]
  edge [
    source 2
    target 6
    bw 7
  ]
  edge [
    source 3
    target 4
    bw 34
  ]
  edge [
    source 3
    target 8
    bw 39
  ]
  edge [
    source 4
    target 8
    bw 49
  ]
  edge [
    source 5
    target 7
    bw 6
  ]
  edge [
    source 5
    target 8
    bw 11
  ]
  edge [
    source 6
    target 7
    bw 12
  ]
  edge [
    source 6
    target 8
    bw 42
  ]
  edge [
    source 7
    target 8
    bw 13
  ]
]
