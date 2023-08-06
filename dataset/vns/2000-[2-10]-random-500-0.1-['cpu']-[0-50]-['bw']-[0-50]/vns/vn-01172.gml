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
  id 1172
  arrival_time 11683.0
  lifetime 484.9444766006654
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 18
  ]
  node [
    id 1
    label "1"
    cpu 30
  ]
  node [
    id 2
    label "2"
    cpu 47
  ]
  node [
    id 3
    label "3"
    cpu 40
  ]
  node [
    id 4
    label "4"
    cpu 23
  ]
  node [
    id 5
    label "5"
    cpu 41
  ]
  node [
    id 6
    label "6"
    cpu 21
  ]
  node [
    id 7
    label "7"
    cpu 23
  ]
  edge [
    source 0
    target 5
    bw 30
  ]
  edge [
    source 0
    target 6
    bw 49
  ]
  edge [
    source 1
    target 2
    bw 30
  ]
  edge [
    source 1
    target 3
    bw 10
  ]
  edge [
    source 2
    target 4
    bw 30
  ]
  edge [
    source 2
    target 5
    bw 15
  ]
  edge [
    source 2
    target 6
    bw 42
  ]
  edge [
    source 2
    target 7
    bw 1
  ]
  edge [
    source 3
    target 7
    bw 40
  ]
  edge [
    source 5
    target 6
    bw 4
  ]
  edge [
    source 6
    target 7
    bw 41
  ]
]
