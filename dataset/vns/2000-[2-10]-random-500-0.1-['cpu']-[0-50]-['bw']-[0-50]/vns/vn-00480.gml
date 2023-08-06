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
  id 480
  arrival_time 4853.0
  lifetime 516.9068114391532
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 39
  ]
  node [
    id 1
    label "1"
    cpu 44
  ]
  node [
    id 2
    label "2"
    cpu 14
  ]
  node [
    id 3
    label "3"
    cpu 14
  ]
  node [
    id 4
    label "4"
    cpu 1
  ]
  node [
    id 5
    label "5"
    cpu 12
  ]
  node [
    id 6
    label "6"
    cpu 32
  ]
  node [
    id 7
    label "7"
    cpu 9
  ]
  node [
    id 8
    label "8"
    cpu 5
  ]
  node [
    id 9
    label "9"
    cpu 25
  ]
  edge [
    source 0
    target 3
    bw 32
  ]
  edge [
    source 0
    target 4
    bw 10
  ]
  edge [
    source 0
    target 8
    bw 46
  ]
  edge [
    source 1
    target 3
    bw 14
  ]
  edge [
    source 1
    target 5
    bw 50
  ]
  edge [
    source 1
    target 7
    bw 27
  ]
  edge [
    source 2
    target 4
    bw 7
  ]
  edge [
    source 2
    target 5
    bw 23
  ]
  edge [
    source 2
    target 8
    bw 9
  ]
  edge [
    source 3
    target 5
    bw 4
  ]
  edge [
    source 3
    target 6
    bw 24
  ]
  edge [
    source 3
    target 9
    bw 21
  ]
  edge [
    source 4
    target 5
    bw 31
  ]
  edge [
    source 4
    target 9
    bw 28
  ]
  edge [
    source 5
    target 6
    bw 28
  ]
  edge [
    source 5
    target 9
    bw 24
  ]
  edge [
    source 6
    target 8
    bw 41
  ]
  edge [
    source 6
    target 9
    bw 4
  ]
  edge [
    source 7
    target 8
    bw 39
  ]
]
