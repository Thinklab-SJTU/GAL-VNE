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
  id 81
  arrival_time 858.0
  lifetime 110.18438250580289
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 15
  ]
  node [
    id 1
    label "1"
    cpu 33
  ]
  node [
    id 2
    label "2"
    cpu 33
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 21
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 39
  ]
  node [
    id 7
    label "7"
    cpu 44
  ]
  node [
    id 8
    label "8"
    cpu 15
  ]
  edge [
    source 0
    target 4
    bw 2
  ]
  edge [
    source 0
    target 6
    bw 3
  ]
  edge [
    source 1
    target 2
    bw 14
  ]
  edge [
    source 1
    target 3
    bw 17
  ]
  edge [
    source 1
    target 4
    bw 45
  ]
  edge [
    source 1
    target 5
    bw 35
  ]
  edge [
    source 1
    target 7
    bw 50
  ]
  edge [
    source 2
    target 3
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 18
  ]
  edge [
    source 2
    target 6
    bw 42
  ]
  edge [
    source 3
    target 5
    bw 6
  ]
  edge [
    source 3
    target 7
    bw 34
  ]
  edge [
    source 3
    target 8
    bw 35
  ]
  edge [
    source 4
    target 8
    bw 49
  ]
  edge [
    source 7
    target 8
    bw 32
  ]
]
