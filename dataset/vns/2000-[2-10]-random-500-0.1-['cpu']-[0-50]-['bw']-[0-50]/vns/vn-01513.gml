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
  id 1513
  arrival_time 15107.0
  lifetime 1286.611777130104
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 39
  ]
  node [
    id 1
    label "1"
    cpu 15
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 45
  ]
  node [
    id 5
    label "5"
    cpu 31
  ]
  node [
    id 6
    label "6"
    cpu 6
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 2
    bw 36
  ]
  edge [
    source 0
    target 4
    bw 23
  ]
  edge [
    source 0
    target 6
    bw 29
  ]
  edge [
    source 1
    target 2
    bw 38
  ]
  edge [
    source 1
    target 3
    bw 18
  ]
  edge [
    source 1
    target 5
    bw 33
  ]
  edge [
    source 2
    target 3
    bw 10
  ]
  edge [
    source 2
    target 5
    bw 39
  ]
  edge [
    source 3
    target 4
    bw 13
  ]
  edge [
    source 3
    target 5
    bw 17
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
  edge [
    source 4
    target 6
    bw 37
  ]
]
