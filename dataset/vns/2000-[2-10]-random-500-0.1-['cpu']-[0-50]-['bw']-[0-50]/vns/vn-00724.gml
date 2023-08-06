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
  id 724
  arrival_time 7262.0
  lifetime 243.29112570261535
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 36
  ]
  node [
    id 1
    label "1"
    cpu 48
  ]
  node [
    id 2
    label "2"
    cpu 33
  ]
  node [
    id 3
    label "3"
    cpu 24
  ]
  node [
    id 4
    label "4"
    cpu 46
  ]
  node [
    id 5
    label "5"
    cpu 35
  ]
  edge [
    source 0
    target 1
    bw 27
  ]
  edge [
    source 0
    target 2
    bw 37
  ]
  edge [
    source 0
    target 5
    bw 9
  ]
  edge [
    source 1
    target 2
    bw 27
  ]
  edge [
    source 1
    target 4
    bw 42
  ]
  edge [
    source 3
    target 4
    bw 48
  ]
  edge [
    source 3
    target 5
    bw 17
  ]
  edge [
    source 4
    target 5
    bw 19
  ]
]
