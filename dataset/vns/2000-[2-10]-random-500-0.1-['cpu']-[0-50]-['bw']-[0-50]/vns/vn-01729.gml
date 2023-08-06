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
  id 1729
  arrival_time 17266.0
  lifetime 222.66858606470086
  num_nodes 7
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
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 27
  ]
  node [
    id 3
    label "3"
    cpu 27
  ]
  node [
    id 4
    label "4"
    cpu 35
  ]
  node [
    id 5
    label "5"
    cpu 40
  ]
  node [
    id 6
    label "6"
    cpu 9
  ]
  edge [
    source 0
    target 1
    bw 45
  ]
  edge [
    source 0
    target 3
    bw 44
  ]
  edge [
    source 0
    target 6
    bw 10
  ]
  edge [
    source 1
    target 2
    bw 49
  ]
  edge [
    source 2
    target 6
    bw 6
  ]
  edge [
    source 3
    target 5
    bw 22
  ]
  edge [
    source 3
    target 6
    bw 4
  ]
  edge [
    source 4
    target 5
    bw 11
  ]
  edge [
    source 4
    target 6
    bw 37
  ]
]
