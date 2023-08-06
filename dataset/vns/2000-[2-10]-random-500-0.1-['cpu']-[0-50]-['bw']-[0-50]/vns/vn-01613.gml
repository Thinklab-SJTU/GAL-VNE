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
  id 1613
  arrival_time 16079.0
  lifetime 103.28508773269732
  num_nodes 4
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
    cpu 45
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 25
  ]
  edge [
    source 0
    target 2
    bw 28
  ]
  edge [
    source 0
    target 3
    bw 47
  ]
  edge [
    source 1
    target 3
    bw 47
  ]
  edge [
    source 2
    target 3
    bw 27
  ]
]
