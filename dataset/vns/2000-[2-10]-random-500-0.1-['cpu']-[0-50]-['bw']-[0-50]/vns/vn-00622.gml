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
  id 622
  arrival_time 6277.0
  lifetime 1105.3740350206715
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 13
  ]
  node [
    id 1
    label "1"
    cpu 14
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 39
  ]
  node [
    id 6
    label "6"
    cpu 23
  ]
  edge [
    source 0
    target 1
    bw 22
  ]
  edge [
    source 0
    target 2
    bw 47
  ]
  edge [
    source 0
    target 4
    bw 49
  ]
  edge [
    source 1
    target 2
    bw 35
  ]
  edge [
    source 1
    target 4
    bw 8
  ]
  edge [
    source 1
    target 6
    bw 5
  ]
  edge [
    source 2
    target 6
    bw 18
  ]
  edge [
    source 3
    target 4
    bw 33
  ]
  edge [
    source 4
    target 5
    bw 11
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
  edge [
    source 5
    target 6
    bw 26
  ]
]
