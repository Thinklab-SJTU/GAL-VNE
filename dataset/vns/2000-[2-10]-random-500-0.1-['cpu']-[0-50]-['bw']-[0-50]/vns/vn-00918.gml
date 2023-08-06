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
  id 918
  arrival_time 9168.0
  lifetime 1382.5723153238678
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 28
  ]
  node [
    id 1
    label "1"
    cpu 5
  ]
  node [
    id 2
    label "2"
    cpu 38
  ]
  node [
    id 3
    label "3"
    cpu 46
  ]
  node [
    id 4
    label "4"
    cpu 11
  ]
  node [
    id 5
    label "5"
    cpu 17
  ]
  node [
    id 6
    label "6"
    cpu 41
  ]
  node [
    id 7
    label "7"
    cpu 5
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 3
    bw 23
  ]
  edge [
    source 0
    target 4
    bw 49
  ]
  edge [
    source 0
    target 6
    bw 42
  ]
  edge [
    source 1
    target 3
    bw 46
  ]
  edge [
    source 1
    target 4
    bw 48
  ]
  edge [
    source 1
    target 5
    bw 44
  ]
  edge [
    source 1
    target 6
    bw 50
  ]
  edge [
    source 2
    target 3
    bw 38
  ]
  edge [
    source 3
    target 4
    bw 6
  ]
  edge [
    source 3
    target 5
    bw 30
  ]
  edge [
    source 3
    target 6
    bw 19
  ]
  edge [
    source 4
    target 6
    bw 17
  ]
  edge [
    source 4
    target 7
    bw 15
  ]
  edge [
    source 6
    target 7
    bw 1
  ]
]
