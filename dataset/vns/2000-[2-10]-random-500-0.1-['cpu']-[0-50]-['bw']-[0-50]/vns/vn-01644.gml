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
  id 1644
  arrival_time 16385.0
  lifetime 385.5615648929384
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 41
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 33
  ]
  node [
    id 7
    label "7"
    cpu 32
  ]
  node [
    id 8
    label "8"
    cpu 42
  ]
  node [
    id 9
    label "9"
    cpu 17
  ]
  edge [
    source 0
    target 2
    bw 15
  ]
  edge [
    source 0
    target 4
    bw 30
  ]
  edge [
    source 0
    target 5
    bw 21
  ]
  edge [
    source 0
    target 6
    bw 27
  ]
  edge [
    source 0
    target 8
    bw 21
  ]
  edge [
    source 0
    target 9
    bw 21
  ]
  edge [
    source 1
    target 2
    bw 36
  ]
  edge [
    source 1
    target 3
    bw 42
  ]
  edge [
    source 1
    target 4
    bw 19
  ]
  edge [
    source 1
    target 5
    bw 49
  ]
  edge [
    source 1
    target 6
    bw 6
  ]
  edge [
    source 1
    target 8
    bw 50
  ]
  edge [
    source 1
    target 9
    bw 32
  ]
  edge [
    source 2
    target 3
    bw 2
  ]
  edge [
    source 2
    target 4
    bw 43
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 2
    target 6
    bw 31
  ]
  edge [
    source 2
    target 9
    bw 29
  ]
  edge [
    source 3
    target 4
    bw 30
  ]
  edge [
    source 3
    target 8
    bw 40
  ]
  edge [
    source 3
    target 9
    bw 23
  ]
  edge [
    source 4
    target 6
    bw 19
  ]
  edge [
    source 5
    target 8
    bw 12
  ]
  edge [
    source 6
    target 9
    bw 47
  ]
  edge [
    source 7
    target 8
    bw 21
  ]
  edge [
    source 8
    target 9
    bw 44
  ]
]
