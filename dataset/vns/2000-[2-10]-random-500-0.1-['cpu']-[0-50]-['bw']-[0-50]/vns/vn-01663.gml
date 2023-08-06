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
  id 1663
  arrival_time 16602.0
  lifetime 161.09293661878343
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 29
  ]
  node [
    id 1
    label "1"
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 49
  ]
  node [
    id 4
    label "4"
    cpu 1
  ]
  node [
    id 5
    label "5"
    cpu 8
  ]
  edge [
    source 0
    target 1
    bw 0
  ]
  edge [
    source 0
    target 3
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 38
  ]
  edge [
    source 1
    target 2
    bw 23
  ]
  edge [
    source 1
    target 3
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 11
  ]
  edge [
    source 2
    target 4
    bw 46
  ]
  edge [
    source 2
    target 5
    bw 17
  ]
  edge [
    source 4
    target 5
    bw 31
  ]
]
