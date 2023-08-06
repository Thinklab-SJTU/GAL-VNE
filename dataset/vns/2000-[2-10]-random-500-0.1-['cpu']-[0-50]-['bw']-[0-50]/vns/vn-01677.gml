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
  id 1677
  arrival_time 16726.0
  lifetime 4.970535034316377
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 33
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 48
  ]
  node [
    id 3
    label "3"
    cpu 39
  ]
  node [
    id 4
    label "4"
    cpu 21
  ]
  node [
    id 5
    label "5"
    cpu 49
  ]
  edge [
    source 0
    target 1
    bw 1
  ]
  edge [
    source 0
    target 2
    bw 12
  ]
  edge [
    source 0
    target 5
    bw 39
  ]
  edge [
    source 1
    target 3
    bw 4
  ]
  edge [
    source 1
    target 4
    bw 3
  ]
  edge [
    source 1
    target 5
    bw 30
  ]
  edge [
    source 2
    target 3
    bw 35
  ]
  edge [
    source 2
    target 4
    bw 46
  ]
  edge [
    source 2
    target 5
    bw 45
  ]
  edge [
    source 3
    target 4
    bw 38
  ]
  edge [
    source 3
    target 5
    bw 24
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
]
