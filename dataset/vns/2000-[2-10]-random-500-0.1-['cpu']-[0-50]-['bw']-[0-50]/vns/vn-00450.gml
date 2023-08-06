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
  id 450
  arrival_time 4543.0
  lifetime 476.3851460969751
  num_nodes 9
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
    cpu 22
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 40
  ]
  node [
    id 7
    label "7"
    cpu 44
  ]
  node [
    id 8
    label "8"
    cpu 36
  ]
  edge [
    source 0
    target 8
    bw 44
  ]
  edge [
    source 1
    target 4
    bw 39
  ]
  edge [
    source 1
    target 7
    bw 46
  ]
  edge [
    source 2
    target 4
    bw 10
  ]
  edge [
    source 2
    target 5
    bw 50
  ]
  edge [
    source 2
    target 7
    bw 44
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 32
  ]
  edge [
    source 3
    target 8
    bw 42
  ]
  edge [
    source 4
    target 5
    bw 1
  ]
  edge [
    source 4
    target 6
    bw 47
  ]
  edge [
    source 4
    target 7
    bw 38
  ]
  edge [
    source 5
    target 6
    bw 9
  ]
  edge [
    source 5
    target 7
    bw 13
  ]
  edge [
    source 5
    target 8
    bw 8
  ]
  edge [
    source 6
    target 7
    bw 5
  ]
]
