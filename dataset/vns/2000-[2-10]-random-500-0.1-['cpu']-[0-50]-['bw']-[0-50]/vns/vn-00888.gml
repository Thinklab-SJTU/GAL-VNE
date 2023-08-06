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
  id 888
  arrival_time 8857.0
  lifetime 85.0611749054008
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 5
  ]
  node [
    id 1
    label "1"
    cpu 26
  ]
  node [
    id 2
    label "2"
    cpu 14
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 28
  ]
  node [
    id 6
    label "6"
    cpu 44
  ]
  node [
    id 7
    label "7"
    cpu 33
  ]
  node [
    id 8
    label "8"
    cpu 33
  ]
  node [
    id 9
    label "9"
    cpu 18
  ]
  edge [
    source 0
    target 4
    bw 47
  ]
  edge [
    source 0
    target 6
    bw 31
  ]
  edge [
    source 0
    target 7
    bw 15
  ]
  edge [
    source 0
    target 8
    bw 7
  ]
  edge [
    source 1
    target 3
    bw 4
  ]
  edge [
    source 1
    target 6
    bw 5
  ]
  edge [
    source 1
    target 8
    bw 42
  ]
  edge [
    source 1
    target 9
    bw 14
  ]
  edge [
    source 2
    target 3
    bw 34
  ]
  edge [
    source 2
    target 4
    bw 33
  ]
  edge [
    source 2
    target 6
    bw 7
  ]
  edge [
    source 2
    target 7
    bw 44
  ]
  edge [
    source 2
    target 8
    bw 50
  ]
  edge [
    source 3
    target 8
    bw 28
  ]
  edge [
    source 3
    target 9
    bw 3
  ]
  edge [
    source 4
    target 8
    bw 41
  ]
  edge [
    source 4
    target 9
    bw 25
  ]
  edge [
    source 5
    target 6
    bw 49
  ]
  edge [
    source 5
    target 7
    bw 13
  ]
  edge [
    source 5
    target 8
    bw 9
  ]
  edge [
    source 6
    target 7
    bw 40
  ]
  edge [
    source 6
    target 8
    bw 46
  ]
  edge [
    source 6
    target 9
    bw 0
  ]
  edge [
    source 8
    target 9
    bw 6
  ]
]
