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
  id 614
  arrival_time 6196.0
  lifetime 1333.9193871880752
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 31
  ]
  node [
    id 2
    label "2"
    cpu 40
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 32
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  edge [
    source 0
    target 1
    bw 5
  ]
  edge [
    source 0
    target 2
    bw 9
  ]
  edge [
    source 0
    target 3
    bw 6
  ]
  edge [
    source 0
    target 4
    bw 28
  ]
  edge [
    source 1
    target 3
    bw 21
  ]
  edge [
    source 1
    target 5
    bw 36
  ]
  edge [
    source 2
    target 4
    bw 13
  ]
  edge [
    source 2
    target 5
    bw 3
  ]
  edge [
    source 3
    target 4
    bw 37
  ]
  edge [
    source 3
    target 5
    bw 36
  ]
]
