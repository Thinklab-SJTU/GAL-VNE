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
  id 1679
  arrival_time 16749.0
  lifetime 320.67747855164515
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 27
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 34
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 28
  ]
  node [
    id 6
    label "6"
    cpu 45
  ]
  node [
    id 7
    label "7"
    cpu 23
  ]
  node [
    id 8
    label "8"
    cpu 16
  ]
  node [
    id 9
    label "9"
    cpu 9
  ]
  edge [
    source 0
    target 1
    bw 8
  ]
  edge [
    source 0
    target 3
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 34
  ]
  edge [
    source 0
    target 6
    bw 18
  ]
  edge [
    source 0
    target 7
    bw 22
  ]
  edge [
    source 0
    target 8
    bw 22
  ]
  edge [
    source 1
    target 2
    bw 42
  ]
  edge [
    source 1
    target 6
    bw 34
  ]
  edge [
    source 2
    target 4
    bw 22
  ]
  edge [
    source 3
    target 5
    bw 41
  ]
  edge [
    source 3
    target 6
    bw 20
  ]
  edge [
    source 3
    target 9
    bw 45
  ]
  edge [
    source 4
    target 5
    bw 10
  ]
  edge [
    source 4
    target 6
    bw 20
  ]
  edge [
    source 4
    target 8
    bw 7
  ]
  edge [
    source 4
    target 9
    bw 34
  ]
  edge [
    source 5
    target 6
    bw 5
  ]
  edge [
    source 5
    target 8
    bw 38
  ]
  edge [
    source 5
    target 9
    bw 49
  ]
  edge [
    source 6
    target 8
    bw 24
  ]
  edge [
    source 6
    target 9
    bw 13
  ]
  edge [
    source 7
    target 8
    bw 27
  ]
  edge [
    source 7
    target 9
    bw 25
  ]
  edge [
    source 8
    target 9
    bw 47
  ]
]
