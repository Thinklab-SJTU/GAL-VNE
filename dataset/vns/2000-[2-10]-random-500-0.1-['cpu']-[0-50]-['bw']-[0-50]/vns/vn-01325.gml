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
  id 1325
  arrival_time 13244.0
  lifetime 199.69372125452836
  num_nodes 7
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 19
  ]
  node [
    id 1
    label "1"
    cpu 11
  ]
  node [
    id 2
    label "2"
    cpu 49
  ]
  node [
    id 3
    label "3"
    cpu 4
  ]
  node [
    id 4
    label "4"
    cpu 29
  ]
  node [
    id 5
    label "5"
    cpu 42
  ]
  node [
    id 6
    label "6"
    cpu 30
  ]
  edge [
    source 0
    target 1
    bw 17
  ]
  edge [
    source 0
    target 2
    bw 32
  ]
  edge [
    source 0
    target 4
    bw 19
  ]
  edge [
    source 0
    target 5
    bw 18
  ]
  edge [
    source 0
    target 6
    bw 25
  ]
  edge [
    source 1
    target 4
    bw 10
  ]
  edge [
    source 1
    target 5
    bw 41
  ]
  edge [
    source 1
    target 6
    bw 42
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 2
    target 4
    bw 9
  ]
  edge [
    source 3
    target 4
    bw 26
  ]
  edge [
    source 3
    target 5
    bw 11
  ]
]
