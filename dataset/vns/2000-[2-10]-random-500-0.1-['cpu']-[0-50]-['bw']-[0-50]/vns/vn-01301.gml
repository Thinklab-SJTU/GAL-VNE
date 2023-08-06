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
  id 1301
  arrival_time 13012.0
  lifetime 618.2086809820426
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 16
  ]
  node [
    id 1
    label "1"
    cpu 20
  ]
  node [
    id 2
    label "2"
    cpu 25
  ]
  node [
    id 3
    label "3"
    cpu 26
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 20
  ]
  node [
    id 6
    label "6"
    cpu 27
  ]
  node [
    id 7
    label "7"
    cpu 30
  ]
  node [
    id 8
    label "8"
    cpu 0
  ]
  edge [
    source 0
    target 1
    bw 23
  ]
  edge [
    source 0
    target 4
    bw 13
  ]
  edge [
    source 0
    target 6
    bw 26
  ]
  edge [
    source 0
    target 7
    bw 35
  ]
  edge [
    source 0
    target 8
    bw 20
  ]
  edge [
    source 1
    target 2
    bw 36
  ]
  edge [
    source 1
    target 3
    bw 15
  ]
  edge [
    source 1
    target 4
    bw 50
  ]
  edge [
    source 1
    target 5
    bw 22
  ]
  edge [
    source 1
    target 6
    bw 33
  ]
  edge [
    source 1
    target 8
    bw 0
  ]
  edge [
    source 2
    target 3
    bw 11
  ]
  edge [
    source 2
    target 4
    bw 8
  ]
  edge [
    source 2
    target 5
    bw 0
  ]
  edge [
    source 2
    target 6
    bw 35
  ]
  edge [
    source 2
    target 7
    bw 10
  ]
  edge [
    source 3
    target 4
    bw 27
  ]
  edge [
    source 3
    target 6
    bw 50
  ]
  edge [
    source 3
    target 7
    bw 16
  ]
  edge [
    source 4
    target 5
    bw 15
  ]
  edge [
    source 5
    target 6
    bw 46
  ]
  edge [
    source 6
    target 8
    bw 31
  ]
  edge [
    source 7
    target 8
    bw 49
  ]
]
