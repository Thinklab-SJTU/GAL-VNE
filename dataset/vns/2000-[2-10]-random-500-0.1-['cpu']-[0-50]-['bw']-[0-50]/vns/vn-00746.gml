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
  id 746
  arrival_time 7490.0
  lifetime 664.3658675747383
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 10
  ]
  node [
    id 1
    label "1"
    cpu 6
  ]
  node [
    id 2
    label "2"
    cpu 30
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 12
  ]
  node [
    id 5
    label "5"
    cpu 16
  ]
  node [
    id 6
    label "6"
    cpu 16
  ]
  node [
    id 7
    label "7"
    cpu 49
  ]
  node [
    id 8
    label "8"
    cpu 42
  ]
  node [
    id 9
    label "9"
    cpu 26
  ]
  edge [
    source 0
    target 1
    bw 8
  ]
  edge [
    source 0
    target 2
    bw 15
  ]
  edge [
    source 0
    target 3
    bw 14
  ]
  edge [
    source 0
    target 4
    bw 22
  ]
  edge [
    source 0
    target 6
    bw 11
  ]
  edge [
    source 0
    target 8
    bw 20
  ]
  edge [
    source 1
    target 3
    bw 30
  ]
  edge [
    source 1
    target 6
    bw 1
  ]
  edge [
    source 1
    target 8
    bw 11
  ]
  edge [
    source 1
    target 9
    bw 19
  ]
  edge [
    source 2
    target 5
    bw 30
  ]
  edge [
    source 2
    target 6
    bw 46
  ]
  edge [
    source 2
    target 7
    bw 9
  ]
  edge [
    source 2
    target 8
    bw 20
  ]
  edge [
    source 3
    target 4
    bw 32
  ]
  edge [
    source 3
    target 7
    bw 43
  ]
  edge [
    source 3
    target 8
    bw 27
  ]
  edge [
    source 4
    target 6
    bw 14
  ]
  edge [
    source 4
    target 9
    bw 7
  ]
  edge [
    source 5
    target 9
    bw 38
  ]
  edge [
    source 6
    target 9
    bw 15
  ]
  edge [
    source 7
    target 8
    bw 18
  ]
  edge [
    source 7
    target 9
    bw 38
  ]
]
