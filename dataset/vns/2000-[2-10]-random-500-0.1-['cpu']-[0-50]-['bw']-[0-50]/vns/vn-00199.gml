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
  id 199
  arrival_time 2009.0
  lifetime 1614.1624643421749
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 41
  ]
  node [
    id 1
    label "1"
    cpu 34
  ]
  node [
    id 2
    label "2"
    cpu 1
  ]
  node [
    id 3
    label "3"
    cpu 23
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 46
  ]
  node [
    id 6
    label "6"
    cpu 35
  ]
  edge [
    source 0
    target 1
    bw 23
  ]
  edge [
    source 0
    target 2
    bw 17
  ]
  edge [
    source 0
    target 4
    bw 31
  ]
  edge [
    source 0
    target 5
    bw 34
  ]
  edge [
    source 1
    target 4
    bw 29
  ]
  edge [
    source 1
    target 6
    bw 38
  ]
  edge [
    source 2
    target 3
    bw 50
  ]
  edge [
    source 2
    target 4
    bw 9
  ]
  edge [
    source 2
    target 5
    bw 49
  ]
  edge [
    source 2
    target 6
    bw 24
  ]
  edge [
    source 3
    target 5
    bw 24
  ]
  edge [
    source 4
    target 5
    bw 0
  ]
]