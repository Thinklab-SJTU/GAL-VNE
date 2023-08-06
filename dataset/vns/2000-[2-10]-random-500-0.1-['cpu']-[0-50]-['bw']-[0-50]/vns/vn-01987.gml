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
  id 1987
  arrival_time 19782.0
  lifetime 500.11121907549773
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 41
  ]
  node [
    id 1
    label "1"
    cpu 33
  ]
  node [
    id 2
    label "2"
    cpu 3
  ]
  node [
    id 3
    label "3"
    cpu 35
  ]
  node [
    id 4
    label "4"
    cpu 0
  ]
  node [
    id 5
    label "5"
    cpu 13
  ]
  node [
    id 6
    label "6"
    cpu 39
  ]
  node [
    id 7
    label "7"
    cpu 45
  ]
  node [
    id 8
    label "8"
    cpu 6
  ]
  node [
    id 9
    label "9"
    cpu 37
  ]
  edge [
    source 0
    target 1
    bw 3
  ]
  edge [
    source 0
    target 3
    bw 10
  ]
  edge [
    source 0
    target 4
    bw 36
  ]
  edge [
    source 0
    target 7
    bw 26
  ]
  edge [
    source 0
    target 9
    bw 26
  ]
  edge [
    source 1
    target 3
    bw 34
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 7
    bw 6
  ]
  edge [
    source 1
    target 8
    bw 8
  ]
  edge [
    source 2
    target 3
    bw 38
  ]
  edge [
    source 2
    target 5
    bw 9
  ]
  edge [
    source 3
    target 4
    bw 49
  ]
  edge [
    source 3
    target 6
    bw 39
  ]
  edge [
    source 3
    target 7
    bw 33
  ]
  edge [
    source 3
    target 9
    bw 29
  ]
  edge [
    source 4
    target 6
    bw 19
  ]
  edge [
    source 4
    target 8
    bw 38
  ]
  edge [
    source 4
    target 9
    bw 23
  ]
  edge [
    source 6
    target 8
    bw 0
  ]
  edge [
    source 6
    target 9
    bw 24
  ]
  edge [
    source 8
    target 9
    bw 12
  ]
]
