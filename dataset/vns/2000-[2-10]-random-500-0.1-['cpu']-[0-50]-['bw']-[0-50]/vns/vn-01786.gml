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
  id 1786
  arrival_time 17842.0
  lifetime 100.10635097396741
  num_nodes 5
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
    cpu 0
  ]
  node [
    id 2
    label "2"
    cpu 22
  ]
  node [
    id 3
    label "3"
    cpu 26
  ]
  node [
    id 4
    label "4"
    cpu 31
  ]
  edge [
    source 0
    target 1
    bw 32
  ]
  edge [
    source 0
    target 2
    bw 39
  ]
  edge [
    source 0
    target 3
    bw 25
  ]
  edge [
    source 0
    target 4
    bw 20
  ]
  edge [
    source 1
    target 3
    bw 4
  ]
  edge [
    source 2
    target 4
    bw 4
  ]
  edge [
    source 3
    target 4
    bw 36
  ]
]
