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
  id 1880
  arrival_time 18757.0
  lifetime 484.05449960152083
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 17
  ]
  node [
    id 1
    label "1"
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 38
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 21
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  edge [
    source 0
    target 2
    bw 31
  ]
  edge [
    source 0
    target 4
    bw 37
  ]
  edge [
    source 0
    target 5
    bw 22
  ]
  edge [
    source 1
    target 2
    bw 40
  ]
  edge [
    source 1
    target 5
    bw 35
  ]
  edge [
    source 1
    target 7
    bw 50
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 3
    target 4
    bw 10
  ]
  edge [
    source 3
    target 7
    bw 8
  ]
  edge [
    source 4
    target 6
    bw 21
  ]
  edge [
    source 5
    target 6
    bw 13
  ]
]
