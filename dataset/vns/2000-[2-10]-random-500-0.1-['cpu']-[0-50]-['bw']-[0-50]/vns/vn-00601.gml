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
  id 601
  arrival_time 6066.0
  lifetime 1439.3052217734771
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 24
  ]
  node [
    id 1
    label "1"
    cpu 30
  ]
  node [
    id 2
    label "2"
    cpu 29
  ]
  node [
    id 3
    label "3"
    cpu 12
  ]
  node [
    id 4
    label "4"
    cpu 24
  ]
  node [
    id 5
    label "5"
    cpu 27
  ]
  node [
    id 6
    label "6"
    cpu 25
  ]
  node [
    id 7
    label "7"
    cpu 33
  ]
  node [
    id 8
    label "8"
    cpu 35
  ]
  node [
    id 9
    label "9"
    cpu 35
  ]
  edge [
    source 0
    target 1
    bw 30
  ]
  edge [
    source 0
    target 6
    bw 46
  ]
  edge [
    source 0
    target 7
    bw 41
  ]
  edge [
    source 1
    target 6
    bw 34
  ]
  edge [
    source 1
    target 7
    bw 5
  ]
  edge [
    source 1
    target 9
    bw 49
  ]
  edge [
    source 2
    target 4
    bw 14
  ]
  edge [
    source 2
    target 6
    bw 11
  ]
  edge [
    source 3
    target 4
    bw 30
  ]
  edge [
    source 3
    target 5
    bw 1
  ]
  edge [
    source 3
    target 7
    bw 10
  ]
  edge [
    source 3
    target 9
    bw 40
  ]
  edge [
    source 4
    target 6
    bw 0
  ]
  edge [
    source 4
    target 8
    bw 42
  ]
  edge [
    source 6
    target 7
    bw 8
  ]
  edge [
    source 6
    target 9
    bw 11
  ]
  edge [
    source 7
    target 8
    bw 17
  ]
  edge [
    source 7
    target 9
    bw 45
  ]
]
