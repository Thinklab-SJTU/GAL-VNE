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
  id 853
  arrival_time 8491.0
  lifetime 716.2347421696819
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 3
  ]
  node [
    id 1
    label "1"
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 0
  ]
  node [
    id 3
    label "3"
    cpu 46
  ]
  node [
    id 4
    label "4"
    cpu 26
  ]
  node [
    id 5
    label "5"
    cpu 1
  ]
  node [
    id 6
    label "6"
    cpu 7
  ]
  node [
    id 7
    label "7"
    cpu 26
  ]
  node [
    id 8
    label "8"
    cpu 39
  ]
  node [
    id 9
    label "9"
    cpu 22
  ]
  edge [
    source 0
    target 8
    bw 0
  ]
  edge [
    source 0
    target 9
    bw 24
  ]
  edge [
    source 1
    target 2
    bw 24
  ]
  edge [
    source 1
    target 3
    bw 16
  ]
  edge [
    source 1
    target 5
    bw 7
  ]
  edge [
    source 1
    target 6
    bw 39
  ]
  edge [
    source 1
    target 7
    bw 3
  ]
  edge [
    source 1
    target 9
    bw 15
  ]
  edge [
    source 2
    target 3
    bw 7
  ]
  edge [
    source 2
    target 6
    bw 31
  ]
  edge [
    source 2
    target 7
    bw 42
  ]
  edge [
    source 2
    target 8
    bw 9
  ]
  edge [
    source 2
    target 9
    bw 40
  ]
  edge [
    source 3
    target 6
    bw 10
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 7
    bw 18
  ]
  edge [
    source 4
    target 8
    bw 35
  ]
  edge [
    source 5
    target 6
    bw 33
  ]
  edge [
    source 5
    target 7
    bw 40
  ]
  edge [
    source 5
    target 8
    bw 26
  ]
  edge [
    source 6
    target 8
    bw 18
  ]
  edge [
    source 8
    target 9
    bw 16
  ]
]
