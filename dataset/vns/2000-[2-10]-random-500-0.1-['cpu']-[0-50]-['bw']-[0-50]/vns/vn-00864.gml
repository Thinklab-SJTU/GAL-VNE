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
  id 864
  arrival_time 8609.0
  lifetime 626.6670782330813
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 22
  ]
  node [
    id 2
    label "2"
    cpu 1
  ]
  node [
    id 3
    label "3"
    cpu 42
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  edge [
    source 0
    target 1
    bw 5
  ]
  edge [
    source 0
    target 4
    bw 50
  ]
  edge [
    source 1
    target 2
    bw 22
  ]
  edge [
    source 1
    target 4
    bw 44
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 3
    target 4
    bw 17
  ]
]
