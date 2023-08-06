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
  id 635
  arrival_time 6401.0
  lifetime 129.82500589763913
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 21
  ]
  node [
    id 1
    label "1"
    cpu 21
  ]
  node [
    id 2
    label "2"
    cpu 39
  ]
  node [
    id 3
    label "3"
    cpu 31
  ]
  node [
    id 4
    label "4"
    cpu 25
  ]
  node [
    id 5
    label "5"
    cpu 2
  ]
  node [
    id 6
    label "6"
    cpu 10
  ]
  node [
    id 7
    label "7"
    cpu 19
  ]
  node [
    id 8
    label "8"
    cpu 49
  ]
  node [
    id 9
    label "9"
    cpu 38
  ]
  edge [
    source 0
    target 5
    bw 13
  ]
  edge [
    source 0
    target 6
    bw 4
  ]
  edge [
    source 0
    target 9
    bw 31
  ]
  edge [
    source 1
    target 2
    bw 44
  ]
  edge [
    source 1
    target 3
    bw 15
  ]
  edge [
    source 1
    target 4
    bw 38
  ]
  edge [
    source 1
    target 5
    bw 39
  ]
  edge [
    source 1
    target 6
    bw 0
  ]
  edge [
    source 2
    target 4
    bw 21
  ]
  edge [
    source 2
    target 6
    bw 20
  ]
  edge [
    source 2
    target 7
    bw 28
  ]
  edge [
    source 2
    target 9
    bw 47
  ]
  edge [
    source 3
    target 4
    bw 32
  ]
  edge [
    source 3
    target 8
    bw 4
  ]
  edge [
    source 3
    target 9
    bw 47
  ]
  edge [
    source 4
    target 5
    bw 38
  ]
  edge [
    source 4
    target 7
    bw 18
  ]
  edge [
    source 5
    target 6
    bw 19
  ]
  edge [
    source 5
    target 7
    bw 43
  ]
  edge [
    source 6
    target 8
    bw 12
  ]
  edge [
    source 6
    target 9
    bw 17
  ]
  edge [
    source 8
    target 9
    bw 26
  ]
]
