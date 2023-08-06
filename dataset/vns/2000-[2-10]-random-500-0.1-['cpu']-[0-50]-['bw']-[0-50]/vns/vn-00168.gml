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
  id 168
  arrival_time 1703.0
  lifetime 144.69197164553606
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 9
  ]
  node [
    id 1
    label "1"
    cpu 45
  ]
  node [
    id 2
    label "2"
    cpu 28
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 7
  ]
  node [
    id 7
    label "7"
    cpu 29
  ]
  edge [
    source 0
    target 4
    bw 3
  ]
  edge [
    source 0
    target 6
    bw 10
  ]
  edge [
    source 0
    target 7
    bw 4
  ]
  edge [
    source 1
    target 3
    bw 32
  ]
  edge [
    source 1
    target 4
    bw 45
  ]
  edge [
    source 1
    target 5
    bw 38
  ]
  edge [
    source 1
    target 6
    bw 12
  ]
  edge [
    source 1
    target 7
    bw 11
  ]
  edge [
    source 2
    target 3
    bw 23
  ]
  edge [
    source 2
    target 4
    bw 14
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 2
    target 7
    bw 41
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 3
    target 6
    bw 34
  ]
  edge [
    source 4
    target 5
    bw 20
  ]
  edge [
    source 4
    target 7
    bw 8
  ]
  edge [
    source 5
    target 6
    bw 35
  ]
  edge [
    source 5
    target 7
    bw 44
  ]
]
