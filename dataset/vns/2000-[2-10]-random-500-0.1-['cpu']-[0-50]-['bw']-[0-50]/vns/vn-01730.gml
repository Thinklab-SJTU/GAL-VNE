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
  id 1730
  arrival_time 17273.0
  lifetime 881.8878040804647
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 9
  ]
  node [
    id 1
    label "1"
    cpu 22
  ]
  node [
    id 2
    label "2"
    cpu 39
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 3
  ]
  node [
    id 5
    label "5"
    cpu 47
  ]
  node [
    id 6
    label "6"
    cpu 27
  ]
  node [
    id 7
    label "7"
    cpu 46
  ]
  node [
    id 8
    label "8"
    cpu 44
  ]
  node [
    id 9
    label "9"
    cpu 4
  ]
  edge [
    source 0
    target 1
    bw 7
  ]
  edge [
    source 0
    target 2
    bw 13
  ]
  edge [
    source 0
    target 5
    bw 18
  ]
  edge [
    source 0
    target 8
    bw 1
  ]
  edge [
    source 1
    target 3
    bw 28
  ]
  edge [
    source 1
    target 5
    bw 40
  ]
  edge [
    source 2
    target 4
    bw 44
  ]
  edge [
    source 2
    target 5
    bw 29
  ]
  edge [
    source 2
    target 6
    bw 50
  ]
  edge [
    source 2
    target 7
    bw 44
  ]
  edge [
    source 2
    target 8
    bw 39
  ]
  edge [
    source 4
    target 7
    bw 16
  ]
  edge [
    source 4
    target 8
    bw 33
  ]
  edge [
    source 5
    target 6
    bw 9
  ]
  edge [
    source 5
    target 7
    bw 28
  ]
  edge [
    source 5
    target 8
    bw 44
  ]
  edge [
    source 6
    target 7
    bw 5
  ]
  edge [
    source 6
    target 9
    bw 48
  ]
  edge [
    source 7
    target 9
    bw 34
  ]
  edge [
    source 8
    target 9
    bw 48
  ]
]
