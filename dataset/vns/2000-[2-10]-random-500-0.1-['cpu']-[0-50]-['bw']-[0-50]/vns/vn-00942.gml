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
  id 942
  arrival_time 9400.0
  lifetime 126.96292854469979
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 14
  ]
  node [
    id 1
    label "1"
    cpu 49
  ]
  node [
    id 2
    label "2"
    cpu 33
  ]
  node [
    id 3
    label "3"
    cpu 16
  ]
  node [
    id 4
    label "4"
    cpu 49
  ]
  node [
    id 5
    label "5"
    cpu 32
  ]
  node [
    id 6
    label "6"
    cpu 45
  ]
  node [
    id 7
    label "7"
    cpu 24
  ]
  node [
    id 8
    label "8"
    cpu 27
  ]
  node [
    id 9
    label "9"
    cpu 46
  ]
  edge [
    source 0
    target 4
    bw 47
  ]
  edge [
    source 0
    target 5
    bw 0
  ]
  edge [
    source 0
    target 7
    bw 21
  ]
  edge [
    source 1
    target 3
    bw 2
  ]
  edge [
    source 1
    target 4
    bw 24
  ]
  edge [
    source 1
    target 5
    bw 19
  ]
  edge [
    source 1
    target 8
    bw 42
  ]
  edge [
    source 1
    target 9
    bw 24
  ]
  edge [
    source 2
    target 3
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 23
  ]
  edge [
    source 2
    target 5
    bw 23
  ]
  edge [
    source 3
    target 6
    bw 6
  ]
  edge [
    source 3
    target 7
    bw 40
  ]
  edge [
    source 4
    target 5
    bw 27
  ]
  edge [
    source 5
    target 8
    bw 39
  ]
  edge [
    source 5
    target 9
    bw 35
  ]
  edge [
    source 6
    target 8
    bw 30
  ]
  edge [
    source 6
    target 9
    bw 14
  ]
  edge [
    source 7
    target 8
    bw 48
  ]
  edge [
    source 8
    target 9
    bw 1
  ]
]
