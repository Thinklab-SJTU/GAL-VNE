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
  id 49
  arrival_time 521.0
  lifetime 170.42034798063634
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 50
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 15
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 23
  ]
  edge [
    source 0
    target 4
    bw 33
  ]
  edge [
    source 0
    target 5
    bw 11
  ]
  edge [
    source 1
    target 2
    bw 34
  ]
  edge [
    source 1
    target 3
    bw 44
  ]
  edge [
    source 1
    target 4
    bw 44
  ]
  edge [
    source 1
    target 5
    bw 15
  ]
  edge [
    source 2
    target 5
    bw 15
  ]
  edge [
    source 3
    target 4
    bw 8
  ]
  edge [
    source 3
    target 5
    bw 40
  ]
]
