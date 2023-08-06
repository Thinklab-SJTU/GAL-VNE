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
  id 398
  arrival_time 4021.0
  lifetime 96.48094730528767
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 19
  ]
  node [
    id 1
    label "1"
    cpu 27
  ]
  node [
    id 2
    label "2"
    cpu 50
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 6
  ]
  node [
    id 6
    label "6"
    cpu 0
  ]
  node [
    id 7
    label "7"
    cpu 31
  ]
  node [
    id 8
    label "8"
    cpu 4
  ]
  edge [
    source 0
    target 1
    bw 17
  ]
  edge [
    source 0
    target 2
    bw 28
  ]
  edge [
    source 0
    target 4
    bw 42
  ]
  edge [
    source 0
    target 5
    bw 30
  ]
  edge [
    source 0
    target 6
    bw 2
  ]
  edge [
    source 0
    target 7
    bw 14
  ]
  edge [
    source 0
    target 8
    bw 1
  ]
  edge [
    source 1
    target 2
    bw 44
  ]
  edge [
    source 1
    target 4
    bw 48
  ]
  edge [
    source 2
    target 5
    bw 9
  ]
  edge [
    source 2
    target 7
    bw 5
  ]
  edge [
    source 2
    target 8
    bw 38
  ]
  edge [
    source 3
    target 4
    bw 31
  ]
  edge [
    source 3
    target 5
    bw 15
  ]
  edge [
    source 3
    target 6
    bw 8
  ]
  edge [
    source 4
    target 6
    bw 34
  ]
  edge [
    source 4
    target 8
    bw 3
  ]
  edge [
    source 5
    target 6
    bw 43
  ]
  edge [
    source 5
    target 7
    bw 45
  ]
  edge [
    source 6
    target 8
    bw 40
  ]
]
