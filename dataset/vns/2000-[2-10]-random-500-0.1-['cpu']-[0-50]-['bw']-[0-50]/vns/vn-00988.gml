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
  id 988
  arrival_time 9840.0
  lifetime 162.54686620707656
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 7
  ]
  node [
    id 1
    label "1"
    cpu 37
  ]
  node [
    id 2
    label "2"
    cpu 28
  ]
  node [
    id 3
    label "3"
    cpu 1
  ]
  node [
    id 4
    label "4"
    cpu 33
  ]
  node [
    id 5
    label "5"
    cpu 15
  ]
  node [
    id 6
    label "6"
    cpu 36
  ]
  edge [
    source 0
    target 1
    bw 47
  ]
  edge [
    source 0
    target 2
    bw 14
  ]
  edge [
    source 0
    target 3
    bw 24
  ]
  edge [
    source 0
    target 4
    bw 42
  ]
  edge [
    source 0
    target 6
    bw 0
  ]
  edge [
    source 1
    target 3
    bw 34
  ]
  edge [
    source 1
    target 4
    bw 22
  ]
  edge [
    source 1
    target 5
    bw 48
  ]
  edge [
    source 2
    target 3
    bw 49
  ]
  edge [
    source 2
    target 6
    bw 3
  ]
  edge [
    source 3
    target 5
    bw 46
  ]
  edge [
    source 4
    target 5
    bw 30
  ]
]
