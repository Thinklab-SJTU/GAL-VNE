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
  id 1771
  arrival_time 17698.0
  lifetime 169.26454854247302
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 11
  ]
  node [
    id 1
    label "1"
    cpu 8
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 2
  ]
  node [
    id 6
    label "6"
    cpu 19
  ]
  node [
    id 7
    label "7"
    cpu 46
  ]
  node [
    id 8
    label "8"
    cpu 10
  ]
  node [
    id 9
    label "9"
    cpu 13
  ]
  edge [
    source 0
    target 2
    bw 9
  ]
  edge [
    source 0
    target 3
    bw 27
  ]
  edge [
    source 0
    target 7
    bw 6
  ]
  edge [
    source 0
    target 8
    bw 43
  ]
  edge [
    source 1
    target 4
    bw 40
  ]
  edge [
    source 1
    target 9
    bw 27
  ]
  edge [
    source 2
    target 3
    bw 38
  ]
  edge [
    source 2
    target 4
    bw 17
  ]
  edge [
    source 2
    target 5
    bw 29
  ]
  edge [
    source 2
    target 6
    bw 11
  ]
  edge [
    source 2
    target 7
    bw 40
  ]
  edge [
    source 2
    target 8
    bw 48
  ]
  edge [
    source 3
    target 5
    bw 38
  ]
  edge [
    source 3
    target 6
    bw 29
  ]
  edge [
    source 3
    target 7
    bw 37
  ]
  edge [
    source 3
    target 8
    bw 35
  ]
  edge [
    source 4
    target 5
    bw 50
  ]
  edge [
    source 4
    target 6
    bw 44
  ]
  edge [
    source 4
    target 9
    bw 27
  ]
  edge [
    source 5
    target 6
    bw 34
  ]
  edge [
    source 5
    target 7
    bw 38
  ]
  edge [
    source 6
    target 7
    bw 16
  ]
  edge [
    source 6
    target 8
    bw 37
  ]
  edge [
    source 6
    target 9
    bw 21
  ]
  edge [
    source 7
    target 9
    bw 20
  ]
]
