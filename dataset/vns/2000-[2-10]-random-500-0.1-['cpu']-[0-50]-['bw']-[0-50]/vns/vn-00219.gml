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
  id 219
  arrival_time 2222.0
  lifetime 449.6401786251486
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 26
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 26
  ]
  node [
    id 4
    label "4"
    cpu 30
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 19
  ]
  node [
    id 7
    label "7"
    cpu 14
  ]
  node [
    id 8
    label "8"
    cpu 34
  ]
  edge [
    source 0
    target 1
    bw 47
  ]
  edge [
    source 0
    target 2
    bw 38
  ]
  edge [
    source 0
    target 3
    bw 18
  ]
  edge [
    source 0
    target 6
    bw 38
  ]
  edge [
    source 0
    target 8
    bw 10
  ]
  edge [
    source 1
    target 4
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 13
  ]
  edge [
    source 1
    target 8
    bw 18
  ]
  edge [
    source 2
    target 3
    bw 48
  ]
  edge [
    source 2
    target 5
    bw 11
  ]
  edge [
    source 2
    target 6
    bw 16
  ]
  edge [
    source 2
    target 8
    bw 27
  ]
  edge [
    source 3
    target 5
    bw 32
  ]
  edge [
    source 3
    target 6
    bw 32
  ]
  edge [
    source 3
    target 7
    bw 4
  ]
  edge [
    source 4
    target 5
    bw 35
  ]
  edge [
    source 4
    target 6
    bw 21
  ]
  edge [
    source 4
    target 8
    bw 16
  ]
  edge [
    source 5
    target 6
    bw 33
  ]
  edge [
    source 7
    target 8
    bw 9
  ]
]
