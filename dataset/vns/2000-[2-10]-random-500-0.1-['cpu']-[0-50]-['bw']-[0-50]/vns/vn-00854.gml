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
  id 854
  arrival_time 8496.0
  lifetime 63.71712905626679
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 29
  ]
  node [
    id 1
    label "1"
    cpu 46
  ]
  node [
    id 2
    label "2"
    cpu 28
  ]
  node [
    id 3
    label "3"
    cpu 13
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  node [
    id 6
    label "6"
    cpu 46
  ]
  edge [
    source 0
    target 3
    bw 23
  ]
  edge [
    source 0
    target 4
    bw 33
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 1
    target 6
    bw 37
  ]
  edge [
    source 2
    target 3
    bw 41
  ]
  edge [
    source 2
    target 4
    bw 43
  ]
  edge [
    source 3
    target 4
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 8
  ]
  edge [
    source 3
    target 6
    bw 31
  ]
  edge [
    source 4
    target 5
    bw 22
  ]
  edge [
    source 4
    target 6
    bw 6
  ]
]
