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
  id 143
  arrival_time 1439.0
  lifetime 4.83015218037789
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 38
  ]
  node [
    id 1
    label "1"
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 5
  ]
  node [
    id 3
    label "3"
    cpu 40
  ]
  node [
    id 4
    label "4"
    cpu 16
  ]
  node [
    id 5
    label "5"
    cpu 34
  ]
  node [
    id 6
    label "6"
    cpu 1
  ]
  node [
    id 7
    label "7"
    cpu 18
  ]
  node [
    id 8
    label "8"
    cpu 46
  ]
  edge [
    source 0
    target 1
    bw 0
  ]
  edge [
    source 0
    target 2
    bw 1
  ]
  edge [
    source 0
    target 3
    bw 26
  ]
  edge [
    source 0
    target 4
    bw 26
  ]
  edge [
    source 0
    target 5
    bw 15
  ]
  edge [
    source 0
    target 6
    bw 47
  ]
  edge [
    source 1
    target 4
    bw 49
  ]
  edge [
    source 1
    target 5
    bw 0
  ]
  edge [
    source 1
    target 7
    bw 36
  ]
  edge [
    source 1
    target 8
    bw 21
  ]
  edge [
    source 2
    target 6
    bw 20
  ]
  edge [
    source 2
    target 7
    bw 20
  ]
  edge [
    source 3
    target 4
    bw 15
  ]
  edge [
    source 4
    target 5
    bw 15
  ]
  edge [
    source 4
    target 6
    bw 24
  ]
  edge [
    source 5
    target 8
    bw 15
  ]
  edge [
    source 6
    target 7
    bw 41
  ]
]
