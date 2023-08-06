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
  id 1471
  arrival_time 14688.0
  lifetime 380.98441071815404
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 25
  ]
  node [
    id 1
    label "1"
    cpu 37
  ]
  node [
    id 2
    label "2"
    cpu 46
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 17
  ]
  node [
    id 5
    label "5"
    cpu 0
  ]
  node [
    id 6
    label "6"
    cpu 3
  ]
  edge [
    source 0
    target 1
    bw 16
  ]
  edge [
    source 0
    target 2
    bw 33
  ]
  edge [
    source 0
    target 3
    bw 3
  ]
  edge [
    source 0
    target 5
    bw 16
  ]
  edge [
    source 0
    target 6
    bw 6
  ]
  edge [
    source 1
    target 2
    bw 29
  ]
  edge [
    source 1
    target 3
    bw 11
  ]
  edge [
    source 1
    target 4
    bw 49
  ]
  edge [
    source 1
    target 6
    bw 0
  ]
  edge [
    source 2
    target 3
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 43
  ]
  edge [
    source 2
    target 5
    bw 18
  ]
  edge [
    source 2
    target 6
    bw 40
  ]
  edge [
    source 3
    target 4
    bw 31
  ]
  edge [
    source 3
    target 5
    bw 49
  ]
  edge [
    source 4
    target 6
    bw 35
  ]
]
