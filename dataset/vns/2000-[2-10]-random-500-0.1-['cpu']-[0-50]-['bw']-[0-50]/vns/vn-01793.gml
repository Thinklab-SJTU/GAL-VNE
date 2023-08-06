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
  id 1793
  arrival_time 17911.0
  lifetime 310.8672581289106
  num_nodes 7
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
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 15
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 33
  ]
  edge [
    source 0
    target 1
    bw 39
  ]
  edge [
    source 0
    target 2
    bw 37
  ]
  edge [
    source 0
    target 4
    bw 40
  ]
  edge [
    source 0
    target 6
    bw 42
  ]
  edge [
    source 2
    target 4
    bw 49
  ]
  edge [
    source 2
    target 5
    bw 18
  ]
  edge [
    source 2
    target 6
    bw 47
  ]
  edge [
    source 3
    target 4
    bw 5
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
]
