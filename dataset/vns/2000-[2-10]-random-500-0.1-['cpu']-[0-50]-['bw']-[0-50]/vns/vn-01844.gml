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
  id 1844
  arrival_time 18389.0
  lifetime 109.7693012926711
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 35
  ]
  node [
    id 1
    label "1"
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 10
  ]
  node [
    id 3
    label "3"
    cpu 49
  ]
  node [
    id 4
    label "4"
    cpu 8
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  node [
    id 7
    label "7"
    cpu 9
  ]
  node [
    id 8
    label "8"
    cpu 15
  ]
  edge [
    source 0
    target 1
    bw 24
  ]
  edge [
    source 0
    target 2
    bw 16
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 0
    target 6
    bw 41
  ]
  edge [
    source 0
    target 7
    bw 38
  ]
  edge [
    source 0
    target 8
    bw 13
  ]
  edge [
    source 1
    target 4
    bw 13
  ]
  edge [
    source 1
    target 5
    bw 39
  ]
  edge [
    source 1
    target 6
    bw 27
  ]
  edge [
    source 1
    target 8
    bw 24
  ]
  edge [
    source 2
    target 3
    bw 22
  ]
  edge [
    source 2
    target 5
    bw 24
  ]
  edge [
    source 2
    target 7
    bw 35
  ]
  edge [
    source 3
    target 4
    bw 7
  ]
  edge [
    source 3
    target 6
    bw 27
  ]
  edge [
    source 4
    target 5
    bw 31
  ]
  edge [
    source 4
    target 6
    bw 39
  ]
  edge [
    source 5
    target 6
    bw 8
  ]
  edge [
    source 5
    target 7
    bw 38
  ]
  edge [
    source 5
    target 8
    bw 13
  ]
  edge [
    source 6
    target 7
    bw 26
  ]
  edge [
    source 6
    target 8
    bw 40
  ]
]
