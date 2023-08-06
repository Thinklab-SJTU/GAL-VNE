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
  id 233
  arrival_time 2370.0
  lifetime 88.5281624816375
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 34
  ]
  node [
    id 1
    label "1"
    cpu 7
  ]
  node [
    id 2
    label "2"
    cpu 23
  ]
  node [
    id 3
    label "3"
    cpu 40
  ]
  node [
    id 4
    label "4"
    cpu 36
  ]
  node [
    id 5
    label "5"
    cpu 50
  ]
  node [
    id 6
    label "6"
    cpu 42
  ]
  node [
    id 7
    label "7"
    cpu 6
  ]
  node [
    id 8
    label "8"
    cpu 14
  ]
  node [
    id 9
    label "9"
    cpu 43
  ]
  edge [
    source 0
    target 2
    bw 10
  ]
  edge [
    source 0
    target 4
    bw 26
  ]
  edge [
    source 0
    target 7
    bw 12
  ]
  edge [
    source 0
    target 9
    bw 11
  ]
  edge [
    source 1
    target 2
    bw 41
  ]
  edge [
    source 1
    target 4
    bw 2
  ]
  edge [
    source 1
    target 5
    bw 28
  ]
  edge [
    source 1
    target 7
    bw 11
  ]
  edge [
    source 1
    target 8
    bw 35
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 2
    target 5
    bw 3
  ]
  edge [
    source 2
    target 8
    bw 26
  ]
  edge [
    source 2
    target 9
    bw 27
  ]
  edge [
    source 3
    target 7
    bw 26
  ]
  edge [
    source 3
    target 8
    bw 33
  ]
  edge [
    source 3
    target 9
    bw 14
  ]
  edge [
    source 4
    target 5
    bw 37
  ]
  edge [
    source 4
    target 6
    bw 29
  ]
  edge [
    source 4
    target 7
    bw 6
  ]
  edge [
    source 4
    target 8
    bw 9
  ]
  edge [
    source 5
    target 6
    bw 18
  ]
  edge [
    source 5
    target 8
    bw 44
  ]
  edge [
    source 6
    target 7
    bw 7
  ]
  edge [
    source 6
    target 9
    bw 49
  ]
  edge [
    source 7
    target 8
    bw 1
  ]
  edge [
    source 7
    target 9
    bw 14
  ]
]
