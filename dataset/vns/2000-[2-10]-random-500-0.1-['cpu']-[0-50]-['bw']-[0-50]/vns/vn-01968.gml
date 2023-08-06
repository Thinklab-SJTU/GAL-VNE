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
  id 1968
  arrival_time 19606.0
  lifetime 231.78085681012513
  num_nodes 6
  type "random"
  random_prob 0.5
  node [
    id 0
    label "0"
    cpu 46
  ]
  node [
    id 1
    label "1"
    cpu 9
  ]
  node [
    id 2
    label "2"
    cpu 17
  ]
  node [
    id 3
    label "3"
    cpu 10
  ]
  node [
    id 4
    label "4"
    cpu 10
  ]
  node [
    id 5
    label "5"
    cpu 29
  ]
  edge [
    source 0
    target 5
    bw 7
  ]
  edge [
    source 1
    target 4
    bw 39
  ]
  edge [
    source 1
    target 5
    bw 41
  ]
  edge [
    source 2
    target 3
    bw 7
  ]
  edge [
    source 2
    target 5
    bw 32
  ]
  edge [
    source 3
    target 4
    bw 50
  ]
]
