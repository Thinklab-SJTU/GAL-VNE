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
  id 317
  arrival_time 3206.0
  lifetime 89.43536261314047
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
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  node [
    id 5
    label "5"
    cpu 38
  ]
  node [
    id 6
    label "6"
    cpu 39
  ]
  node [
    id 7
    label "7"
    cpu 22
  ]
  node [
    id 8
    label "8"
    cpu 18
  ]
  node [
    id 9
    label "9"
    cpu 3
  ]
  edge [
    source 0
    target 5
    bw 11
  ]
  edge [
    source 0
    target 6
    bw 24
  ]
  edge [
    source 1
    target 2
    bw 12
  ]
  edge [
    source 1
    target 3
    bw 37
  ]
  edge [
    source 1
    target 4
    bw 0
  ]
  edge [
    source 1
    target 6
    bw 49
  ]
  edge [
    source 1
    target 8
    bw 32
  ]
  edge [
    source 2
    target 6
    bw 16
  ]
  edge [
    source 2
    target 7
    bw 40
  ]
  edge [
    source 2
    target 8
    bw 12
  ]
  edge [
    source 2
    target 9
    bw 12
  ]
  edge [
    source 3
    target 5
    bw 22
  ]
  edge [
    source 3
    target 9
    bw 42
  ]
  edge [
    source 4
    target 5
    bw 47
  ]
  edge [
    source 4
    target 9
    bw 6
  ]
  edge [
    source 5
    target 6
    bw 16
  ]
  edge [
    source 6
    target 7
    bw 40
  ]
  edge [
    source 6
    target 8
    bw 26
  ]
  edge [
    source 7
    target 8
    bw 0
  ]
  edge [
    source 8
    target 9
    bw 48
  ]
]
