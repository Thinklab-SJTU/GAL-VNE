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
  id 1834
  arrival_time 18289.0
  lifetime 135.34245866417152
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 30
  ]
  node [
    id 1
    label "1"
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 46
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 15
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 7
  ]
  node [
    id 7
    label "7"
    cpu 27
  ]
  node [
    id 8
    label "8"
    cpu 23
  ]
  node [
    id 9
    label "9"
    cpu 42
  ]
  edge [
    source 0
    target 3
    bw 12
  ]
  edge [
    source 0
    target 6
    bw 39
  ]
  edge [
    source 0
    target 8
    bw 48
  ]
  edge [
    source 0
    target 9
    bw 7
  ]
  edge [
    source 1
    target 2
    bw 35
  ]
  edge [
    source 1
    target 4
    bw 50
  ]
  edge [
    source 1
    target 5
    bw 47
  ]
  edge [
    source 1
    target 6
    bw 35
  ]
  edge [
    source 1
    target 7
    bw 2
  ]
  edge [
    source 1
    target 9
    bw 30
  ]
  edge [
    source 2
    target 3
    bw 20
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 2
    target 7
    bw 23
  ]
  edge [
    source 2
    target 8
    bw 24
  ]
  edge [
    source 2
    target 9
    bw 26
  ]
  edge [
    source 3
    target 9
    bw 32
  ]
  edge [
    source 5
    target 7
    bw 15
  ]
  edge [
    source 5
    target 8
    bw 30
  ]
  edge [
    source 5
    target 9
    bw 12
  ]
  edge [
    source 6
    target 7
    bw 24
  ]
  edge [
    source 6
    target 8
    bw 23
  ]
  edge [
    source 8
    target 9
    bw 18
  ]
]
