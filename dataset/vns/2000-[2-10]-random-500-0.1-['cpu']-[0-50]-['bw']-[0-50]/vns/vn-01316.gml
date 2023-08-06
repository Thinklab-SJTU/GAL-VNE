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
  id 1316
  arrival_time 13166.0
  lifetime 935.4763279256889
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 27
  ]
  node [
    id 1
    label "1"
    cpu 30
  ]
  node [
    id 2
    label "2"
    cpu 21
  ]
  node [
    id 3
    label "3"
    cpu 32
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 11
  ]
  node [
    id 6
    label "6"
    cpu 40
  ]
  node [
    id 7
    label "7"
    cpu 45
  ]
  node [
    id 8
    label "8"
    cpu 31
  ]
  edge [
    source 0
    target 1
    bw 34
  ]
  edge [
    source 0
    target 2
    bw 1
  ]
  edge [
    source 0
    target 3
    bw 43
  ]
  edge [
    source 0
    target 5
    bw 14
  ]
  edge [
    source 0
    target 6
    bw 41
  ]
  edge [
    source 0
    target 7
    bw 19
  ]
  edge [
    source 0
    target 8
    bw 2
  ]
  edge [
    source 1
    target 3
    bw 9
  ]
  edge [
    source 1
    target 5
    bw 30
  ]
  edge [
    source 1
    target 8
    bw 29
  ]
  edge [
    source 2
    target 5
    bw 26
  ]
  edge [
    source 2
    target 7
    bw 22
  ]
  edge [
    source 3
    target 5
    bw 24
  ]
  edge [
    source 3
    target 7
    bw 13
  ]
  edge [
    source 3
    target 8
    bw 3
  ]
  edge [
    source 4
    target 6
    bw 43
  ]
  edge [
    source 4
    target 7
    bw 10
  ]
  edge [
    source 4
    target 8
    bw 50
  ]
  edge [
    source 5
    target 6
    bw 12
  ]
  edge [
    source 5
    target 7
    bw 11
  ]
  edge [
    source 5
    target 8
    bw 10
  ]
  edge [
    source 6
    target 7
    bw 44
  ]
  edge [
    source 6
    target 8
    bw 42
  ]
  edge [
    source 7
    target 8
    bw 35
  ]
]
