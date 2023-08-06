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
  id 1963
  arrival_time 19554.0
  lifetime 50.129943404334355
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 36
  ]
  node [
    id 1
    label "1"
    cpu 17
  ]
  node [
    id 2
    label "2"
    cpu 16
  ]
  node [
    id 3
    label "3"
    cpu 15
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 19
  ]
  node [
    id 6
    label "6"
    cpu 16
  ]
  node [
    id 7
    label "7"
    cpu 4
  ]
  node [
    id 8
    label "8"
    cpu 19
  ]
  edge [
    source 0
    target 1
    bw 40
  ]
  edge [
    source 0
    target 5
    bw 4
  ]
  edge [
    source 0
    target 6
    bw 3
  ]
  edge [
    source 0
    target 8
    bw 38
  ]
  edge [
    source 1
    target 3
    bw 39
  ]
  edge [
    source 1
    target 5
    bw 33
  ]
  edge [
    source 1
    target 6
    bw 46
  ]
  edge [
    source 1
    target 8
    bw 28
  ]
  edge [
    source 2
    target 3
    bw 12
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 2
    target 7
    bw 6
  ]
  edge [
    source 2
    target 8
    bw 4
  ]
  edge [
    source 3
    target 4
    bw 4
  ]
  edge [
    source 3
    target 5
    bw 10
  ]
  edge [
    source 3
    target 7
    bw 7
  ]
  edge [
    source 4
    target 5
    bw 17
  ]
  edge [
    source 4
    target 6
    bw 37
  ]
  edge [
    source 4
    target 7
    bw 28
  ]
  edge [
    source 4
    target 8
    bw 48
  ]
  edge [
    source 5
    target 6
    bw 48
  ]
  edge [
    source 5
    target 8
    bw 39
  ]
  edge [
    source 7
    target 8
    bw 38
  ]
]
