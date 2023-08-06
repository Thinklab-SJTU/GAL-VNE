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
  id 1249
  arrival_time 12471.0
  lifetime 426.3107367509934
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 17
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 25
  ]
  node [
    id 4
    label "4"
    cpu 25
  ]
  node [
    id 5
    label "5"
    cpu 46
  ]
  node [
    id 6
    label "6"
    cpu 26
  ]
  node [
    id 7
    label "7"
    cpu 29
  ]
  node [
    id 8
    label "8"
    cpu 18
  ]
  node [
    id 9
    label "9"
    cpu 1
  ]
  edge [
    source 0
    target 2
    bw 1
  ]
  edge [
    source 0
    target 5
    bw 20
  ]
  edge [
    source 0
    target 7
    bw 40
  ]
  edge [
    source 1
    target 3
    bw 9
  ]
  edge [
    source 1
    target 4
    bw 41
  ]
  edge [
    source 1
    target 6
    bw 49
  ]
  edge [
    source 1
    target 9
    bw 48
  ]
  edge [
    source 2
    target 3
    bw 17
  ]
  edge [
    source 2
    target 7
    bw 41
  ]
  edge [
    source 3
    target 4
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 7
  ]
  edge [
    source 3
    target 9
    bw 16
  ]
  edge [
    source 4
    target 8
    bw 47
  ]
  edge [
    source 4
    target 9
    bw 38
  ]
  edge [
    source 5
    target 7
    bw 19
  ]
  edge [
    source 5
    target 8
    bw 37
  ]
  edge [
    source 5
    target 9
    bw 38
  ]
  edge [
    source 6
    target 7
    bw 1
  ]
  edge [
    source 6
    target 9
    bw 14
  ]
  edge [
    source 7
    target 9
    bw 46
  ]
  edge [
    source 8
    target 9
    bw 40
  ]
]
