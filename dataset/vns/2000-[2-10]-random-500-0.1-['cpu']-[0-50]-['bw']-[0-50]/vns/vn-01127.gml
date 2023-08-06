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
  id 1127
  arrival_time 11213.0
  lifetime 553.3856023308839
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 16
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 43
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 22
  ]
  node [
    id 8
    label "8"
    cpu 41
  ]
  node [
    id 9
    label "9"
    cpu 47
  ]
  edge [
    source 0
    target 1
    bw 43
  ]
  edge [
    source 0
    target 4
    bw 33
  ]
  edge [
    source 0
    target 7
    bw 46
  ]
  edge [
    source 0
    target 9
    bw 44
  ]
  edge [
    source 1
    target 4
    bw 41
  ]
  edge [
    source 1
    target 7
    bw 35
  ]
  edge [
    source 1
    target 8
    bw 21
  ]
  edge [
    source 1
    target 9
    bw 35
  ]
  edge [
    source 2
    target 5
    bw 5
  ]
  edge [
    source 2
    target 7
    bw 5
  ]
  edge [
    source 2
    target 8
    bw 10
  ]
  edge [
    source 3
    target 6
    bw 47
  ]
  edge [
    source 3
    target 8
    bw 35
  ]
  edge [
    source 4
    target 6
    bw 39
  ]
  edge [
    source 4
    target 8
    bw 6
  ]
  edge [
    source 4
    target 9
    bw 20
  ]
  edge [
    source 5
    target 9
    bw 40
  ]
  edge [
    source 6
    target 7
    bw 32
  ]
  edge [
    source 6
    target 9
    bw 42
  ]
  edge [
    source 7
    target 8
    bw 7
  ]
  edge [
    source 7
    target 9
    bw 15
  ]
  edge [
    source 8
    target 9
    bw 2
  ]
]
