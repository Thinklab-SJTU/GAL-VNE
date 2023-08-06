graph [
  node_attrs_setting [
    name "cpu"
    distribution "uniform"
    dtype "int"
    generative 1
    high 100
    low 50
    owner "node"
    type "resource"
  ]
  node_attrs_setting [
    name "max_cpu"
    originator "cpu"
    owner "node"
    type "extrema"
  ]
  edge_attrs_setting [
    distribution "uniform"
    dtype "int"
    generative 1
    high 100
    low 50
    name "bw"
    owner "edge"
    type "resource"
  ]
  edge_attrs_setting [
    name "max_bw"
    originator "bw"
    owner "edge"
    type "extrema"
  ]
  save_dir "dataset/pn"
  file_name "pn.gml"
  num_nodes 100
  type "waxman"
  wm_alpha 0.5
  wm_beta 0.2
  node [
    id 0
    label "0"
    pos 0.5252041298867426
    pos 0.7737608035950666
    cpu 90
    max_cpu 90
  ]
  node [
    id 1
    label "1"
    pos 0.15806630470226346
    pos 0.4874240142732027
    cpu 51
    max_cpu 51
  ]
  node [
    id 2
    label "2"
    pos 0.5492596640371223
    pos 0.2108270440208979
    cpu 67
    max_cpu 67
  ]
  node [
    id 3
    label "3"
    pos 0.4538277843583223
    pos 0.7244804822473677
    cpu 51
    max_cpu 51
  ]
  node [
    id 4
    label "4"
    pos 0.050814252187903364
    pos 0.5400779409762885
    cpu 50
    max_cpu 50
  ]
  node [
    id 5
    label "5"
    pos 0.9656806817897119
    pos 0.31882084576465963
    cpu 96
    max_cpu 96
  ]
  node [
    id 6
    label "6"
    pos 0.06790238883524524
    pos 0.057111291048212554
    cpu 76
    max_cpu 76
  ]
  node [
    id 7
    label "7"
    pos 0.9378309733584091
    pos 0.3010149289172823
    cpu 53
    max_cpu 53
  ]
  node [
    id 8
    label "8"
    pos 0.8637168879107134
    pos 0.678213918823867
    cpu 65
    max_cpu 65
  ]
  node [
    id 9
    label "9"
    pos 0.10888801954592875
    pos 0.7715299509222835
    cpu 73
    max_cpu 73
  ]
  node [
    id 10
    label "10"
    pos 0.48614944555205064
    pos 0.22612024831918465
    cpu 81
    max_cpu 81
  ]
  node [
    id 11
    label "11"
    pos 0.14661519605568374
    pos 0.8072411544629639
    cpu 77
    max_cpu 77
  ]
  node [
    id 12
    label "12"
    pos 0.843359160038355
    pos 0.24430709246532523
    cpu 87
    max_cpu 87
  ]
  node [
    id 13
    label "13"
    pos 0.10294824662329083
    pos 0.7589785909468352
    cpu 56
    max_cpu 56
  ]
  node [
    id 14
    label "14"
    pos 0.16140424149256993
    pos 0.3044380216013267
    cpu 59
    max_cpu 59
  ]
  node [
    id 15
    label "15"
    pos 0.27537515155927206
    pos 0.5700451011409728
    cpu 65
    max_cpu 65
  ]
  node [
    id 16
    label "16"
    pos 0.05133243566061485
    pos 0.7788854376972324
    cpu 73
    max_cpu 73
  ]
  node [
    id 17
    label "17"
    pos 0.21539554646209447
    pos 0.6004383596461711
    cpu 51
    max_cpu 51
  ]
  node [
    id 18
    label "18"
    pos 0.20031025991078666
    pos 0.3413930253970755
    cpu 89
    max_cpu 89
  ]
  node [
    id 19
    label "19"
    pos 0.27091611070107013
    pos 0.4485859769220941
    cpu 83
    max_cpu 83
  ]
  node [
    id 20
    label "20"
    pos 0.658853549648367
    pos 0.2028513250284435
    cpu 85
    max_cpu 85
  ]
  node [
    id 21
    label "21"
    pos 0.24790019745484992
    pos 0.3560190259862216
    cpu 54
    max_cpu 54
  ]
  node [
    id 22
    label "22"
    pos 0.05306457492448047
    pos 0.1840667341803296
    cpu 51
    max_cpu 51
  ]
  node [
    id 23
    label "23"
    pos 0.4652245486258899
    pos 0.5874760173641654
    cpu 72
    max_cpu 72
  ]
  node [
    id 24
    label "24"
    pos 0.06600225629483603
    pos 0.17476258805684886
    cpu 91
    max_cpu 91
  ]
  node [
    id 25
    label "25"
    pos 0.5206058746683668
    pos 0.9230954210231305
    cpu 65
    max_cpu 65
  ]
  node [
    id 26
    label "26"
    pos 0.5181664242438614
    pos 0.6209675899333258
    cpu 79
    max_cpu 79
  ]
  node [
    id 27
    label "27"
    pos 0.36791067323478144
    pos 0.6888906396054134
    cpu 98
    max_cpu 98
  ]
  node [
    id 28
    label "28"
    pos 0.2291818061884051
    pos 0.9910574291891596
    cpu 96
    max_cpu 96
  ]
  node [
    id 29
    label "29"
    pos 0.6660398155847146
    pos 0.29293172352555286
    cpu 91
    max_cpu 91
  ]
  node [
    id 30
    label "30"
    pos 0.08290879702234544
    pos 0.6275447438522566
    cpu 100
    max_cpu 100
  ]
  node [
    id 31
    label "31"
    pos 0.89012877835148
    pos 0.18711164814425074
    cpu 57
    max_cpu 57
  ]
  node [
    id 32
    label "32"
    pos 0.9155158628385252
    pos 0.9898717418758184
    cpu 62
    max_cpu 62
  ]
  node [
    id 33
    label "33"
    pos 0.6525334016328264
    pos 0.184641412972938
    cpu 79
    max_cpu 79
  ]
  node [
    id 34
    label "34"
    pos 0.705630502234811
    pos 0.6813565211064917
    cpu 91
    max_cpu 91
  ]
  node [
    id 35
    label "35"
    pos 0.05806466293490764
    pos 0.4484369263728931
    cpu 51
    max_cpu 51
  ]
  node [
    id 36
    label "36"
    pos 0.945748908059896
    pos 0.34733805725135236
    cpu 65
    max_cpu 65
  ]
  node [
    id 37
    label "37"
    pos 0.41399887833196114
    pos 0.6746914886960864
    cpu 66
    max_cpu 66
  ]
  node [
    id 38
    label "38"
    pos 0.3815448318269845
    pos 0.026156328973647502
    cpu 69
    max_cpu 69
  ]
  node [
    id 39
    label "39"
    pos 0.5781208226607478
    pos 0.1931599439230055
    cpu 71
    max_cpu 71
  ]
  node [
    id 40
    label "40"
    pos 0.9834797021908043
    pos 0.7907058515715615
    cpu 82
    max_cpu 82
  ]
  node [
    id 41
    label "41"
    pos 0.3845298150760206
    pos 0.2780510592332285
    cpu 51
    max_cpu 51
  ]
  node [
    id 42
    label "42"
    pos 0.3126885653252065
    pos 0.9249636490735608
    cpu 50
    max_cpu 50
  ]
  node [
    id 43
    label "43"
    pos 0.3992292947519783
    pos 0.8506318746446454
    cpu 65
    max_cpu 65
  ]
  node [
    id 44
    label "44"
    pos 0.43692568138645493
    pos 0.11233059042931148
    cpu 90
    max_cpu 90
  ]
  node [
    id 45
    label "45"
    pos 0.7677292808055953
    pos 0.7478547839148189
    cpu 73
    max_cpu 73
  ]
  node [
    id 46
    label "46"
    pos 0.21929563851920797
    pos 0.8381585672967254
    cpu 60
    max_cpu 60
  ]
  node [
    id 47
    label "47"
    pos 0.5816045949776611
    pos 0.45126960604196253
    cpu 96
    max_cpu 96
  ]
  node [
    id 48
    label "48"
    pos 0.765143771596943
    pos 0.5248619516630545
    cpu 59
    max_cpu 59
  ]
  node [
    id 49
    label "49"
    pos 0.3453032368397707
    pos 0.5432291572849374
    cpu 60
    max_cpu 60
  ]
  node [
    id 50
    label "50"
    pos 0.1824298694315346
    pos 0.9839722992871697
    cpu 82
    max_cpu 82
  ]
  node [
    id 51
    label "51"
    pos 0.9174101523188977
    pos 0.3592129508057518
    cpu 68
    max_cpu 68
  ]
  node [
    id 52
    label "52"
    pos 0.8064028885740124
    pos 0.7168595634920034
    cpu 52
    max_cpu 52
  ]
  node [
    id 53
    label "53"
    pos 0.8822650882633012
    pos 0.9432615201725764
    cpu 89
    max_cpu 89
  ]
  node [
    id 54
    label "54"
    pos 0.9070733457405471
    pos 0.18763900935922295
    cpu 69
    max_cpu 69
  ]
  node [
    id 55
    label "55"
    pos 0.9240501739933707
    pos 0.9727287632443715
    cpu 74
    max_cpu 74
  ]
  node [
    id 56
    label "56"
    pos 0.8746137809946546
    pos 0.8242149316214537
    cpu 83
    max_cpu 83
  ]
  node [
    id 57
    label "57"
    pos 0.7980964449210622
    pos 0.695331786170562
    cpu 69
    max_cpu 69
  ]
  node [
    id 58
    label "58"
    pos 0.11824554228057693
    pos 0.15146841828983026
    cpu 56
    max_cpu 56
  ]
  node [
    id 59
    label "59"
    pos 0.9184444507298658
    pos 0.8032926623583623
    cpu 74
    max_cpu 74
  ]
  node [
    id 60
    label "60"
    pos 0.8154157103010939
    pos 0.7548283939816678
    cpu 96
    max_cpu 96
  ]
  node [
    id 61
    label "61"
    pos 0.8094674471079157
    pos 0.6009497191062202
    cpu 64
    max_cpu 64
  ]
  node [
    id 62
    label "62"
    pos 0.322976530466476
    pos 0.7712198933931362
    cpu 99
    max_cpu 99
  ]
  node [
    id 63
    label "63"
    pos 0.5725377963732012
    pos 0.24602736385751278
    cpu 76
    max_cpu 76
  ]
  node [
    id 64
    label "64"
    pos 0.04635264717834986
    pos 0.06070209905819435
    cpu 81
    max_cpu 81
  ]
  node [
    id 65
    label "65"
    pos 0.27323630358400974
    pos 0.25358726175452695
    cpu 100
    max_cpu 100
  ]
  node [
    id 66
    label "66"
    pos 0.8711665656098304
    pos 0.7277857340686303
    cpu 59
    max_cpu 59
  ]
  node [
    id 67
    label "67"
    pos 0.6000137665743456
    pos 0.5772257276927568
    cpu 95
    max_cpu 95
  ]
  node [
    id 68
    label "68"
    pos 0.31830863050521907
    pos 0.48116878944676433
    cpu 87
    max_cpu 87
  ]
  node [
    id 69
    label "69"
    pos 0.9842246923516489
    pos 0.12780198229864326
    cpu 68
    max_cpu 68
  ]
  node [
    id 70
    label "70"
    pos 0.3925697258502904
    pos 0.8734672119671582
    cpu 96
    max_cpu 96
  ]
  node [
    id 71
    label "71"
    pos 0.7498919997746224
    pos 0.25508346679783866
    cpu 87
    max_cpu 87
  ]
  node [
    id 72
    label "72"
    pos 0.33854100134684273
    pos 0.5190544195297235
    cpu 52
    max_cpu 52
  ]
  node [
    id 73
    label "73"
    pos 0.8404300960241017
    pos 0.4313233479232811
    cpu 66
    max_cpu 66
  ]
  node [
    id 74
    label "74"
    pos 0.017871645951899606
    pos 0.5691582583121498
    cpu 62
    max_cpu 62
  ]
  node [
    id 75
    label "75"
    pos 0.3558385700138397
    pos 0.7375797764945818
    cpu 68
    max_cpu 68
  ]
  node [
    id 76
    label "76"
    pos 0.4377378072398441
    pos 0.7644927097122421
    cpu 65
    max_cpu 65
  ]
  node [
    id 77
    label "77"
    pos 0.8223175084375857
    pos 0.33164016295982657
    cpu 82
    max_cpu 82
  ]
  node [
    id 78
    label "78"
    pos 0.8272660822061709
    pos 0.4152681228241316
    cpu 68
    max_cpu 68
  ]
  node [
    id 79
    label "79"
    pos 0.2160690671940284
    pos 0.15314601313699971
    cpu 72
    max_cpu 72
  ]
  node [
    id 80
    label "80"
    pos 0.17152282431965737
    pos 0.33544217250168473
    cpu 100
    max_cpu 100
  ]
  node [
    id 81
    label "81"
    pos 0.14369080365591047
    pos 0.9067146480258171
    cpu 65
    max_cpu 65
  ]
  node [
    id 82
    label "82"
    pos 0.5571333559086603
    pos 0.3644884545566046
    cpu 59
    max_cpu 59
  ]
  node [
    id 83
    label "83"
    pos 0.35651261176041205
    pos 0.24516633011929845
    cpu 58
    max_cpu 58
  ]
  node [
    id 84
    label "84"
    pos 0.9150963938829656
    pos 0.8847928314460088
    cpu 88
    max_cpu 88
  ]
  node [
    id 85
    label "85"
    pos 0.497616057504627
    pos 0.1839224348661812
    cpu 87
    max_cpu 87
  ]
  node [
    id 86
    label "86"
    pos 0.8920508557517144
    pos 0.9627606965654637
    cpu 85
    max_cpu 85
  ]
  node [
    id 87
    label "87"
    pos 0.11851026031365175
    pos 0.01078764167664803
    cpu 54
    max_cpu 54
  ]
  node [
    id 88
    label "88"
    pos 0.6085197731338062
    pos 0.520803048613902
    cpu 69
    max_cpu 69
  ]
  node [
    id 89
    label "89"
    pos 0.6095903399255137
    pos 0.9610152845995638
    cpu 69
    max_cpu 69
  ]
  node [
    id 90
    label "90"
    pos 0.3032533057538419
    pos 0.8378770615063841
    cpu 66
    max_cpu 66
  ]
  node [
    id 91
    label "91"
    pos 0.5795418564583912
    pos 0.02694497705188237
    cpu 56
    max_cpu 56
  ]
  node [
    id 92
    label "92"
    pos 0.9078534661058295
    pos 0.8864227982826233
    cpu 53
    max_cpu 53
  ]
  node [
    id 93
    label "93"
    pos 0.13583460133289116
    pos 0.939802543336086
    cpu 68
    max_cpu 68
  ]
  node [
    id 94
    label "94"
    pos 0.0675619940202481
    pos 0.8741829662669124
    cpu 77
    max_cpu 77
  ]
  node [
    id 95
    label "95"
    pos 0.9287221550236271
    pos 0.364766816069076
    cpu 73
    max_cpu 73
  ]
  node [
    id 96
    label "96"
    pos 0.02138536201900132
    pos 0.9193675921944912
    cpu 77
    max_cpu 77
  ]
  node [
    id 97
    label "97"
    pos 0.18441706569737737
    pos 0.9716643047190163
    cpu 80
    max_cpu 80
  ]
  node [
    id 98
    label "98"
    pos 0.22135373455906393
    pos 0.025879243676911634
    cpu 68
    max_cpu 68
  ]
  node [
    id 99
    label "99"
    pos 0.9217532319341429
    pos 0.022794966980905773
    cpu 78
    max_cpu 78
  ]
  edge [
    source 0
    target 3
    bw 69
    max_bw 69
  ]
  edge [
    source 0
    target 15
    bw 53
    max_bw 53
  ]
  edge [
    source 0
    target 25
    bw 80
    max_bw 80
  ]
  edge [
    source 0
    target 34
    bw 96
    max_bw 96
  ]
  edge [
    source 0
    target 37
    bw 94
    max_bw 94
  ]
  edge [
    source 0
    target 40
    bw 98
    max_bw 98
  ]
  edge [
    source 0
    target 63
    bw 97
    max_bw 97
  ]
  edge [
    source 0
    target 97
    bw 71
    max_bw 71
  ]
  edge [
    source 1
    target 6
    bw 69
    max_bw 69
  ]
  edge [
    source 1
    target 13
    bw 85
    max_bw 85
  ]
  edge [
    source 1
    target 18
    bw 70
    max_bw 70
  ]
  edge [
    source 1
    target 23
    bw 89
    max_bw 89
  ]
  edge [
    source 1
    target 24
    bw 96
    max_bw 96
  ]
  edge [
    source 1
    target 49
    bw 90
    max_bw 90
  ]
  edge [
    source 1
    target 62
    bw 81
    max_bw 81
  ]
  edge [
    source 1
    target 67
    bw 100
    max_bw 100
  ]
  edge [
    source 1
    target 79
    bw 89
    max_bw 89
  ]
  edge [
    source 1
    target 82
    bw 75
    max_bw 75
  ]
  edge [
    source 2
    target 16
    bw 96
    max_bw 96
  ]
  edge [
    source 2
    target 25
    bw 55
    max_bw 55
  ]
  edge [
    source 2
    target 30
    bw 71
    max_bw 71
  ]
  edge [
    source 2
    target 34
    bw 87
    max_bw 87
  ]
  edge [
    source 2
    target 56
    bw 79
    max_bw 79
  ]
  edge [
    source 2
    target 61
    bw 87
    max_bw 87
  ]
  edge [
    source 2
    target 88
    bw 84
    max_bw 84
  ]
  edge [
    source 2
    target 91
    bw 89
    max_bw 89
  ]
  edge [
    source 3
    target 17
    bw 55
    max_bw 55
  ]
  edge [
    source 3
    target 26
    bw 74
    max_bw 74
  ]
  edge [
    source 3
    target 34
    bw 96
    max_bw 96
  ]
  edge [
    source 3
    target 37
    bw 56
    max_bw 56
  ]
  edge [
    source 3
    target 43
    bw 62
    max_bw 62
  ]
  edge [
    source 3
    target 47
    bw 92
    max_bw 92
  ]
  edge [
    source 3
    target 62
    bw 86
    max_bw 86
  ]
  edge [
    source 3
    target 75
    bw 83
    max_bw 83
  ]
  edge [
    source 3
    target 85
    bw 76
    max_bw 76
  ]
  edge [
    source 3
    target 89
    bw 70
    max_bw 70
  ]
  edge [
    source 3
    target 90
    bw 85
    max_bw 85
  ]
  edge [
    source 4
    target 8
    bw 94
    max_bw 94
  ]
  edge [
    source 4
    target 16
    bw 71
    max_bw 71
  ]
  edge [
    source 4
    target 18
    bw 84
    max_bw 84
  ]
  edge [
    source 4
    target 27
    bw 81
    max_bw 81
  ]
  edge [
    source 4
    target 30
    bw 76
    max_bw 76
  ]
  edge [
    source 4
    target 49
    bw 72
    max_bw 72
  ]
  edge [
    source 4
    target 57
    bw 96
    max_bw 96
  ]
  edge [
    source 4
    target 66
    bw 57
    max_bw 57
  ]
  edge [
    source 4
    target 68
    bw 87
    max_bw 87
  ]
  edge [
    source 4
    target 88
    bw 52
    max_bw 52
  ]
  edge [
    source 4
    target 93
    bw 95
    max_bw 95
  ]
  edge [
    source 5
    target 7
    bw 74
    max_bw 74
  ]
  edge [
    source 5
    target 8
    bw 77
    max_bw 77
  ]
  edge [
    source 5
    target 13
    bw 88
    max_bw 88
  ]
  edge [
    source 5
    target 24
    bw 52
    max_bw 52
  ]
  edge [
    source 5
    target 26
    bw 92
    max_bw 92
  ]
  edge [
    source 5
    target 36
    bw 64
    max_bw 64
  ]
  edge [
    source 5
    target 51
    bw 68
    max_bw 68
  ]
  edge [
    source 5
    target 53
    bw 62
    max_bw 62
  ]
  edge [
    source 5
    target 54
    bw 100
    max_bw 100
  ]
  edge [
    source 5
    target 57
    bw 86
    max_bw 86
  ]
  edge [
    source 5
    target 67
    bw 90
    max_bw 90
  ]
  edge [
    source 5
    target 95
    bw 99
    max_bw 99
  ]
  edge [
    source 5
    target 99
    bw 56
    max_bw 56
  ]
  edge [
    source 6
    target 73
    bw 80
    max_bw 80
  ]
  edge [
    source 6
    target 96
    bw 54
    max_bw 54
  ]
  edge [
    source 6
    target 97
    bw 68
    max_bw 68
  ]
  edge [
    source 7
    target 14
    bw 70
    max_bw 70
  ]
  edge [
    source 7
    target 20
    bw 77
    max_bw 77
  ]
  edge [
    source 7
    target 51
    bw 96
    max_bw 96
  ]
  edge [
    source 7
    target 77
    bw 97
    max_bw 97
  ]
  edge [
    source 7
    target 79
    bw 82
    max_bw 82
  ]
  edge [
    source 7
    target 84
    bw 66
    max_bw 66
  ]
  edge [
    source 8
    target 15
    bw 85
    max_bw 85
  ]
  edge [
    source 8
    target 34
    bw 97
    max_bw 97
  ]
  edge [
    source 8
    target 42
    bw 78
    max_bw 78
  ]
  edge [
    source 8
    target 45
    bw 81
    max_bw 81
  ]
  edge [
    source 8
    target 60
    bw 91
    max_bw 91
  ]
  edge [
    source 8
    target 73
    bw 89
    max_bw 89
  ]
  edge [
    source 8
    target 84
    bw 95
    max_bw 95
  ]
  edge [
    source 9
    target 11
    bw 51
    max_bw 51
  ]
  edge [
    source 9
    target 13
    bw 63
    max_bw 63
  ]
  edge [
    source 9
    target 16
    bw 65
    max_bw 65
  ]
  edge [
    source 9
    target 17
    bw 72
    max_bw 72
  ]
  edge [
    source 9
    target 19
    bw 65
    max_bw 65
  ]
  edge [
    source 9
    target 46
    bw 83
    max_bw 83
  ]
  edge [
    source 9
    target 68
    bw 76
    max_bw 76
  ]
  edge [
    source 9
    target 75
    bw 73
    max_bw 73
  ]
  edge [
    source 9
    target 89
    bw 54
    max_bw 54
  ]
  edge [
    source 9
    target 90
    bw 64
    max_bw 64
  ]
  edge [
    source 9
    target 97
    bw 57
    max_bw 57
  ]
  edge [
    source 10
    target 21
    bw 87
    max_bw 87
  ]
  edge [
    source 10
    target 23
    bw 89
    max_bw 89
  ]
  edge [
    source 10
    target 39
    bw 87
    max_bw 87
  ]
  edge [
    source 10
    target 41
    bw 99
    max_bw 99
  ]
  edge [
    source 10
    target 44
    bw 77
    max_bw 77
  ]
  edge [
    source 10
    target 52
    bw 86
    max_bw 86
  ]
  edge [
    source 11
    target 13
    bw 68
    max_bw 68
  ]
  edge [
    source 11
    target 30
    bw 70
    max_bw 70
  ]
  edge [
    source 11
    target 42
    bw 93
    max_bw 93
  ]
  edge [
    source 11
    target 43
    bw 68
    max_bw 68
  ]
  edge [
    source 11
    target 67
    bw 97
    max_bw 97
  ]
  edge [
    source 11
    target 70
    bw 94
    max_bw 94
  ]
  edge [
    source 11
    target 81
    bw 63
    max_bw 63
  ]
  edge [
    source 11
    target 84
    bw 89
    max_bw 89
  ]
  edge [
    source 11
    target 85
    bw 54
    max_bw 54
  ]
  edge [
    source 11
    target 90
    bw 63
    max_bw 63
  ]
  edge [
    source 11
    target 96
    bw 96
    max_bw 96
  ]
  edge [
    source 12
    target 24
    bw 77
    max_bw 77
  ]
  edge [
    source 12
    target 29
    bw 79
    max_bw 79
  ]
  edge [
    source 12
    target 31
    bw 63
    max_bw 63
  ]
  edge [
    source 12
    target 45
    bw 62
    max_bw 62
  ]
  edge [
    source 12
    target 56
    bw 92
    max_bw 92
  ]
  edge [
    source 12
    target 60
    bw 61
    max_bw 61
  ]
  edge [
    source 12
    target 69
    bw 56
    max_bw 56
  ]
  edge [
    source 12
    target 73
    bw 87
    max_bw 87
  ]
  edge [
    source 13
    target 28
    bw 88
    max_bw 88
  ]
  edge [
    source 13
    target 42
    bw 66
    max_bw 66
  ]
  edge [
    source 13
    target 74
    bw 75
    max_bw 75
  ]
  edge [
    source 13
    target 81
    bw 84
    max_bw 84
  ]
  edge [
    source 13
    target 86
    bw 52
    max_bw 52
  ]
  edge [
    source 13
    target 89
    bw 70
    max_bw 70
  ]
  edge [
    source 13
    target 90
    bw 54
    max_bw 54
  ]
  edge [
    source 13
    target 93
    bw 66
    max_bw 66
  ]
  edge [
    source 13
    target 96
    bw 54
    max_bw 54
  ]
  edge [
    source 14
    target 15
    bw 80
    max_bw 80
  ]
  edge [
    source 14
    target 18
    bw 69
    max_bw 69
  ]
  edge [
    source 14
    target 41
    bw 59
    max_bw 59
  ]
  edge [
    source 14
    target 45
    bw 68
    max_bw 68
  ]
  edge [
    source 14
    target 58
    bw 64
    max_bw 64
  ]
  edge [
    source 14
    target 75
    bw 53
    max_bw 53
  ]
  edge [
    source 14
    target 82
    bw 87
    max_bw 87
  ]
  edge [
    source 14
    target 91
    bw 79
    max_bw 79
  ]
  edge [
    source 15
    target 17
    bw 69
    max_bw 69
  ]
  edge [
    source 15
    target 19
    bw 51
    max_bw 51
  ]
  edge [
    source 15
    target 27
    bw 76
    max_bw 76
  ]
  edge [
    source 15
    target 35
    bw 50
    max_bw 50
  ]
  edge [
    source 15
    target 37
    bw 66
    max_bw 66
  ]
  edge [
    source 15
    target 65
    bw 64
    max_bw 64
  ]
  edge [
    source 15
    target 75
    bw 69
    max_bw 69
  ]
  edge [
    source 15
    target 81
    bw 73
    max_bw 73
  ]
  edge [
    source 15
    target 93
    bw 82
    max_bw 82
  ]
  edge [
    source 16
    target 18
    bw 78
    max_bw 78
  ]
  edge [
    source 16
    target 27
    bw 50
    max_bw 50
  ]
  edge [
    source 16
    target 43
    bw 50
    max_bw 50
  ]
  edge [
    source 16
    target 90
    bw 63
    max_bw 63
  ]
  edge [
    source 16
    target 96
    bw 77
    max_bw 77
  ]
  edge [
    source 17
    target 18
    bw 74
    max_bw 74
  ]
  edge [
    source 17
    target 25
    bw 53
    max_bw 53
  ]
  edge [
    source 17
    target 38
    bw 50
    max_bw 50
  ]
  edge [
    source 17
    target 49
    bw 92
    max_bw 92
  ]
  edge [
    source 17
    target 68
    bw 72
    max_bw 72
  ]
  edge [
    source 17
    target 74
    bw 63
    max_bw 63
  ]
  edge [
    source 17
    target 80
    bw 86
    max_bw 86
  ]
  edge [
    source 18
    target 47
    bw 87
    max_bw 87
  ]
  edge [
    source 18
    target 53
    bw 80
    max_bw 80
  ]
  edge [
    source 18
    target 69
    bw 71
    max_bw 71
  ]
  edge [
    source 18
    target 72
    bw 73
    max_bw 73
  ]
  edge [
    source 18
    target 80
    bw 94
    max_bw 94
  ]
  edge [
    source 18
    target 83
    bw 97
    max_bw 97
  ]
  edge [
    source 19
    target 41
    bw 78
    max_bw 78
  ]
  edge [
    source 19
    target 59
    bw 51
    max_bw 51
  ]
  edge [
    source 19
    target 65
    bw 56
    max_bw 56
  ]
  edge [
    source 19
    target 68
    bw 73
    max_bw 73
  ]
  edge [
    source 19
    target 74
    bw 58
    max_bw 58
  ]
  edge [
    source 19
    target 76
    bw 51
    max_bw 51
  ]
  edge [
    source 20
    target 29
    bw 77
    max_bw 77
  ]
  edge [
    source 20
    target 33
    bw 74
    max_bw 74
  ]
  edge [
    source 20
    target 39
    bw 76
    max_bw 76
  ]
  edge [
    source 20
    target 44
    bw 72
    max_bw 72
  ]
  edge [
    source 20
    target 49
    bw 81
    max_bw 81
  ]
  edge [
    source 20
    target 63
    bw 78
    max_bw 78
  ]
  edge [
    source 20
    target 72
    bw 72
    max_bw 72
  ]
  edge [
    source 20
    target 77
    bw 81
    max_bw 81
  ]
  edge [
    source 20
    target 84
    bw 96
    max_bw 96
  ]
  edge [
    source 20
    target 85
    bw 70
    max_bw 70
  ]
  edge [
    source 21
    target 35
    bw 71
    max_bw 71
  ]
  edge [
    source 21
    target 41
    bw 59
    max_bw 59
  ]
  edge [
    source 21
    target 46
    bw 89
    max_bw 89
  ]
  edge [
    source 21
    target 77
    bw 92
    max_bw 92
  ]
  edge [
    source 22
    target 48
    bw 81
    max_bw 81
  ]
  edge [
    source 22
    target 58
    bw 71
    max_bw 71
  ]
  edge [
    source 22
    target 64
    bw 80
    max_bw 80
  ]
  edge [
    source 22
    target 68
    bw 63
    max_bw 63
  ]
  edge [
    source 22
    target 79
    bw 63
    max_bw 63
  ]
  edge [
    source 23
    target 25
    bw 59
    max_bw 59
  ]
  edge [
    source 23
    target 26
    bw 67
    max_bw 67
  ]
  edge [
    source 23
    target 37
    bw 89
    max_bw 89
  ]
  edge [
    source 23
    target 48
    bw 88
    max_bw 88
  ]
  edge [
    source 23
    target 49
    bw 50
    max_bw 50
  ]
  edge [
    source 23
    target 62
    bw 79
    max_bw 79
  ]
  edge [
    source 23
    target 71
    bw 72
    max_bw 72
  ]
  edge [
    source 23
    target 81
    bw 81
    max_bw 81
  ]
  edge [
    source 23
    target 82
    bw 94
    max_bw 94
  ]
  edge [
    source 23
    target 83
    bw 100
    max_bw 100
  ]
  edge [
    source 23
    target 85
    bw 72
    max_bw 72
  ]
  edge [
    source 23
    target 86
    bw 56
    max_bw 56
  ]
  edge [
    source 23
    target 90
    bw 96
    max_bw 96
  ]
  edge [
    source 24
    target 38
    bw 60
    max_bw 60
  ]
  edge [
    source 24
    target 44
    bw 58
    max_bw 58
  ]
  edge [
    source 24
    target 58
    bw 92
    max_bw 92
  ]
  edge [
    source 24
    target 64
    bw 65
    max_bw 65
  ]
  edge [
    source 24
    target 80
    bw 88
    max_bw 88
  ]
  edge [
    source 24
    target 98
    bw 60
    max_bw 60
  ]
  edge [
    source 25
    target 27
    bw 62
    max_bw 62
  ]
  edge [
    source 25
    target 45
    bw 78
    max_bw 78
  ]
  edge [
    source 25
    target 59
    bw 71
    max_bw 71
  ]
  edge [
    source 25
    target 67
    bw 81
    max_bw 81
  ]
  edge [
    source 25
    target 68
    bw 56
    max_bw 56
  ]
  edge [
    source 25
    target 70
    bw 86
    max_bw 86
  ]
  edge [
    source 25
    target 75
    bw 79
    max_bw 79
  ]
  edge [
    source 25
    target 94
    bw 96
    max_bw 96
  ]
  edge [
    source 25
    target 97
    bw 72
    max_bw 72
  ]
  edge [
    source 26
    target 34
    bw 83
    max_bw 83
  ]
  edge [
    source 26
    target 40
    bw 86
    max_bw 86
  ]
  edge [
    source 26
    target 49
    bw 70
    max_bw 70
  ]
  edge [
    source 26
    target 53
    bw 81
    max_bw 81
  ]
  edge [
    source 26
    target 68
    bw 56
    max_bw 56
  ]
  edge [
    source 26
    target 73
    bw 86
    max_bw 86
  ]
  edge [
    source 26
    target 97
    bw 83
    max_bw 83
  ]
  edge [
    source 27
    target 37
    bw 100
    max_bw 100
  ]
  edge [
    source 27
    target 41
    bw 55
    max_bw 55
  ]
  edge [
    source 27
    target 60
    bw 69
    max_bw 69
  ]
  edge [
    source 28
    target 48
    bw 95
    max_bw 95
  ]
  edge [
    source 28
    target 49
    bw 83
    max_bw 83
  ]
  edge [
    source 28
    target 67
    bw 90
    max_bw 90
  ]
  edge [
    source 28
    target 74
    bw 68
    max_bw 68
  ]
  edge [
    source 28
    target 75
    bw 65
    max_bw 65
  ]
  edge [
    source 28
    target 80
    bw 54
    max_bw 54
  ]
  edge [
    source 28
    target 89
    bw 81
    max_bw 81
  ]
  edge [
    source 28
    target 97
    bw 61
    max_bw 61
  ]
  edge [
    source 29
    target 34
    bw 99
    max_bw 99
  ]
  edge [
    source 29
    target 39
    bw 69
    max_bw 69
  ]
  edge [
    source 29
    target 59
    bw 91
    max_bw 91
  ]
  edge [
    source 29
    target 60
    bw 84
    max_bw 84
  ]
  edge [
    source 29
    target 63
    bw 86
    max_bw 86
  ]
  edge [
    source 29
    target 89
    bw 53
    max_bw 53
  ]
  edge [
    source 29
    target 91
    bw 57
    max_bw 57
  ]
  edge [
    source 29
    target 95
    bw 77
    max_bw 77
  ]
  edge [
    source 30
    target 46
    bw 74
    max_bw 74
  ]
  edge [
    source 30
    target 50
    bw 71
    max_bw 71
  ]
  edge [
    source 30
    target 62
    bw 59
    max_bw 59
  ]
  edge [
    source 30
    target 67
    bw 63
    max_bw 63
  ]
  edge [
    source 30
    target 72
    bw 100
    max_bw 100
  ]
  edge [
    source 30
    target 74
    bw 97
    max_bw 97
  ]
  edge [
    source 30
    target 96
    bw 78
    max_bw 78
  ]
  edge [
    source 31
    target 36
    bw 98
    max_bw 98
  ]
  edge [
    source 31
    target 51
    bw 71
    max_bw 71
  ]
  edge [
    source 31
    target 61
    bw 91
    max_bw 91
  ]
  edge [
    source 31
    target 77
    bw 61
    max_bw 61
  ]
  edge [
    source 32
    target 48
    bw 97
    max_bw 97
  ]
  edge [
    source 32
    target 52
    bw 99
    max_bw 99
  ]
  edge [
    source 32
    target 86
    bw 83
    max_bw 83
  ]
  edge [
    source 33
    target 39
    bw 91
    max_bw 91
  ]
  edge [
    source 33
    target 47
    bw 92
    max_bw 92
  ]
  edge [
    source 33
    target 73
    bw 91
    max_bw 91
  ]
  edge [
    source 33
    target 85
    bw 99
    max_bw 99
  ]
  edge [
    source 33
    target 98
    bw 50
    max_bw 50
  ]
  edge [
    source 34
    target 37
    bw 53
    max_bw 53
  ]
  edge [
    source 34
    target 40
    bw 77
    max_bw 77
  ]
  edge [
    source 34
    target 55
    bw 82
    max_bw 82
  ]
  edge [
    source 34
    target 57
    bw 95
    max_bw 95
  ]
  edge [
    source 34
    target 61
    bw 98
    max_bw 98
  ]
  edge [
    source 34
    target 66
    bw 72
    max_bw 72
  ]
  edge [
    source 34
    target 68
    bw 95
    max_bw 95
  ]
  edge [
    source 34
    target 73
    bw 83
    max_bw 83
  ]
  edge [
    source 34
    target 78
    bw 65
    max_bw 65
  ]
  edge [
    source 34
    target 84
    bw 95
    max_bw 95
  ]
  edge [
    source 34
    target 89
    bw 85
    max_bw 85
  ]
  edge [
    source 34
    target 99
    bw 98
    max_bw 98
  ]
  edge [
    source 35
    target 38
    bw 75
    max_bw 75
  ]
  edge [
    source 35
    target 45
    bw 51
    max_bw 51
  ]
  edge [
    source 35
    target 64
    bw 97
    max_bw 97
  ]
  edge [
    source 35
    target 68
    bw 66
    max_bw 66
  ]
  edge [
    source 35
    target 74
    bw 69
    max_bw 69
  ]
  edge [
    source 35
    target 75
    bw 99
    max_bw 99
  ]
  edge [
    source 35
    target 80
    bw 82
    max_bw 82
  ]
  edge [
    source 35
    target 85
    bw 98
    max_bw 98
  ]
  edge [
    source 36
    target 40
    bw 60
    max_bw 60
  ]
  edge [
    source 36
    target 66
    bw 75
    max_bw 75
  ]
  edge [
    source 36
    target 73
    bw 94
    max_bw 94
  ]
  edge [
    source 36
    target 78
    bw 58
    max_bw 58
  ]
  edge [
    source 36
    target 86
    bw 98
    max_bw 98
  ]
  edge [
    source 36
    target 92
    bw 90
    max_bw 90
  ]
  edge [
    source 36
    target 95
    bw 68
    max_bw 68
  ]
  edge [
    source 37
    target 50
    bw 62
    max_bw 62
  ]
  edge [
    source 37
    target 56
    bw 64
    max_bw 64
  ]
  edge [
    source 37
    target 67
    bw 90
    max_bw 90
  ]
  edge [
    source 37
    target 71
    bw 86
    max_bw 86
  ]
  edge [
    source 37
    target 75
    bw 53
    max_bw 53
  ]
  edge [
    source 37
    target 78
    bw 88
    max_bw 88
  ]
  edge [
    source 37
    target 89
    bw 98
    max_bw 98
  ]
  edge [
    source 37
    target 97
    bw 80
    max_bw 80
  ]
  edge [
    source 38
    target 39
    bw 98
    max_bw 98
  ]
  edge [
    source 38
    target 50
    bw 84
    max_bw 84
  ]
  edge [
    source 38
    target 58
    bw 72
    max_bw 72
  ]
  edge [
    source 38
    target 68
    bw 72
    max_bw 72
  ]
  edge [
    source 38
    target 72
    bw 67
    max_bw 67
  ]
  edge [
    source 38
    target 85
    bw 74
    max_bw 74
  ]
  edge [
    source 39
    target 63
    bw 58
    max_bw 58
  ]
  edge [
    source 39
    target 76
    bw 76
    max_bw 76
  ]
  edge [
    source 39
    target 83
    bw 74
    max_bw 74
  ]
  edge [
    source 39
    target 94
    bw 50
    max_bw 50
  ]
  edge [
    source 39
    target 99
    bw 96
    max_bw 96
  ]
  edge [
    source 40
    target 52
    bw 89
    max_bw 89
  ]
  edge [
    source 40
    target 69
    bw 84
    max_bw 84
  ]
  edge [
    source 40
    target 92
    bw 76
    max_bw 76
  ]
  edge [
    source 40
    target 95
    bw 54
    max_bw 54
  ]
  edge [
    source 41
    target 63
    bw 75
    max_bw 75
  ]
  edge [
    source 41
    target 64
    bw 73
    max_bw 73
  ]
  edge [
    source 41
    target 65
    bw 57
    max_bw 57
  ]
  edge [
    source 41
    target 68
    bw 51
    max_bw 51
  ]
  edge [
    source 41
    target 82
    bw 87
    max_bw 87
  ]
  edge [
    source 42
    target 45
    bw 92
    max_bw 92
  ]
  edge [
    source 42
    target 46
    bw 81
    max_bw 81
  ]
  edge [
    source 42
    target 56
    bw 82
    max_bw 82
  ]
  edge [
    source 42
    target 59
    bw 55
    max_bw 55
  ]
  edge [
    source 42
    target 70
    bw 95
    max_bw 95
  ]
  edge [
    source 42
    target 90
    bw 80
    max_bw 80
  ]
  edge [
    source 42
    target 96
    bw 53
    max_bw 53
  ]
  edge [
    source 42
    target 97
    bw 60
    max_bw 60
  ]
  edge [
    source 43
    target 48
    bw 78
    max_bw 78
  ]
  edge [
    source 43
    target 64
    bw 86
    max_bw 86
  ]
  edge [
    source 43
    target 65
    bw 76
    max_bw 76
  ]
  edge [
    source 43
    target 70
    bw 56
    max_bw 56
  ]
  edge [
    source 43
    target 76
    bw 87
    max_bw 87
  ]
  edge [
    source 43
    target 78
    bw 52
    max_bw 52
  ]
  edge [
    source 43
    target 93
    bw 62
    max_bw 62
  ]
  edge [
    source 43
    target 94
    bw 55
    max_bw 55
  ]
  edge [
    source 44
    target 61
    bw 77
    max_bw 77
  ]
  edge [
    source 44
    target 63
    bw 57
    max_bw 57
  ]
  edge [
    source 44
    target 88
    bw 58
    max_bw 58
  ]
  edge [
    source 45
    target 57
    bw 87
    max_bw 87
  ]
  edge [
    source 45
    target 59
    bw 76
    max_bw 76
  ]
  edge [
    source 45
    target 66
    bw 60
    max_bw 60
  ]
  edge [
    source 45
    target 76
    bw 95
    max_bw 95
  ]
  edge [
    source 45
    target 86
    bw 74
    max_bw 74
  ]
  edge [
    source 46
    target 50
    bw 83
    max_bw 83
  ]
  edge [
    source 46
    target 70
    bw 63
    max_bw 63
  ]
  edge [
    source 46
    target 73
    bw 50
    max_bw 50
  ]
  edge [
    source 46
    target 81
    bw 54
    max_bw 54
  ]
  edge [
    source 46
    target 84
    bw 52
    max_bw 52
  ]
  edge [
    source 46
    target 89
    bw 83
    max_bw 83
  ]
  edge [
    source 46
    target 94
    bw 65
    max_bw 65
  ]
  edge [
    source 47
    target 82
    bw 52
    max_bw 52
  ]
  edge [
    source 47
    target 88
    bw 85
    max_bw 85
  ]
  edge [
    source 47
    target 95
    bw 80
    max_bw 80
  ]
  edge [
    source 48
    target 57
    bw 53
    max_bw 53
  ]
  edge [
    source 48
    target 65
    bw 83
    max_bw 83
  ]
  edge [
    source 48
    target 70
    bw 72
    max_bw 72
  ]
  edge [
    source 48
    target 82
    bw 69
    max_bw 69
  ]
  edge [
    source 49
    target 63
    bw 58
    max_bw 58
  ]
  edge [
    source 49
    target 67
    bw 53
    max_bw 53
  ]
  edge [
    source 49
    target 68
    bw 99
    max_bw 99
  ]
  edge [
    source 49
    target 72
    bw 75
    max_bw 75
  ]
  edge [
    source 50
    target 70
    bw 50
    max_bw 50
  ]
  edge [
    source 50
    target 80
    bw 98
    max_bw 98
  ]
  edge [
    source 50
    target 86
    bw 74
    max_bw 74
  ]
  edge [
    source 50
    target 96
    bw 79
    max_bw 79
  ]
  edge [
    source 50
    target 97
    bw 57
    max_bw 57
  ]
  edge [
    source 51
    target 63
    bw 87
    max_bw 87
  ]
  edge [
    source 51
    target 65
    bw 55
    max_bw 55
  ]
  edge [
    source 51
    target 69
    bw 82
    max_bw 82
  ]
  edge [
    source 51
    target 71
    bw 67
    max_bw 67
  ]
  edge [
    source 52
    target 56
    bw 64
    max_bw 64
  ]
  edge [
    source 52
    target 66
    bw 69
    max_bw 69
  ]
  edge [
    source 52
    target 67
    bw 96
    max_bw 96
  ]
  edge [
    source 52
    target 76
    bw 99
    max_bw 99
  ]
  edge [
    source 52
    target 82
    bw 70
    max_bw 70
  ]
  edge [
    source 52
    target 86
    bw 81
    max_bw 81
  ]
  edge [
    source 52
    target 95
    bw 79
    max_bw 79
  ]
  edge [
    source 53
    target 55
    bw 51
    max_bw 51
  ]
  edge [
    source 53
    target 89
    bw 52
    max_bw 52
  ]
  edge [
    source 54
    target 56
    bw 57
    max_bw 57
  ]
  edge [
    source 54
    target 61
    bw 75
    max_bw 75
  ]
  edge [
    source 54
    target 77
    bw 85
    max_bw 85
  ]
  edge [
    source 54
    target 78
    bw 96
    max_bw 96
  ]
  edge [
    source 55
    target 56
    bw 69
    max_bw 69
  ]
  edge [
    source 55
    target 59
    bw 53
    max_bw 53
  ]
  edge [
    source 55
    target 84
    bw 98
    max_bw 98
  ]
  edge [
    source 55
    target 86
    bw 89
    max_bw 89
  ]
  edge [
    source 55
    target 95
    bw 50
    max_bw 50
  ]
  edge [
    source 56
    target 59
    bw 89
    max_bw 89
  ]
  edge [
    source 56
    target 60
    bw 81
    max_bw 81
  ]
  edge [
    source 56
    target 66
    bw 76
    max_bw 76
  ]
  edge [
    source 56
    target 75
    bw 92
    max_bw 92
  ]
  edge [
    source 57
    target 61
    bw 70
    max_bw 70
  ]
  edge [
    source 57
    target 66
    bw 89
    max_bw 89
  ]
  edge [
    source 57
    target 78
    bw 83
    max_bw 83
  ]
  edge [
    source 57
    target 84
    bw 74
    max_bw 74
  ]
  edge [
    source 57
    target 95
    bw 93
    max_bw 93
  ]
  edge [
    source 58
    target 65
    bw 53
    max_bw 53
  ]
  edge [
    source 58
    target 87
    bw 76
    max_bw 76
  ]
  edge [
    source 58
    target 98
    bw 61
    max_bw 61
  ]
  edge [
    source 59
    target 60
    bw 69
    max_bw 69
  ]
  edge [
    source 59
    target 66
    bw 55
    max_bw 55
  ]
  edge [
    source 60
    target 73
    bw 54
    max_bw 54
  ]
  edge [
    source 60
    target 88
    bw 98
    max_bw 98
  ]
  edge [
    source 60
    target 91
    bw 54
    max_bw 54
  ]
  edge [
    source 61
    target 73
    bw 64
    max_bw 64
  ]
  edge [
    source 61
    target 95
    bw 90
    max_bw 90
  ]
  edge [
    source 61
    target 99
    bw 66
    max_bw 66
  ]
  edge [
    source 62
    target 65
    bw 88
    max_bw 88
  ]
  edge [
    source 62
    target 74
    bw 99
    max_bw 99
  ]
  edge [
    source 62
    target 82
    bw 55
    max_bw 55
  ]
  edge [
    source 62
    target 88
    bw 78
    max_bw 78
  ]
  edge [
    source 62
    target 90
    bw 98
    max_bw 98
  ]
  edge [
    source 62
    target 97
    bw 72
    max_bw 72
  ]
  edge [
    source 63
    target 64
    bw 59
    max_bw 59
  ]
  edge [
    source 63
    target 77
    bw 84
    max_bw 84
  ]
  edge [
    source 64
    target 88
    bw 59
    max_bw 59
  ]
  edge [
    source 64
    target 91
    bw 82
    max_bw 82
  ]
  edge [
    source 64
    target 93
    bw 74
    max_bw 74
  ]
  edge [
    source 65
    target 67
    bw 77
    max_bw 77
  ]
  edge [
    source 65
    target 72
    bw 78
    max_bw 78
  ]
  edge [
    source 65
    target 99
    bw 59
    max_bw 59
  ]
  edge [
    source 66
    target 78
    bw 63
    max_bw 63
  ]
  edge [
    source 66
    target 79
    bw 65
    max_bw 65
  ]
  edge [
    source 66
    target 86
    bw 97
    max_bw 97
  ]
  edge [
    source 66
    target 92
    bw 73
    max_bw 73
  ]
  edge [
    source 66
    target 95
    bw 88
    max_bw 88
  ]
  edge [
    source 67
    target 68
    bw 85
    max_bw 85
  ]
  edge [
    source 67
    target 73
    bw 78
    max_bw 78
  ]
  edge [
    source 67
    target 75
    bw 82
    max_bw 82
  ]
  edge [
    source 67
    target 83
    bw 86
    max_bw 86
  ]
  edge [
    source 67
    target 84
    bw 94
    max_bw 94
  ]
  edge [
    source 67
    target 95
    bw 68
    max_bw 68
  ]
  edge [
    source 68
    target 75
    bw 81
    max_bw 81
  ]
  edge [
    source 68
    target 79
    bw 82
    max_bw 82
  ]
  edge [
    source 68
    target 80
    bw 92
    max_bw 92
  ]
  edge [
    source 68
    target 83
    bw 89
    max_bw 89
  ]
  edge [
    source 68
    target 88
    bw 66
    max_bw 66
  ]
  edge [
    source 69
    target 85
    bw 76
    max_bw 76
  ]
  edge [
    source 70
    target 97
    bw 82
    max_bw 82
  ]
  edge [
    source 71
    target 79
    bw 75
    max_bw 75
  ]
  edge [
    source 71
    target 88
    bw 89
    max_bw 89
  ]
  edge [
    source 72
    target 76
    bw 88
    max_bw 88
  ]
  edge [
    source 72
    target 85
    bw 60
    max_bw 60
  ]
  edge [
    source 72
    target 98
    bw 91
    max_bw 91
  ]
  edge [
    source 73
    target 95
    bw 92
    max_bw 92
  ]
  edge [
    source 73
    target 99
    bw 66
    max_bw 66
  ]
  edge [
    source 75
    target 81
    bw 88
    max_bw 88
  ]
  edge [
    source 75
    target 89
    bw 66
    max_bw 66
  ]
  edge [
    source 76
    target 78
    bw 86
    max_bw 86
  ]
  edge [
    source 77
    target 95
    bw 63
    max_bw 63
  ]
  edge [
    source 79
    target 80
    bw 90
    max_bw 90
  ]
  edge [
    source 80
    target 98
    bw 94
    max_bw 94
  ]
  edge [
    source 81
    target 94
    bw 56
    max_bw 56
  ]
  edge [
    source 81
    target 96
    bw 71
    max_bw 71
  ]
  edge [
    source 82
    target 84
    bw 63
    max_bw 63
  ]
  edge [
    source 82
    target 95
    bw 88
    max_bw 88
  ]
  edge [
    source 85
    target 91
    bw 72
    max_bw 72
  ]
  edge [
    source 86
    target 92
    bw 70
    max_bw 70
  ]
  edge [
    source 87
    target 90
    bw 62
    max_bw 62
  ]
  edge [
    source 91
    target 92
    bw 59
    max_bw 59
  ]
  edge [
    source 93
    target 96
    bw 64
    max_bw 64
  ]
  edge [
    source 94
    target 96
    bw 90
    max_bw 90
  ]
  edge [
    source 96
    target 97
    bw 79
    max_bw 79
  ]
]
