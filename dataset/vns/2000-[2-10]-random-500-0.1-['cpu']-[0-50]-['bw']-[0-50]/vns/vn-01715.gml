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
  id 1715
  arrival_time 17108.0
  lifetime 797.1205848994316
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 14
  ]
  node [
    id 1
    label "1"
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 0
  ]
  node [
    id 4
    label "4"
    cpu 44
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 49
  ]
  node [
    id 7
    label "7"
    cpu 2
  ]
  node [
    id 8
    label "8"
    cpu 27
  ]
  node [
    id 9
    label "9"
    cpu 40
  ]
  edge [
    source 0
    target 2
    bw 34
  ]
  edge [
    source 0
    target 4
    bw 18
  ]
  edge [
    source 0
    target 5
    bw 13
  ]
  edge [
    source 0
    target 6
    bw 21
  ]
  edge [
    source 0
    target 7
    bw 9
  ]
  edge [
    source 0
    target 8
    bw 0
  ]
  edge [
    source 0
    target 9
    bw 5
  ]
  edge [
    source 1
    target 3
    bw 50
  ]
  edge [
    source 1
    target 4
    bw 48
  ]
  edge [
    source 1
    target 5
    bw 50
  ]
  edge [
    source 1
    target 7
    bw 39
  ]
  edge [
    source 1
    target 9
    bw 45
  ]
  edge [
    source 2
    target 6
    bw 16
  ]
  edge [
    source 2
    target 8
    bw 19
  ]
  edge [
    source 3
    target 5
    bw 34
  ]
  edge [
    source 3
    target 9
    bw 0
  ]
  edge [
    source 4
    target 7
    bw 16
  ]
  edge [
    source 4
    target 9
    bw 14
  ]
  edge [
    source 5
    target 9
    bw 21
  ]
  edge [
    source 7
    target 8
    bw 30
  ]
]
