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
  id 1798
  arrival_time 17957.0
  lifetime 105.87849920593777
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 49
  ]
  node [
    id 1
    label "1"
    cpu 10
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 28
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 27
  ]
  node [
    id 6
    label "6"
    cpu 31
  ]
  node [
    id 7
    label "7"
    cpu 48
  ]
  node [
    id 8
    label "8"
    cpu 34
  ]
  node [
    id 9
    label "9"
    cpu 36
  ]
  edge [
    source 0
    target 1
    bw 26
  ]
  edge [
    source 0
    target 3
    bw 43
  ]
  edge [
    source 0
    target 5
    bw 47
  ]
  edge [
    source 0
    target 7
    bw 40
  ]
  edge [
    source 0
    target 8
    bw 44
  ]
  edge [
    source 0
    target 9
    bw 35
  ]
  edge [
    source 1
    target 2
    bw 43
  ]
  edge [
    source 1
    target 3
    bw 27
  ]
  edge [
    source 1
    target 4
    bw 8
  ]
  edge [
    source 1
    target 5
    bw 2
  ]
  edge [
    source 1
    target 6
    bw 17
  ]
  edge [
    source 1
    target 9
    bw 25
  ]
  edge [
    source 2
    target 4
    bw 40
  ]
  edge [
    source 2
    target 6
    bw 32
  ]
  edge [
    source 2
    target 7
    bw 36
  ]
  edge [
    source 2
    target 8
    bw 49
  ]
  edge [
    source 2
    target 9
    bw 22
  ]
  edge [
    source 3
    target 4
    bw 1
  ]
  edge [
    source 3
    target 7
    bw 32
  ]
  edge [
    source 3
    target 8
    bw 48
  ]
  edge [
    source 4
    target 6
    bw 1
  ]
  edge [
    source 4
    target 9
    bw 19
  ]
  edge [
    source 5
    target 9
    bw 49
  ]
  edge [
    source 8
    target 9
    bw 7
  ]
]
