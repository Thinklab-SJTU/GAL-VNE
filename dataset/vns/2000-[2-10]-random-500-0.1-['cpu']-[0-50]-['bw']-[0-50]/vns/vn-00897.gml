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
  id 897
  arrival_time 8952.0
  lifetime 1009.3177461331763
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 42
  ]
  node [
    id 1
    label "1"
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 25
  ]
  node [
    id 4
    label "4"
    cpu 37
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 8
  ]
  node [
    id 7
    label "7"
    cpu 39
  ]
  edge [
    source 0
    target 2
    bw 45
  ]
  edge [
    source 0
    target 3
    bw 29
  ]
  edge [
    source 0
    target 4
    bw 43
  ]
  edge [
    source 0
    target 5
    bw 19
  ]
  edge [
    source 1
    target 2
    bw 36
  ]
  edge [
    source 1
    target 4
    bw 47
  ]
  edge [
    source 1
    target 5
    bw 18
  ]
  edge [
    source 1
    target 6
    bw 1
  ]
  edge [
    source 1
    target 7
    bw 20
  ]
  edge [
    source 2
    target 3
    bw 33
  ]
  edge [
    source 2
    target 4
    bw 42
  ]
  edge [
    source 2
    target 5
    bw 37
  ]
  edge [
    source 2
    target 7
    bw 32
  ]
  edge [
    source 3
    target 7
    bw 29
  ]
  edge [
    source 4
    target 5
    bw 15
  ]
  edge [
    source 4
    target 7
    bw 47
  ]
  edge [
    source 6
    target 7
    bw 35
  ]
]
