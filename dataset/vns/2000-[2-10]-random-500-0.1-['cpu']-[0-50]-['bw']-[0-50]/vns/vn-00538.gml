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
  id 538
  arrival_time 5426.0
  lifetime 449.1422160262728
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 36
  ]
  node [
    id 2
    label "2"
    cpu 28
  ]
  node [
    id 3
    label "3"
    cpu 6
  ]
  node [
    id 4
    label "4"
    cpu 30
  ]
  node [
    id 5
    label "5"
    cpu 43
  ]
  node [
    id 6
    label "6"
    cpu 25
  ]
  node [
    id 7
    label "7"
    cpu 8
  ]
  node [
    id 8
    label "8"
    cpu 44
  ]
  node [
    id 9
    label "9"
    cpu 6
  ]
  edge [
    source 0
    target 4
    bw 7
  ]
  edge [
    source 0
    target 7
    bw 32
  ]
  edge [
    source 0
    target 9
    bw 24
  ]
  edge [
    source 1
    target 4
    bw 14
  ]
  edge [
    source 1
    target 5
    bw 7
  ]
  edge [
    source 1
    target 6
    bw 26
  ]
  edge [
    source 1
    target 7
    bw 36
  ]
  edge [
    source 1
    target 9
    bw 36
  ]
  edge [
    source 2
    target 5
    bw 27
  ]
  edge [
    source 2
    target 6
    bw 12
  ]
  edge [
    source 2
    target 7
    bw 31
  ]
  edge [
    source 3
    target 4
    bw 7
  ]
  edge [
    source 3
    target 6
    bw 50
  ]
  edge [
    source 3
    target 8
    bw 2
  ]
  edge [
    source 3
    target 9
    bw 1
  ]
  edge [
    source 4
    target 5
    bw 49
  ]
  edge [
    source 4
    target 6
    bw 41
  ]
  edge [
    source 4
    target 7
    bw 10
  ]
  edge [
    source 4
    target 8
    bw 41
  ]
  edge [
    source 4
    target 9
    bw 10
  ]
  edge [
    source 5
    target 6
    bw 4
  ]
  edge [
    source 5
    target 7
    bw 36
  ]
  edge [
    source 6
    target 7
    bw 32
  ]
  edge [
    source 6
    target 8
    bw 26
  ]
  edge [
    source 6
    target 9
    bw 20
  ]
  edge [
    source 7
    target 8
    bw 17
  ]
  edge [
    source 7
    target 9
    bw 18
  ]
  edge [
    source 8
    target 9
    bw 14
  ]
]
