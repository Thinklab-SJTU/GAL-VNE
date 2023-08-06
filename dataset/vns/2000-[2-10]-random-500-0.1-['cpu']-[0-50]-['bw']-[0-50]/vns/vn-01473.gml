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
  id 1473
  arrival_time 14712.0
  lifetime 549.6352333856048
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 32
  ]
  node [
    id 1
    label "1"
    cpu 29
  ]
  node [
    id 2
    label "2"
    cpu 2
  ]
  node [
    id 3
    label "3"
    cpu 30
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 42
  ]
  node [
    id 6
    label "6"
    cpu 26
  ]
  edge [
    source 0
    target 1
    bw 13
  ]
  edge [
    source 0
    target 4
    bw 9
  ]
  edge [
    source 0
    target 6
    bw 29
  ]
  edge [
    source 1
    target 3
    bw 20
  ]
  edge [
    source 1
    target 6
    bw 42
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 2
    target 6
    bw 20
  ]
  edge [
    source 3
    target 6
    bw 6
  ]
  edge [
    source 4
    target 5
    bw 8
  ]
  edge [
    source 5
    target 6
    bw 32
  ]
]
