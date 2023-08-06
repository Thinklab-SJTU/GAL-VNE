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
  id 1803
  arrival_time 17997.0
  lifetime 166.0072683174416
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 21
  ]
  node [
    id 1
    label "1"
    cpu 43
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 27
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 50
  ]
  edge [
    source 0
    target 1
    bw 4
  ]
  edge [
    source 0
    target 2
    bw 41
  ]
  edge [
    source 0
    target 3
    bw 19
  ]
  edge [
    source 0
    target 4
    bw 21
  ]
  edge [
    source 0
    target 5
    bw 36
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 5
    bw 37
  ]
  edge [
    source 2
    target 3
    bw 39
  ]
  edge [
    source 2
    target 5
    bw 48
  ]
  edge [
    source 4
    target 5
    bw 20
  ]
]
