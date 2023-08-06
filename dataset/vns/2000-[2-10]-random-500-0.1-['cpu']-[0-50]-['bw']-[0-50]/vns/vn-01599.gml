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
  id 1599
  arrival_time 15939.0
  lifetime 918.855409266079
  num_nodes 8
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 21
  ]
  node [
    id 1
    label "1"
    cpu 6
  ]
  node [
    id 2
    label "2"
    cpu 20
  ]
  node [
    id 3
    label "3"
    cpu 41
  ]
  node [
    id 4
    label "4"
    cpu 18
  ]
  node [
    id 5
    label "5"
    cpu 31
  ]
  node [
    id 6
    label "6"
    cpu 21
  ]
  node [
    id 7
    label "7"
    cpu 13
  ]
  edge [
    source 0
    target 1
    bw 25
  ]
  edge [
    source 0
    target 3
    bw 19
  ]
  edge [
    source 0
    target 4
    bw 22
  ]
  edge [
    source 1
    target 4
    bw 14
  ]
  edge [
    source 2
    target 6
    bw 30
  ]
  edge [
    source 2
    target 7
    bw 6
  ]
  edge [
    source 3
    target 4
    bw 35
  ]
  edge [
    source 3
    target 5
    bw 33
  ]
  edge [
    source 3
    target 6
    bw 10
  ]
  edge [
    source 4
    target 5
    bw 7
  ]
  edge [
    source 4
    target 7
    bw 9
  ]
]
