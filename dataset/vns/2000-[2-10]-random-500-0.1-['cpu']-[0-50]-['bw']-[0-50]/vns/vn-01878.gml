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
  id 1878
  arrival_time 18739.0
  lifetime 40.69824500054578
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 32
  ]
  node [
    id 1
    label "1"
    cpu 1
  ]
  node [
    id 2
    label "2"
    cpu 36
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 15
  ]
  node [
    id 5
    label "5"
    cpu 5
  ]
  node [
    id 6
    label "6"
    cpu 48
  ]
  node [
    id 7
    label "7"
    cpu 11
  ]
  node [
    id 8
    label "8"
    cpu 15
  ]
  node [
    id 9
    label "9"
    cpu 16
  ]
  edge [
    source 0
    target 2
    bw 27
  ]
  edge [
    source 0
    target 5
    bw 49
  ]
  edge [
    source 0
    target 7
    bw 46
  ]
  edge [
    source 1
    target 5
    bw 25
  ]
  edge [
    source 1
    target 6
    bw 6
  ]
  edge [
    source 2
    target 3
    bw 31
  ]
  edge [
    source 2
    target 5
    bw 37
  ]
  edge [
    source 2
    target 8
    bw 34
  ]
  edge [
    source 2
    target 9
    bw 29
  ]
  edge [
    source 3
    target 4
    bw 49
  ]
  edge [
    source 3
    target 5
    bw 7
  ]
  edge [
    source 3
    target 6
    bw 17
  ]
  edge [
    source 3
    target 7
    bw 14
  ]
  edge [
    source 3
    target 8
    bw 21
  ]
  edge [
    source 3
    target 9
    bw 30
  ]
  edge [
    source 4
    target 6
    bw 44
  ]
  edge [
    source 4
    target 7
    bw 23
  ]
  edge [
    source 5
    target 8
    bw 15
  ]
  edge [
    source 5
    target 9
    bw 13
  ]
  edge [
    source 6
    target 7
    bw 10
  ]
  edge [
    source 7
    target 8
    bw 32
  ]
  edge [
    source 7
    target 9
    bw 19
  ]
]
