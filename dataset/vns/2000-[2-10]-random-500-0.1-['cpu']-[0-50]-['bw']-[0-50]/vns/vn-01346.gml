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
  id 1346
  arrival_time 13477.0
  lifetime 2314.7163897623623
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 2
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 13
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  node [
    id 7
    label "7"
    cpu 15
  ]
  node [
    id 8
    label "8"
    cpu 25
  ]
  node [
    id 9
    label "9"
    cpu 42
  ]
  edge [
    source 0
    target 7
    bw 18
  ]
  edge [
    source 0
    target 8
    bw 34
  ]
  edge [
    source 1
    target 3
    bw 5
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 8
    bw 5
  ]
  edge [
    source 2
    target 3
    bw 29
  ]
  edge [
    source 2
    target 5
    bw 26
  ]
  edge [
    source 2
    target 7
    bw 29
  ]
  edge [
    source 2
    target 9
    bw 48
  ]
  edge [
    source 3
    target 4
    bw 2
  ]
  edge [
    source 3
    target 5
    bw 25
  ]
  edge [
    source 3
    target 6
    bw 35
  ]
  edge [
    source 3
    target 7
    bw 40
  ]
  edge [
    source 4
    target 5
    bw 0
  ]
  edge [
    source 4
    target 6
    bw 17
  ]
  edge [
    source 4
    target 7
    bw 20
  ]
  edge [
    source 4
    target 8
    bw 42
  ]
  edge [
    source 4
    target 9
    bw 44
  ]
  edge [
    source 5
    target 8
    bw 12
  ]
  edge [
    source 6
    target 7
    bw 20
  ]
  edge [
    source 6
    target 8
    bw 40
  ]
  edge [
    source 6
    target 9
    bw 8
  ]
  edge [
    source 7
    target 8
    bw 31
  ]
  edge [
    source 7
    target 9
    bw 16
  ]
]
