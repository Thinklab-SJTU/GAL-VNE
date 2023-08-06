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
  id 511
  arrival_time 5179.0
  lifetime 770.2423523470834
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 36
  ]
  node [
    id 1
    label "1"
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 41
  ]
  node [
    id 3
    label "3"
    cpu 22
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 3
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 17
  ]
  node [
    id 8
    label "8"
    cpu 31
  ]
  edge [
    source 0
    target 2
    bw 45
  ]
  edge [
    source 0
    target 6
    bw 38
  ]
  edge [
    source 0
    target 7
    bw 35
  ]
  edge [
    source 1
    target 3
    bw 3
  ]
  edge [
    source 1
    target 4
    bw 42
  ]
  edge [
    source 1
    target 5
    bw 35
  ]
  edge [
    source 1
    target 6
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 21
  ]
  edge [
    source 2
    target 5
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 6
    bw 14
  ]
  edge [
    source 3
    target 8
    bw 41
  ]
  edge [
    source 5
    target 7
    bw 47
  ]
  edge [
    source 6
    target 7
    bw 27
  ]
]
