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
  id 994
  arrival_time 9910.0
  lifetime 189.95857107784224
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 1
  ]
  node [
    id 1
    label "1"
    cpu 10
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 30
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  node [
    id 7
    label "7"
    cpu 16
  ]
  edge [
    source 0
    target 1
    bw 50
  ]
  edge [
    source 0
    target 5
    bw 19
  ]
  edge [
    source 0
    target 6
    bw 22
  ]
  edge [
    source 0
    target 7
    bw 39
  ]
  edge [
    source 1
    target 3
    bw 45
  ]
  edge [
    source 1
    target 5
    bw 49
  ]
  edge [
    source 1
    target 7
    bw 33
  ]
  edge [
    source 2
    target 3
    bw 27
  ]
  edge [
    source 2
    target 6
    bw 10
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 5
    bw 16
  ]
  edge [
    source 3
    target 6
    bw 21
  ]
  edge [
    source 3
    target 7
    bw 42
  ]
  edge [
    source 4
    target 6
    bw 26
  ]
  edge [
    source 4
    target 7
    bw 12
  ]
]
