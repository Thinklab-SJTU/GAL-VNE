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
  id 894
  arrival_time 8921.0
  lifetime 1205.6233508113241
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 7
  ]
  node [
    id 1
    label "1"
    cpu 28
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 21
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 16
  ]
  node [
    id 8
    label "8"
    cpu 27
  ]
  edge [
    source 0
    target 2
    bw 15
  ]
  edge [
    source 0
    target 4
    bw 38
  ]
  edge [
    source 0
    target 5
    bw 20
  ]
  edge [
    source 0
    target 6
    bw 42
  ]
  edge [
    source 0
    target 7
    bw 38
  ]
  edge [
    source 0
    target 8
    bw 47
  ]
  edge [
    source 1
    target 4
    bw 31
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 8
    bw 45
  ]
  edge [
    source 2
    target 5
    bw 19
  ]
  edge [
    source 2
    target 6
    bw 38
  ]
  edge [
    source 2
    target 7
    bw 5
  ]
  edge [
    source 2
    target 8
    bw 41
  ]
  edge [
    source 3
    target 4
    bw 19
  ]
  edge [
    source 3
    target 6
    bw 39
  ]
  edge [
    source 4
    target 5
    bw 39
  ]
  edge [
    source 4
    target 8
    bw 11
  ]
  edge [
    source 5
    target 6
    bw 10
  ]
  edge [
    source 5
    target 8
    bw 2
  ]
  edge [
    source 6
    target 8
    bw 19
  ]
  edge [
    source 7
    target 8
    bw 47
  ]
]
