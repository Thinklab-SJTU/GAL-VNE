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
  id 32
  arrival_time 349.0
  lifetime 137.3508912003871
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 50
  ]
  node [
    id 2
    label "2"
    cpu 6
  ]
  node [
    id 3
    label "3"
    cpu 44
  ]
  node [
    id 4
    label "4"
    cpu 35
  ]
  node [
    id 5
    label "5"
    cpu 14
  ]
  node [
    id 6
    label "6"
    cpu 15
  ]
  node [
    id 7
    label "7"
    cpu 34
  ]
  edge [
    source 0
    target 2
    bw 28
  ]
  edge [
    source 0
    target 3
    bw 36
  ]
  edge [
    source 0
    target 4
    bw 28
  ]
  edge [
    source 0
    target 5
    bw 24
  ]
  edge [
    source 0
    target 6
    bw 20
  ]
  edge [
    source 0
    target 7
    bw 13
  ]
  edge [
    source 1
    target 4
    bw 3
  ]
  edge [
    source 1
    target 5
    bw 37
  ]
  edge [
    source 2
    target 6
    bw 36
  ]
  edge [
    source 3
    target 5
    bw 44
  ]
  edge [
    source 3
    target 7
    bw 1
  ]
  edge [
    source 4
    target 5
    bw 18
  ]
  edge [
    source 4
    target 6
    bw 22
  ]
  edge [
    source 4
    target 7
    bw 1
  ]
  edge [
    source 5
    target 7
    bw 20
  ]
  edge [
    source 6
    target 7
    bw 37
  ]
]
