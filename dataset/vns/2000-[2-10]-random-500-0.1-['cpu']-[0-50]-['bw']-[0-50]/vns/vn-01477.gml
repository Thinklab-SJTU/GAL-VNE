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
  id 1477
  arrival_time 14747.0
  lifetime 941.5459102958973
  num_nodes 9
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
    cpu 33
  ]
  node [
    id 2
    label "2"
    cpu 25
  ]
  node [
    id 3
    label "3"
    cpu 38
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  node [
    id 6
    label "6"
    cpu 48
  ]
  node [
    id 7
    label "7"
    cpu 19
  ]
  node [
    id 8
    label "8"
    cpu 0
  ]
  edge [
    source 0
    target 1
    bw 6
  ]
  edge [
    source 0
    target 3
    bw 17
  ]
  edge [
    source 0
    target 4
    bw 2
  ]
  edge [
    source 0
    target 7
    bw 40
  ]
  edge [
    source 1
    target 2
    bw 36
  ]
  edge [
    source 1
    target 5
    bw 33
  ]
  edge [
    source 1
    target 7
    bw 7
  ]
  edge [
    source 1
    target 8
    bw 4
  ]
  edge [
    source 2
    target 7
    bw 36
  ]
  edge [
    source 3
    target 6
    bw 28
  ]
  edge [
    source 3
    target 7
    bw 41
  ]
  edge [
    source 3
    target 8
    bw 13
  ]
  edge [
    source 4
    target 8
    bw 22
  ]
  edge [
    source 6
    target 7
    bw 18
  ]
  edge [
    source 6
    target 8
    bw 11
  ]
]
