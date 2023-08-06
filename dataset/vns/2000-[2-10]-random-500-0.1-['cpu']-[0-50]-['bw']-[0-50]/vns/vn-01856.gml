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
  id 1856
  arrival_time 18518.0
  lifetime 692.8728575545252
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 18
  ]
  node [
    id 1
    label "1"
    cpu 20
  ]
  node [
    id 2
    label "2"
    cpu 24
  ]
  node [
    id 3
    label "3"
    cpu 19
  ]
  node [
    id 4
    label "4"
    cpu 15
  ]
  node [
    id 5
    label "5"
    cpu 21
  ]
  edge [
    source 0
    target 1
    bw 5
  ]
  edge [
    source 0
    target 3
    bw 44
  ]
  edge [
    source 0
    target 4
    bw 7
  ]
  edge [
    source 1
    target 5
    bw 5
  ]
  edge [
    source 2
    target 3
    bw 19
  ]
  edge [
    source 2
    target 5
    bw 1
  ]
  edge [
    source 3
    target 4
    bw 23
  ]
  edge [
    source 3
    target 5
    bw 34
  ]
]
