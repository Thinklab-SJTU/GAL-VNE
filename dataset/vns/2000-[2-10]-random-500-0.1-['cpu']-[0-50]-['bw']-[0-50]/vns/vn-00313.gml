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
  id 313
  arrival_time 3176.0
  lifetime 336.6859500944921
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 15
  ]
  node [
    id 1
    label "1"
    cpu 10
  ]
  node [
    id 2
    label "2"
    cpu 12
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  edge [
    source 0
    target 1
    bw 46
  ]
  edge [
    source 0
    target 2
    bw 19
  ]
  edge [
    source 0
    target 3
    bw 49
  ]
  edge [
    source 0
    target 4
    bw 6
  ]
  edge [
    source 1
    target 2
    bw 44
  ]
  edge [
    source 1
    target 3
    bw 31
  ]
  edge [
    source 1
    target 4
    bw 1
  ]
  edge [
    source 3
    target 4
    bw 2
  ]
]
