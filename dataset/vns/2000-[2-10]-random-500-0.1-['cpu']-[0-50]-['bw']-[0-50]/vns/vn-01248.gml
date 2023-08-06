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
  id 1248
  arrival_time 12458.0
  lifetime 317.2599804889095
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 47
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 25
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 18
  ]
  node [
    id 5
    label "5"
    cpu 10
  ]
  edge [
    source 0
    target 1
    bw 37
  ]
  edge [
    source 0
    target 3
    bw 43
  ]
  edge [
    source 0
    target 5
    bw 28
  ]
  edge [
    source 1
    target 4
    bw 45
  ]
  edge [
    source 1
    target 5
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 28
  ]
  edge [
    source 2
    target 5
    bw 29
  ]
  edge [
    source 3
    target 5
    bw 28
  ]
]
