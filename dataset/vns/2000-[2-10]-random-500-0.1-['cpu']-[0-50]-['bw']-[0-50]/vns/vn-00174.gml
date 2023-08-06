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
  id 174
  arrival_time 1763.0
  lifetime 336.75547415634514
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 4
  ]
  node [
    id 1
    label "1"
    cpu 27
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 33
  ]
  node [
    id 4
    label "4"
    cpu 14
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 8
  ]
  edge [
    source 0
    target 2
    bw 34
  ]
  edge [
    source 0
    target 3
    bw 10
  ]
  edge [
    source 0
    target 4
    bw 29
  ]
  edge [
    source 0
    target 5
    bw 2
  ]
  edge [
    source 1
    target 2
    bw 18
  ]
  edge [
    source 1
    target 3
    bw 20
  ]
  edge [
    source 1
    target 4
    bw 44
  ]
  edge [
    source 1
    target 5
    bw 50
  ]
  edge [
    source 1
    target 6
    bw 23
  ]
  edge [
    source 2
    target 6
    bw 38
  ]
  edge [
    source 3
    target 5
    bw 10
  ]
  edge [
    source 4
    target 5
    bw 12
  ]
  edge [
    source 4
    target 6
    bw 45
  ]
]
