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
  id 770
  arrival_time 7704.0
  lifetime 172.08878645983614
  num_nodes 8
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
    cpu 19
  ]
  node [
    id 2
    label "2"
    cpu 46
  ]
  node [
    id 3
    label "3"
    cpu 43
  ]
  node [
    id 4
    label "4"
    cpu 13
  ]
  node [
    id 5
    label "5"
    cpu 26
  ]
  node [
    id 6
    label "6"
    cpu 12
  ]
  node [
    id 7
    label "7"
    cpu 36
  ]
  edge [
    source 0
    target 2
    bw 11
  ]
  edge [
    source 0
    target 4
    bw 41
  ]
  edge [
    source 0
    target 6
    bw 20
  ]
  edge [
    source 1
    target 4
    bw 39
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 1
    target 6
    bw 4
  ]
  edge [
    source 1
    target 7
    bw 13
  ]
  edge [
    source 2
    target 3
    bw 36
  ]
  edge [
    source 2
    target 6
    bw 18
  ]
  edge [
    source 2
    target 7
    bw 26
  ]
  edge [
    source 3
    target 4
    bw 16
  ]
  edge [
    source 5
    target 6
    bw 44
  ]
  edge [
    source 5
    target 7
    bw 2
  ]
]
