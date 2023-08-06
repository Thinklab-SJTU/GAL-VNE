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
  id 1438
  arrival_time 14348.0
  lifetime 494.7728215872377
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 49
  ]
  node [
    id 1
    label "1"
    cpu 34
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 34
  ]
  node [
    id 4
    label "4"
    cpu 18
  ]
  node [
    id 5
    label "5"
    cpu 37
  ]
  edge [
    source 0
    target 2
    bw 7
  ]
  edge [
    source 0
    target 3
    bw 16
  ]
  edge [
    source 0
    target 5
    bw 30
  ]
  edge [
    source 1
    target 3
    bw 41
  ]
  edge [
    source 1
    target 5
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 39
  ]
  edge [
    source 2
    target 5
    bw 4
  ]
]
