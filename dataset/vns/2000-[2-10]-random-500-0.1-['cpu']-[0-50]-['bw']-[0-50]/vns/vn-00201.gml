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
  id 201
  arrival_time 2027.0
  lifetime 17.829803110970175
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 12
  ]
  node [
    id 1
    label "1"
    cpu 28
  ]
  node [
    id 2
    label "2"
    cpu 8
  ]
  node [
    id 3
    label "3"
    cpu 27
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 32
  ]
  edge [
    source 0
    target 1
    bw 17
  ]
  edge [
    source 0
    target 3
    bw 41
  ]
  edge [
    source 0
    target 4
    bw 9
  ]
  edge [
    source 0
    target 5
    bw 43
  ]
  edge [
    source 0
    target 6
    bw 46
  ]
  edge [
    source 1
    target 3
    bw 3
  ]
  edge [
    source 1
    target 5
    bw 8
  ]
  edge [
    source 1
    target 6
    bw 8
  ]
  edge [
    source 2
    target 3
    bw 42
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
  edge [
    source 2
    target 5
    bw 12
  ]
  edge [
    source 2
    target 6
    bw 0
  ]
  edge [
    source 3
    target 6
    bw 49
  ]
  edge [
    source 3
    target 7
    bw 37
  ]
  edge [
    source 4
    target 5
    bw 21
  ]
  edge [
    source 4
    target 6
    bw 7
  ]
  edge [
    source 5
    target 6
    bw 0
  ]
]
