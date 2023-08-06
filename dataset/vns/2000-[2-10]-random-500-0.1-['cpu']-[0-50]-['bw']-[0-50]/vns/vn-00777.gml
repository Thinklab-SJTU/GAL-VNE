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
  id 777
  arrival_time 7762.0
  lifetime 968.8529794808178
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 20
  ]
  node [
    id 1
    label "1"
    cpu 12
  ]
  node [
    id 2
    label "2"
    cpu 28
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 10
  ]
  node [
    id 6
    label "6"
    cpu 38
  ]
  node [
    id 7
    label "7"
    cpu 50
  ]
  edge [
    source 0
    target 4
    bw 10
  ]
  edge [
    source 0
    target 5
    bw 5
  ]
  edge [
    source 0
    target 7
    bw 24
  ]
  edge [
    source 1
    target 2
    bw 24
  ]
  edge [
    source 1
    target 4
    bw 18
  ]
  edge [
    source 1
    target 5
    bw 8
  ]
  edge [
    source 1
    target 7
    bw 26
  ]
  edge [
    source 2
    target 3
    bw 46
  ]
  edge [
    source 2
    target 4
    bw 6
  ]
  edge [
    source 2
    target 5
    bw 2
  ]
  edge [
    source 2
    target 7
    bw 18
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
  edge [
    source 3
    target 6
    bw 9
  ]
  edge [
    source 4
    target 7
    bw 27
  ]
  edge [
    source 5
    target 7
    bw 17
  ]
]
