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
  id 283
  arrival_time 2854.0
  lifetime 1080.77436822636
  num_nodes 7
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
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 50
  ]
  node [
    id 4
    label "4"
    cpu 20
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 22
  ]
  edge [
    source 0
    target 5
    bw 27
  ]
  edge [
    source 0
    target 6
    bw 18
  ]
  edge [
    source 1
    target 2
    bw 27
  ]
  edge [
    source 1
    target 5
    bw 42
  ]
  edge [
    source 1
    target 6
    bw 48
  ]
  edge [
    source 3
    target 5
    bw 21
  ]
  edge [
    source 3
    target 6
    bw 25
  ]
  edge [
    source 4
    target 5
    bw 29
  ]
  edge [
    source 4
    target 6
    bw 9
  ]
]
