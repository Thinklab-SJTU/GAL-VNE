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
  id 1728
  arrival_time 17253.0
  lifetime 1235.7179698069128
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 16
  ]
  node [
    id 1
    label "1"
    cpu 2
  ]
  node [
    id 2
    label "2"
    cpu 3
  ]
  node [
    id 3
    label "3"
    cpu 22
  ]
  node [
    id 4
    label "4"
    cpu 38
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 7
  ]
  node [
    id 7
    label "7"
    cpu 11
  ]
  node [
    id 8
    label "8"
    cpu 46
  ]
  node [
    id 9
    label "9"
    cpu 34
  ]
  edge [
    source 0
    target 4
    bw 7
  ]
  edge [
    source 0
    target 8
    bw 6
  ]
  edge [
    source 0
    target 9
    bw 49
  ]
  edge [
    source 1
    target 2
    bw 9
  ]
  edge [
    source 1
    target 3
    bw 32
  ]
  edge [
    source 1
    target 4
    bw 31
  ]
  edge [
    source 1
    target 6
    bw 13
  ]
  edge [
    source 1
    target 9
    bw 33
  ]
  edge [
    source 2
    target 4
    bw 3
  ]
  edge [
    source 2
    target 7
    bw 16
  ]
  edge [
    source 2
    target 9
    bw 10
  ]
  edge [
    source 3
    target 7
    bw 6
  ]
  edge [
    source 3
    target 8
    bw 3
  ]
  edge [
    source 3
    target 9
    bw 13
  ]
  edge [
    source 4
    target 8
    bw 17
  ]
  edge [
    source 5
    target 6
    bw 33
  ]
  edge [
    source 5
    target 7
    bw 15
  ]
  edge [
    source 5
    target 9
    bw 20
  ]
  edge [
    source 6
    target 7
    bw 34
  ]
  edge [
    source 6
    target 8
    bw 34
  ]
  edge [
    source 8
    target 9
    bw 45
  ]
]
