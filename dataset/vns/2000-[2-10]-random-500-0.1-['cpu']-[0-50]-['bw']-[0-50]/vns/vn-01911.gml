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
  id 1911
  arrival_time 19021.0
  lifetime 31.85128964682233
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 29
  ]
  node [
    id 1
    label "1"
    cpu 16
  ]
  node [
    id 2
    label "2"
    cpu 33
  ]
  node [
    id 3
    label "3"
    cpu 48
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 38
  ]
  node [
    id 6
    label "6"
    cpu 27
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  edge [
    source 0
    target 3
    bw 18
  ]
  edge [
    source 0
    target 5
    bw 37
  ]
  edge [
    source 0
    target 6
    bw 3
  ]
  edge [
    source 1
    target 2
    bw 33
  ]
  edge [
    source 1
    target 3
    bw 34
  ]
  edge [
    source 1
    target 7
    bw 45
  ]
  edge [
    source 2
    target 3
    bw 26
  ]
  edge [
    source 2
    target 5
    bw 41
  ]
  edge [
    source 3
    target 7
    bw 8
  ]
  edge [
    source 4
    target 5
    bw 29
  ]
  edge [
    source 5
    target 6
    bw 8
  ]
  edge [
    source 5
    target 7
    bw 47
  ]
  edge [
    source 6
    target 7
    bw 14
  ]
]
