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
  id 1713
  arrival_time 17096.0
  lifetime 57.269427737563696
  num_nodes 7
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
    cpu 13
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 20
  ]
  node [
    id 4
    label "4"
    cpu 27
  ]
  node [
    id 5
    label "5"
    cpu 44
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  edge [
    source 0
    target 1
    bw 23
  ]
  edge [
    source 0
    target 2
    bw 35
  ]
  edge [
    source 0
    target 4
    bw 12
  ]
  edge [
    source 1
    target 3
    bw 5
  ]
  edge [
    source 1
    target 5
    bw 5
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 2
    target 5
    bw 0
  ]
  edge [
    source 3
    target 5
    bw 43
  ]
  edge [
    source 3
    target 6
    bw 18
  ]
  edge [
    source 4
    target 5
    bw 1
  ]
]
