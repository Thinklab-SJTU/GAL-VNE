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
  id 1521
  arrival_time 15183.0
  lifetime 181.40884383459868
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 8
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 26
  ]
  node [
    id 6
    label "6"
    cpu 20
  ]
  node [
    id 7
    label "7"
    cpu 49
  ]
  edge [
    source 0
    target 1
    bw 45
  ]
  edge [
    source 0
    target 2
    bw 23
  ]
  edge [
    source 0
    target 4
    bw 2
  ]
  edge [
    source 0
    target 5
    bw 11
  ]
  edge [
    source 0
    target 6
    bw 25
  ]
  edge [
    source 1
    target 2
    bw 10
  ]
  edge [
    source 1
    target 4
    bw 49
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 6
    bw 49
  ]
  edge [
    source 1
    target 7
    bw 48
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 2
    target 4
    bw 27
  ]
  edge [
    source 2
    target 5
    bw 42
  ]
  edge [
    source 2
    target 6
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 43
  ]
  edge [
    source 3
    target 5
    bw 41
  ]
  edge [
    source 4
    target 6
    bw 15
  ]
  edge [
    source 6
    target 7
    bw 30
  ]
]
