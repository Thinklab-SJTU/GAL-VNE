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
  id 1884
  arrival_time 18797.0
  lifetime 16.27354069187026
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
    cpu 37
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  node [
    id 5
    label "5"
    cpu 48
  ]
  node [
    id 6
    label "6"
    cpu 43
  ]
  node [
    id 7
    label "7"
    cpu 41
  ]
  node [
    id 8
    label "8"
    cpu 2
  ]
  edge [
    source 0
    target 2
    bw 14
  ]
  edge [
    source 0
    target 6
    bw 17
  ]
  edge [
    source 0
    target 7
    bw 22
  ]
  edge [
    source 0
    target 8
    bw 11
  ]
  edge [
    source 1
    target 3
    bw 6
  ]
  edge [
    source 1
    target 5
    bw 37
  ]
  edge [
    source 1
    target 6
    bw 46
  ]
  edge [
    source 1
    target 7
    bw 28
  ]
  edge [
    source 1
    target 8
    bw 5
  ]
  edge [
    source 2
    target 3
    bw 42
  ]
  edge [
    source 2
    target 5
    bw 17
  ]
  edge [
    source 2
    target 7
    bw 7
  ]
  edge [
    source 3
    target 4
    bw 15
  ]
  edge [
    source 3
    target 5
    bw 37
  ]
  edge [
    source 3
    target 7
    bw 31
  ]
  edge [
    source 3
    target 8
    bw 8
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 6
    bw 24
  ]
  edge [
    source 4
    target 7
    bw 10
  ]
  edge [
    source 5
    target 7
    bw 14
  ]
  edge [
    source 6
    target 8
    bw 42
  ]
]
