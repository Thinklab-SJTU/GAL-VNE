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
  id 519
  arrival_time 5254.0
  lifetime 36.19911274266824
  num_nodes 6
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
    cpu 16
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  edge [
    source 0
    target 1
    bw 14
  ]
  edge [
    source 0
    target 3
    bw 3
  ]
  edge [
    source 0
    target 4
    bw 50
  ]
  edge [
    source 1
    target 2
    bw 42
  ]
  edge [
    source 1
    target 3
    bw 33
  ]
  edge [
    source 2
    target 3
    bw 10
  ]
  edge [
    source 2
    target 4
    bw 11
  ]
  edge [
    source 3
    target 4
    bw 2
  ]
  edge [
    source 3
    target 5
    bw 19
  ]
  edge [
    source 4
    target 5
    bw 37
  ]
]
