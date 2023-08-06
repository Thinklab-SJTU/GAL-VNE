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
  id 1262
  arrival_time 12606.0
  lifetime 620.3135413849975
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 43
  ]
  node [
    id 1
    label "1"
    cpu 3
  ]
  node [
    id 2
    label "2"
    cpu 50
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 15
  ]
  node [
    id 5
    label "5"
    cpu 49
  ]
  node [
    id 6
    label "6"
    cpu 14
  ]
  node [
    id 7
    label "7"
    cpu 1
  ]
  node [
    id 8
    label "8"
    cpu 17
  ]
  edge [
    source 0
    target 3
    bw 22
  ]
  edge [
    source 0
    target 5
    bw 1
  ]
  edge [
    source 0
    target 6
    bw 29
  ]
  edge [
    source 1
    target 5
    bw 29
  ]
  edge [
    source 1
    target 6
    bw 5
  ]
  edge [
    source 1
    target 7
    bw 7
  ]
  edge [
    source 1
    target 8
    bw 27
  ]
  edge [
    source 2
    target 3
    bw 30
  ]
  edge [
    source 2
    target 4
    bw 12
  ]
  edge [
    source 2
    target 7
    bw 39
  ]
  edge [
    source 2
    target 8
    bw 42
  ]
  edge [
    source 3
    target 5
    bw 3
  ]
  edge [
    source 3
    target 6
    bw 40
  ]
  edge [
    source 3
    target 7
    bw 50
  ]
  edge [
    source 4
    target 5
    bw 48
  ]
  edge [
    source 4
    target 8
    bw 36
  ]
  edge [
    source 5
    target 6
    bw 34
  ]
  edge [
    source 7
    target 8
    bw 4
  ]
]
