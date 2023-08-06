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
  id 638
  arrival_time 6430.0
  lifetime 372.36312455236555
  num_nodes 9
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 45
  ]
  node [
    id 1
    label "1"
    cpu 42
  ]
  node [
    id 2
    label "2"
    cpu 19
  ]
  node [
    id 3
    label "3"
    cpu 45
  ]
  node [
    id 4
    label "4"
    cpu 33
  ]
  node [
    id 5
    label "5"
    cpu 1
  ]
  node [
    id 6
    label "6"
    cpu 30
  ]
  node [
    id 7
    label "7"
    cpu 38
  ]
  node [
    id 8
    label "8"
    cpu 44
  ]
  edge [
    source 0
    target 1
    bw 49
  ]
  edge [
    source 0
    target 2
    bw 7
  ]
  edge [
    source 0
    target 3
    bw 47
  ]
  edge [
    source 0
    target 4
    bw 2
  ]
  edge [
    source 0
    target 5
    bw 22
  ]
  edge [
    source 0
    target 7
    bw 31
  ]
  edge [
    source 0
    target 8
    bw 49
  ]
  edge [
    source 1
    target 2
    bw 17
  ]
  edge [
    source 1
    target 3
    bw 32
  ]
  edge [
    source 1
    target 5
    bw 20
  ]
  edge [
    source 1
    target 7
    bw 18
  ]
  edge [
    source 2
    target 4
    bw 50
  ]
  edge [
    source 2
    target 5
    bw 7
  ]
  edge [
    source 2
    target 6
    bw 27
  ]
  edge [
    source 2
    target 7
    bw 13
  ]
  edge [
    source 2
    target 8
    bw 47
  ]
  edge [
    source 3
    target 4
    bw 39
  ]
  edge [
    source 3
    target 6
    bw 23
  ]
  edge [
    source 4
    target 7
    bw 26
  ]
  edge [
    source 5
    target 7
    bw 36
  ]
  edge [
    source 5
    target 8
    bw 7
  ]
  edge [
    source 6
    target 7
    bw 2
  ]
  edge [
    source 7
    target 8
    bw 5
  ]
]
