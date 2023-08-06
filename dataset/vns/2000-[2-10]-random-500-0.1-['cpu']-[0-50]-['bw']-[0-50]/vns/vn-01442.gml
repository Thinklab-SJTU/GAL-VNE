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
  id 1442
  arrival_time 14375.0
  lifetime 200.68160568892367
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 4
  ]
  node [
    id 1
    label "1"
    cpu 43
  ]
  node [
    id 2
    label "2"
    cpu 14
  ]
  node [
    id 3
    label "3"
    cpu 33
  ]
  node [
    id 4
    label "4"
    cpu 48
  ]
  node [
    id 5
    label "5"
    cpu 24
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 35
  ]
  node [
    id 8
    label "8"
    cpu 7
  ]
  node [
    id 9
    label "9"
    cpu 48
  ]
  edge [
    source 0
    target 2
    bw 39
  ]
  edge [
    source 0
    target 4
    bw 10
  ]
  edge [
    source 0
    target 7
    bw 27
  ]
  edge [
    source 0
    target 8
    bw 19
  ]
  edge [
    source 1
    target 4
    bw 39
  ]
  edge [
    source 1
    target 5
    bw 27
  ]
  edge [
    source 1
    target 9
    bw 46
  ]
  edge [
    source 2
    target 5
    bw 32
  ]
  edge [
    source 2
    target 6
    bw 21
  ]
  edge [
    source 3
    target 4
    bw 42
  ]
  edge [
    source 3
    target 5
    bw 22
  ]
  edge [
    source 3
    target 8
    bw 49
  ]
  edge [
    source 4
    target 5
    bw 32
  ]
  edge [
    source 4
    target 6
    bw 6
  ]
  edge [
    source 5
    target 6
    bw 19
  ]
  edge [
    source 5
    target 9
    bw 23
  ]
  edge [
    source 6
    target 7
    bw 37
  ]
  edge [
    source 6
    target 9
    bw 35
  ]
  edge [
    source 7
    target 9
    bw 6
  ]
  edge [
    source 8
    target 9
    bw 4
  ]
]
