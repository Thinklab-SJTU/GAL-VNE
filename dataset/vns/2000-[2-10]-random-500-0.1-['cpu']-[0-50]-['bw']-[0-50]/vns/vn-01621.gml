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
  id 1621
  arrival_time 16146.0
  lifetime 873.3447360850216
  num_nodes 8
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
    cpu 41
  ]
  node [
    id 2
    label "2"
    cpu 13
  ]
  node [
    id 3
    label "3"
    cpu 19
  ]
  node [
    id 4
    label "4"
    cpu 25
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 44
  ]
  node [
    id 7
    label "7"
    cpu 3
  ]
  edge [
    source 0
    target 1
    bw 9
  ]
  edge [
    source 0
    target 2
    bw 39
  ]
  edge [
    source 0
    target 6
    bw 6
  ]
  edge [
    source 0
    target 7
    bw 36
  ]
  edge [
    source 1
    target 2
    bw 26
  ]
  edge [
    source 1
    target 3
    bw 10
  ]
  edge [
    source 1
    target 4
    bw 44
  ]
  edge [
    source 1
    target 5
    bw 30
  ]
  edge [
    source 1
    target 7
    bw 44
  ]
  edge [
    source 2
    target 4
    bw 22
  ]
  edge [
    source 2
    target 7
    bw 33
  ]
  edge [
    source 3
    target 4
    bw 46
  ]
  edge [
    source 3
    target 6
    bw 24
  ]
  edge [
    source 3
    target 7
    bw 30
  ]
  edge [
    source 4
    target 6
    bw 6
  ]
  edge [
    source 5
    target 7
    bw 28
  ]
]
