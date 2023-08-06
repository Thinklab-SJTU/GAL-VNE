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
  id 1777
  arrival_time 17751.0
  lifetime 201.77860127654102
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 3
  ]
  node [
    id 2
    label "2"
    cpu 24
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 49
  ]
  node [
    id 6
    label "6"
    cpu 34
  ]
  node [
    id 7
    label "7"
    cpu 17
  ]
  edge [
    source 0
    target 1
    bw 47
  ]
  edge [
    source 0
    target 4
    bw 3
  ]
  edge [
    source 0
    target 6
    bw 10
  ]
  edge [
    source 1
    target 3
    bw 19
  ]
  edge [
    source 1
    target 6
    bw 42
  ]
  edge [
    source 1
    target 7
    bw 24
  ]
  edge [
    source 2
    target 6
    bw 31
  ]
  edge [
    source 3
    target 6
    bw 37
  ]
  edge [
    source 4
    target 5
    bw 1
  ]
  edge [
    source 5
    target 7
    bw 38
  ]
]
