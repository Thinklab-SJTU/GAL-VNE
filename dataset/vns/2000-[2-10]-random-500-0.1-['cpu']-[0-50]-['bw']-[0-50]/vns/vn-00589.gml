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
  id 589
  arrival_time 5934.0
  lifetime 128.55550926678683
  num_nodes 5
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 39
  ]
  node [
    id 1
    label "1"
    cpu 26
  ]
  node [
    id 2
    label "2"
    cpu 7
  ]
  node [
    id 3
    label "3"
    cpu 2
  ]
  node [
    id 4
    label "4"
    cpu 50
  ]
  edge [
    source 0
    target 1
    bw 12
  ]
  edge [
    source 0
    target 2
    bw 40
  ]
  edge [
    source 0
    target 4
    bw 38
  ]
  edge [
    source 1
    target 2
    bw 27
  ]
  edge [
    source 1
    target 3
    bw 22
  ]
  edge [
    source 1
    target 4
    bw 47
  ]
  edge [
    source 2
    target 4
    bw 43
  ]
  edge [
    source 3
    target 4
    bw 19
  ]
]
