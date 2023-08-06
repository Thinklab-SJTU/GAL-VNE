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
  id 1559
  arrival_time 15562.0
  lifetime 148.0087387797311
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 33
  ]
  node [
    id 1
    label "1"
    cpu 40
  ]
  node [
    id 2
    label "2"
    cpu 4
  ]
  node [
    id 3
    label "3"
    cpu 19
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 44
  ]
  node [
    id 7
    label "7"
    cpu 25
  ]
  node [
    id 8
    label "8"
    cpu 38
  ]
  node [
    id 9
    label "9"
    cpu 18
  ]
  edge [
    source 0
    target 2
    bw 20
  ]
  edge [
    source 0
    target 4
    bw 42
  ]
  edge [
    source 0
    target 5
    bw 49
  ]
  edge [
    source 0
    target 6
    bw 49
  ]
  edge [
    source 0
    target 7
    bw 49
  ]
  edge [
    source 0
    target 9
    bw 1
  ]
  edge [
    source 1
    target 3
    bw 17
  ]
  edge [
    source 1
    target 5
    bw 40
  ]
  edge [
    source 1
    target 6
    bw 4
  ]
  edge [
    source 1
    target 7
    bw 26
  ]
  edge [
    source 1
    target 8
    bw 26
  ]
  edge [
    source 1
    target 9
    bw 42
  ]
  edge [
    source 2
    target 3
    bw 40
  ]
  edge [
    source 2
    target 4
    bw 30
  ]
  edge [
    source 2
    target 5
    bw 48
  ]
  edge [
    source 2
    target 6
    bw 0
  ]
  edge [
    source 2
    target 7
    bw 34
  ]
  edge [
    source 2
    target 9
    bw 45
  ]
  edge [
    source 3
    target 5
    bw 49
  ]
  edge [
    source 3
    target 7
    bw 5
  ]
  edge [
    source 3
    target 8
    bw 12
  ]
  edge [
    source 4
    target 5
    bw 40
  ]
  edge [
    source 4
    target 6
    bw 34
  ]
  edge [
    source 4
    target 7
    bw 31
  ]
  edge [
    source 5
    target 9
    bw 23
  ]
  edge [
    source 6
    target 7
    bw 12
  ]
  edge [
    source 6
    target 8
    bw 35
  ]
  edge [
    source 6
    target 9
    bw 39
  ]
  edge [
    source 8
    target 9
    bw 39
  ]
]
