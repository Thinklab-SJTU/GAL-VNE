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
  id 187
  arrival_time 1887.0
  lifetime 1017.7892765231542
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 48
  ]
  node [
    id 1
    label "1"
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 49
  ]
  node [
    id 3
    label "3"
    cpu 12
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 13
  ]
  node [
    id 7
    label "7"
    cpu 4
  ]
  node [
    id 8
    label "8"
    cpu 1
  ]
  edge [
    source 0
    target 2
    bw 33
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 0
    target 5
    bw 41
  ]
  edge [
    source 1
    target 2
    bw 44
  ]
  edge [
    source 1
    target 3
    bw 7
  ]
  edge [
    source 1
    target 5
    bw 18
  ]
  edge [
    source 2
    target 7
    bw 17
  ]
  edge [
    source 2
    target 8
    bw 13
  ]
  edge [
    source 3
    target 4
    bw 24
  ]
  edge [
    source 3
    target 6
    bw 50
  ]
  edge [
    source 3
    target 7
    bw 12
  ]
  edge [
    source 3
    target 8
    bw 6
  ]
  edge [
    source 4
    target 6
    bw 14
  ]
  edge [
    source 4
    target 7
    bw 40
  ]
  edge [
    source 5
    target 7
    bw 28
  ]
  edge [
    source 6
    target 7
    bw 25
  ]
]
