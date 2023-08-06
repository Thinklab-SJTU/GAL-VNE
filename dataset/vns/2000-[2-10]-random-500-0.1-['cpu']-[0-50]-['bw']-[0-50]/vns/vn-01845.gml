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
  id 1845
  arrival_time 18403.0
  lifetime 408.2404895980666
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 26
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 21
  ]
  node [
    id 5
    label "5"
    cpu 22
  ]
  node [
    id 6
    label "6"
    cpu 38
  ]
  edge [
    source 0
    target 1
    bw 34
  ]
  edge [
    source 0
    target 2
    bw 35
  ]
  edge [
    source 0
    target 3
    bw 18
  ]
  edge [
    source 0
    target 4
    bw 28
  ]
  edge [
    source 0
    target 5
    bw 30
  ]
  edge [
    source 1
    target 4
    bw 16
  ]
  edge [
    source 1
    target 5
    bw 14
  ]
  edge [
    source 2
    target 3
    bw 36
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 3
    target 6
    bw 38
  ]
  edge [
    source 4
    target 5
    bw 45
  ]
  edge [
    source 4
    target 6
    bw 27
  ]
]
