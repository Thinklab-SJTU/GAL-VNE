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
  id 1511
  arrival_time 15092.0
  lifetime 44.572371487317234
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 17
  ]
  node [
    id 1
    label "1"
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 32
  ]
  node [
    id 3
    label "3"
    cpu 47
  ]
  node [
    id 4
    label "4"
    cpu 34
  ]
  node [
    id 5
    label "5"
    cpu 35
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  node [
    id 7
    label "7"
    cpu 14
  ]
  node [
    id 8
    label "8"
    cpu 3
  ]
  node [
    id 9
    label "9"
    cpu 1
  ]
  edge [
    source 0
    target 3
    bw 41
  ]
  edge [
    source 0
    target 4
    bw 33
  ]
  edge [
    source 0
    target 6
    bw 0
  ]
  edge [
    source 1
    target 2
    bw 16
  ]
  edge [
    source 1
    target 7
    bw 41
  ]
  edge [
    source 1
    target 9
    bw 35
  ]
  edge [
    source 2
    target 3
    bw 18
  ]
  edge [
    source 2
    target 4
    bw 37
  ]
  edge [
    source 2
    target 6
    bw 23
  ]
  edge [
    source 3
    target 4
    bw 49
  ]
  edge [
    source 3
    target 6
    bw 0
  ]
  edge [
    source 4
    target 5
    bw 10
  ]
  edge [
    source 4
    target 9
    bw 43
  ]
  edge [
    source 5
    target 6
    bw 34
  ]
  edge [
    source 5
    target 8
    bw 34
  ]
  edge [
    source 6
    target 7
    bw 2
  ]
  edge [
    source 6
    target 8
    bw 36
  ]
  edge [
    source 6
    target 9
    bw 25
  ]
  edge [
    source 7
    target 9
    bw 30
  ]
  edge [
    source 8
    target 9
    bw 14
  ]
]
