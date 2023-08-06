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
  id 967
  arrival_time 9626.0
  lifetime 212.8865524472134
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 8
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 26
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  node [
    id 6
    label "6"
    cpu 44
  ]
  node [
    id 7
    label "7"
    cpu 29
  ]
  node [
    id 8
    label "8"
    cpu 13
  ]
  edge [
    source 0
    target 1
    bw 21
  ]
  edge [
    source 0
    target 3
    bw 12
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 0
    target 6
    bw 29
  ]
  edge [
    source 1
    target 2
    bw 14
  ]
  edge [
    source 1
    target 3
    bw 41
  ]
  edge [
    source 1
    target 4
    bw 19
  ]
  edge [
    source 1
    target 7
    bw 22
  ]
  edge [
    source 1
    target 8
    bw 37
  ]
  edge [
    source 2
    target 3
    bw 16
  ]
  edge [
    source 2
    target 4
    bw 46
  ]
  edge [
    source 3
    target 4
    bw 31
  ]
  edge [
    source 3
    target 6
    bw 38
  ]
  edge [
    source 3
    target 7
    bw 47
  ]
  edge [
    source 3
    target 8
    bw 11
  ]
  edge [
    source 4
    target 5
    bw 30
  ]
  edge [
    source 4
    target 7
    bw 15
  ]
  edge [
    source 4
    target 8
    bw 43
  ]
  edge [
    source 5
    target 6
    bw 7
  ]
  edge [
    source 5
    target 7
    bw 44
  ]
  edge [
    source 5
    target 8
    bw 48
  ]
]
