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
  id 527
  arrival_time 5320.0
  lifetime 426.1706315138249
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 40
  ]
  node [
    id 1
    label "1"
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 8
  ]
  node [
    id 3
    label "3"
    cpu 17
  ]
  node [
    id 4
    label "4"
    cpu 9
  ]
  node [
    id 5
    label "5"
    cpu 49
  ]
  node [
    id 6
    label "6"
    cpu 10
  ]
  node [
    id 7
    label "7"
    cpu 0
  ]
  edge [
    source 0
    target 1
    bw 9
  ]
  edge [
    source 0
    target 3
    bw 23
  ]
  edge [
    source 0
    target 5
    bw 43
  ]
  edge [
    source 1
    target 2
    bw 6
  ]
  edge [
    source 1
    target 4
    bw 18
  ]
  edge [
    source 1
    target 6
    bw 30
  ]
  edge [
    source 1
    target 7
    bw 21
  ]
  edge [
    source 2
    target 3
    bw 50
  ]
  edge [
    source 2
    target 4
    bw 4
  ]
  edge [
    source 3
    target 5
    bw 13
  ]
  edge [
    source 3
    target 6
    bw 33
  ]
  edge [
    source 4
    target 5
    bw 40
  ]
  edge [
    source 4
    target 7
    bw 50
  ]
  edge [
    source 5
    target 7
    bw 23
  ]
]
