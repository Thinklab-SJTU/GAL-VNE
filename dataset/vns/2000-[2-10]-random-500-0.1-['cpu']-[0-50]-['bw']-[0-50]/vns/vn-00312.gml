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
  id 312
  arrival_time 3167.0
  lifetime 1025.7920985373298
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
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
    cpu 25
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  edge [
    source 0
    target 4
    bw 33
  ]
  edge [
    source 1
    target 2
    bw 10
  ]
  edge [
    source 1
    target 4
    bw 31
  ]
  edge [
    source 2
    target 3
    bw 50
  ]
  edge [
    source 2
    target 4
    bw 9
  ]
]
