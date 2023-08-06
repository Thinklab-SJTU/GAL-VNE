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
  id 618
  arrival_time 6232.0
  lifetime 227.8451009957074
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 25
  ]
  node [
    id 2
    label "2"
    cpu 6
  ]
  node [
    id 3
    label "3"
    cpu 36
  ]
  node [
    id 4
    label "4"
    cpu 2
  ]
  node [
    id 5
    label "5"
    cpu 39
  ]
  node [
    id 6
    label "6"
    cpu 28
  ]
  node [
    id 7
    label "7"
    cpu 39
  ]
  node [
    id 8
    label "8"
    cpu 27
  ]
  edge [
    source 0
    target 1
    bw 37
  ]
  edge [
    source 0
    target 3
    bw 7
  ]
  edge [
    source 0
    target 7
    bw 44
  ]
  edge [
    source 1
    target 2
    bw 13
  ]
  edge [
    source 1
    target 3
    bw 29
  ]
  edge [
    source 1
    target 4
    bw 5
  ]
  edge [
    source 1
    target 5
    bw 10
  ]
  edge [
    source 1
    target 8
    bw 40
  ]
  edge [
    source 2
    target 3
    bw 12
  ]
  edge [
    source 3
    target 4
    bw 4
  ]
  edge [
    source 3
    target 6
    bw 7
  ]
  edge [
    source 3
    target 8
    bw 49
  ]
  edge [
    source 4
    target 5
    bw 30
  ]
  edge [
    source 4
    target 6
    bw 1
  ]
  edge [
    source 4
    target 8
    bw 10
  ]
  edge [
    source 5
    target 6
    bw 4
  ]
  edge [
    source 6
    target 7
    bw 5
  ]
]
