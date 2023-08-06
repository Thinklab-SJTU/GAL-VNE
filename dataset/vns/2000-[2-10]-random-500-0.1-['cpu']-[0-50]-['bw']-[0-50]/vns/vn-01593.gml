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
  id 1593
  arrival_time 15878.0
  lifetime 1501.4786154664785
  num_nodes 10
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 0
  ]
  node [
    id 1
    label "1"
    cpu 47
  ]
  node [
    id 2
    label "2"
    cpu 44
  ]
  node [
    id 3
    label "3"
    cpu 48
  ]
  node [
    id 4
    label "4"
    cpu 47
  ]
  node [
    id 5
    label "5"
    cpu 33
  ]
  node [
    id 6
    label "6"
    cpu 0
  ]
  node [
    id 7
    label "7"
    cpu 26
  ]
  node [
    id 8
    label "8"
    cpu 20
  ]
  node [
    id 9
    label "9"
    cpu 0
  ]
  edge [
    source 0
    target 1
    bw 49
  ]
  edge [
    source 0
    target 2
    bw 41
  ]
  edge [
    source 0
    target 3
    bw 32
  ]
  edge [
    source 0
    target 6
    bw 22
  ]
  edge [
    source 0
    target 8
    bw 22
  ]
  edge [
    source 1
    target 2
    bw 29
  ]
  edge [
    source 1
    target 3
    bw 4
  ]
  edge [
    source 1
    target 5
    bw 31
  ]
  edge [
    source 1
    target 9
    bw 0
  ]
  edge [
    source 2
    target 4
    bw 20
  ]
  edge [
    source 2
    target 6
    bw 9
  ]
  edge [
    source 3
    target 7
    bw 35
  ]
  edge [
    source 3
    target 8
    bw 16
  ]
  edge [
    source 4
    target 5
    bw 0
  ]
  edge [
    source 5
    target 6
    bw 19
  ]
  edge [
    source 5
    target 7
    bw 20
  ]
  edge [
    source 5
    target 9
    bw 28
  ]
  edge [
    source 6
    target 7
    bw 9
  ]
  edge [
    source 6
    target 8
    bw 17
  ]
  edge [
    source 6
    target 9
    bw 33
  ]
  edge [
    source 8
    target 9
    bw 8
  ]
]
