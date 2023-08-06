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
  id 507
  arrival_time 5143.0
  lifetime 1427.801238443587
  num_nodes 10
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
    cpu 24
  ]
  node [
    id 2
    label "2"
    cpu 9
  ]
  node [
    id 3
    label "3"
    cpu 18
  ]
  node [
    id 4
    label "4"
    cpu 42
  ]
  node [
    id 5
    label "5"
    cpu 18
  ]
  node [
    id 6
    label "6"
    cpu 22
  ]
  node [
    id 7
    label "7"
    cpu 2
  ]
  node [
    id 8
    label "8"
    cpu 16
  ]
  node [
    id 9
    label "9"
    cpu 4
  ]
  edge [
    source 0
    target 1
    bw 36
  ]
  edge [
    source 0
    target 2
    bw 25
  ]
  edge [
    source 0
    target 5
    bw 22
  ]
  edge [
    source 0
    target 7
    bw 31
  ]
  edge [
    source 1
    target 3
    bw 3
  ]
  edge [
    source 1
    target 5
    bw 39
  ]
  edge [
    source 1
    target 6
    bw 6
  ]
  edge [
    source 1
    target 7
    bw 14
  ]
  edge [
    source 2
    target 3
    bw 46
  ]
  edge [
    source 2
    target 5
    bw 4
  ]
  edge [
    source 3
    target 7
    bw 39
  ]
  edge [
    source 3
    target 9
    bw 31
  ]
  edge [
    source 4
    target 5
    bw 38
  ]
  edge [
    source 4
    target 7
    bw 12
  ]
  edge [
    source 4
    target 9
    bw 1
  ]
  edge [
    source 5
    target 6
    bw 26
  ]
  edge [
    source 7
    target 8
    bw 40
  ]
  edge [
    source 8
    target 9
    bw 19
  ]
]
