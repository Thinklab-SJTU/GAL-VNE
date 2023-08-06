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
  id 1910
  arrival_time 19012.0
  lifetime 60.87147516784163
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 44
  ]
  node [
    id 1
    label "1"
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 48
  ]
  node [
    id 3
    label "3"
    cpu 44
  ]
  node [
    id 4
    label "4"
    cpu 5
  ]
  node [
    id 5
    label "5"
    cpu 8
  ]
  node [
    id 6
    label "6"
    cpu 8
  ]
  node [
    id 7
    label "7"
    cpu 41
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 3
    bw 1
  ]
  edge [
    source 0
    target 4
    bw 4
  ]
  edge [
    source 0
    target 7
    bw 27
  ]
  edge [
    source 1
    target 2
    bw 17
  ]
  edge [
    source 1
    target 4
    bw 49
  ]
  edge [
    source 1
    target 6
    bw 30
  ]
  edge [
    source 1
    target 7
    bw 29
  ]
  edge [
    source 2
    target 7
    bw 46
  ]
  edge [
    source 3
    target 4
    bw 25
  ]
  edge [
    source 5
    target 7
    bw 27
  ]
]
