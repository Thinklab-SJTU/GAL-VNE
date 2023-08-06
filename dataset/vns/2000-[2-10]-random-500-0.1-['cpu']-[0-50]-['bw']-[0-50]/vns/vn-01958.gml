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
  id 1958
  arrival_time 19501.0
  lifetime 376.65541398110554
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 14
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 21
  ]
  node [
    id 4
    label "4"
    cpu 22
  ]
  node [
    id 5
    label "5"
    cpu 38
  ]
  node [
    id 6
    label "6"
    cpu 46
  ]
  node [
    id 7
    label "7"
    cpu 39
  ]
  edge [
    source 0
    target 1
    bw 9
  ]
  edge [
    source 0
    target 2
    bw 11
  ]
  edge [
    source 0
    target 4
    bw 9
  ]
  edge [
    source 0
    target 6
    bw 23
  ]
  edge [
    source 1
    target 2
    bw 49
  ]
  edge [
    source 1
    target 4
    bw 13
  ]
  edge [
    source 1
    target 5
    bw 37
  ]
  edge [
    source 1
    target 6
    bw 40
  ]
  edge [
    source 1
    target 7
    bw 18
  ]
  edge [
    source 2
    target 3
    bw 22
  ]
  edge [
    source 2
    target 4
    bw 50
  ]
  edge [
    source 2
    target 5
    bw 12
  ]
  edge [
    source 2
    target 7
    bw 47
  ]
  edge [
    source 3
    target 4
    bw 28
  ]
  edge [
    source 3
    target 5
    bw 0
  ]
  edge [
    source 3
    target 6
    bw 19
  ]
]
