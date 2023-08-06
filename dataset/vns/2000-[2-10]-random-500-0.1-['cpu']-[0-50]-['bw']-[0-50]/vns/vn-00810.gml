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
  id 810
  arrival_time 8058.0
  lifetime 912.454029816264
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 13
  ]
  node [
    id 1
    label "1"
    cpu 32
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  node [
    id 5
    label "5"
    cpu 7
  ]
  node [
    id 6
    label "6"
    cpu 14
  ]
  node [
    id 7
    label "7"
    cpu 32
  ]
  edge [
    source 0
    target 4
    bw 37
  ]
  edge [
    source 0
    target 7
    bw 27
  ]
  edge [
    source 1
    target 2
    bw 25
  ]
  edge [
    source 1
    target 5
    bw 23
  ]
  edge [
    source 1
    target 6
    bw 20
  ]
  edge [
    source 1
    target 7
    bw 42
  ]
  edge [
    source 2
    target 4
    bw 27
  ]
  edge [
    source 2
    target 6
    bw 34
  ]
  edge [
    source 2
    target 7
    bw 13
  ]
  edge [
    source 3
    target 4
    bw 13
  ]
  edge [
    source 3
    target 7
    bw 3
  ]
  edge [
    source 4
    target 5
    bw 20
  ]
  edge [
    source 4
    target 7
    bw 16
  ]
  edge [
    source 5
    target 6
    bw 34
  ]
  edge [
    source 5
    target 7
    bw 3
  ]
]
