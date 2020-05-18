//Maya ASCII 2008 scene
//Name: heavy_rig.ma
//Last modified: Thu, Aug 06, 2009 05:21:34 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "heavy_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "heavy_reference.ma";
requires maya "2008";
requires "vsMaster" "1.0";
requires "vstUtils" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 2008";
fileInfo "version" "2008 Extension 2";
fileInfo "cutIdentifier" "200802250025-718075";
fileInfo "osv" "Microsoft Windows XP Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.10455384393461 70.490997243614402 127.29422309546716 ;
	setAttr ".r" -type "double3" -11.738352729702394 -714.59999999998479 -9.9835406865271392e-016 ;
	setAttr ".rp" -type "double3" 0 4.8849813083506888e-015 3.5527136788005009e-015 ;
	setAttr ".rpt" -type "double3" 1.1279854042940871e-015 6.206133956252422e-016 -1.3389176742590966e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 131.37111547750013;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.58306884765625e-006 43.764499731877002 -0.75867176055908203 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.254573580885618 74.226172481970323 110.91474966893989 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 45.181750119114398;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "main";
	addAttr -ci true -k true -sn "rArmIKFK" -ln "rArmIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "lArmIKFK" -ln "lArmIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "rLegIKFK" -ln "rLegIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "lLegIKFK" -ln "lLegIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "spineIKFK" -ln "spineIKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "main" -ln "main" -at "message";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 5;
	setAttr -k on ".rArmIKFK";
	setAttr -k on ".lArmIKFK";
	setAttr -k on ".rLegIKFK";
	setAttr -k on ".lLegIKFK";
	setAttr -k on ".spineIKFK";
createNode nurbsSurface -n "mainShape" -p "main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 1 1 no 
		2 0 2
		9 0 0.76536686473017945 1.5307337294603589 2.2961005941905386 3.0614674589207183
		 3.8268343236508975 4.5922011883810772 5.3575680531112564 6.1229349178414356
		
		18
		24 -2.4000000000000001e-011 -2.9390552491737054e-015
		16.970562748477143 -2.4000000000000001e-011 16.970562748477139
		6.7985981427876041e-015 -2.4000000000000001e-011 24
		-16.970562748477136 -2.4000000000000001e-011 16.970562748477143
		-24 -2.4000000000000001e-011 6.6613381477509392e-015
		-16.970562748477146 -2.4000000000000001e-011 -16.970562748477136
		-1.2127668660988355e-014 -2.4000000000000001e-011 -24
		16.970562748477132 -2.4000000000000001e-011 -16.97056274847715
		24 -2.4000000000000001e-011 -1.892626680377596e-014
		24 -2.4000000000000001e-011 -2.9390552491737054e-015
		16.970562748477143 2.4000000000000001e-011 16.970562748477139
		6.7985981427876041e-015 2.4000000000000001e-011 24
		-16.970562748477136 2.4000000000000001e-011 16.970562748477143
		-24 2.4000000000000001e-011 9.6003933969246447e-015
		-16.970562748477146 2.4000000000000001e-011 -16.970562748477136
		-1.2127668660988355e-014 2.4000000000000001e-011 -24
		16.970562748477132 2.4000000000000001e-011 -16.97056274847715
		24 -2.4000000000000001e-011 -1.892626680377596e-014
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "UpperbodyControl" -p "main";
	addAttr -ci true -sn "upperBodyControl" -ln "upperBodyControl" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 40.862454 -3.096505 ;
	setAttr ".sp" -type "double3" 0 40.862454 -3.096505 ;
	setAttr ".hdl" -type "double3" 0 40.862454 -3.096505 ;
	setAttr ".dh" yes;
	setAttr ".smd" 5;
createNode nurbsSurface -n "UpperbodyControlShape" -p "UpperbodyControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 0.25 0.25 0.25
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		9.4033394986946863 39.362454 -12.499844498694701
		13.298330250652654 39.362454 -3.0965049999999987
		9.4033394986946917 39.362454 6.3068344986946911
		4.1449300598843483e-015 39.362454 10.201825250652654
		-9.4033394986946899 39.362454 6.3068344986946929
		-13.298330250652658 39.362454 -3.0965049999999956
		-9.4033394986946917 39.362454 -12.499844498694689
		-7.1425322263722702e-015 39.362454 -16.394835250652655
		9.4033394986946863 39.362454 -12.499844498694701
		13.298330250652654 39.362454 -3.0965049999999987
		9.4033394986946917 39.362454 6.3068344986946911
		9.4033394986946863 40.362454 -12.499844498694701
		13.298330250652654 40.362454 -3.0965049999999987
		9.4033394986946917 40.362454 6.3068344986946911
		4.1449300598843483e-015 40.362454 10.201825250652654
		-9.4033394986946899 40.362454 6.3068344986946929
		-13.298330250652658 40.362454 -3.0965049999999956
		-9.4033394986946917 40.362454 -12.499844498694689
		-7.1425322263722702e-015 40.362454 -16.394835250652655
		9.4033394986946863 40.362454 -12.499844498694701
		13.298330250652654 40.362454 -3.0965049999999987
		9.4033394986946917 40.362454 6.3068344986946911
		9.4033394986946863 41.362454 -12.499844498694701
		13.298330250652654 41.362454 -3.0965049999999987
		9.4033394986946917 41.362454 6.3068344986946911
		4.1449300598843483e-015 41.362454 10.201825250652654
		-9.4033394986946899 41.362454 6.3068344986946929
		-13.298330250652658 41.362454 -3.0965049999999956
		-9.4033394986946917 41.362454 -12.499844498694689
		-7.1425322263722702e-015 41.362454 -16.394835250652655
		9.4033394986946863 41.362454 -12.499844498694701
		13.298330250652654 41.362454 -3.0965049999999987
		9.4033394986946917 41.362454 6.3068344986946911
		9.4033394986946863 42.362454 -12.499844498694701
		13.298330250652654 42.362454 -3.0965049999999983
		9.4033394986946917 42.362454 6.3068344986946911
		4.1449300598843483e-015 42.362454 10.201825250652654
		-9.4033394986946899 42.362454 6.3068344986946929
		-13.298330250652658 42.362454 -3.0965049999999956
		-9.4033394986946917 42.362454 -12.499844498694689
		-7.1425322263722702e-015 42.362454 -16.394835250652655
		9.4033394986946863 42.362454 -12.499844498694701
		13.298330250652654 42.362454 -3.0965049999999983
		9.4033394986946917 42.362454 6.3068344986946911
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "PelvisControl" -p "UpperbodyControl";
	addAttr -ci true -sn "pelvisControl" -ln "pelvisControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 40.862454 -3.096505 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 0 2.5 0 ;
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "PelvisControlShape" -p "PelvisControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1.5 1.5 1.5
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-3.0955809408306669e-015 -6.057429656832114 -12.11485931366423
		12.11485931366423 -6.0574296568321149 -1.1126950268383065e-015
		1.6384764012338408e-015 -6.0574296568321158 12.11485931366423
		-12.11485931366423 -6.0574296568321149 1.7159179172918901e-015
		-3.0955809408306669e-015 -6.057429656832114 -12.11485931366423
		12.11485931366423 -6.0574296568321149 -1.1126950268383065e-015
		1.6384764012338408e-015 -6.0574296568321158 12.11485931366423
		-3.0955809408306669e-015 -2.0191432189440373 -12.11485931366423
		12.11485931366423 -2.0191432189440381 -8.6542946531868289e-016
		1.6384764012338408e-015 -2.019143218944039 12.11485931366423
		-12.11485931366423 -2.0191432189440381 1.9631834788115138e-015
		-3.0955809408306669e-015 -2.0191432189440373 -12.11485931366423
		12.11485931366423 -2.0191432189440381 -8.6542946531868289e-016
		1.6384764012338408e-015 -2.019143218944039 12.11485931366423
		-3.0955809408306669e-015 2.019143218944039 -12.11485931366423
		12.11485931366423 2.0191432189440381 -6.1816390379905912e-016
		1.6384764012338408e-015 2.0191432189440373 12.11485931366423
		-12.11485931366423 2.0191432189440381 2.2104490403311374e-015
		-3.0955809408306669e-015 2.019143218944039 -12.11485931366423
		12.11485931366423 2.0191432189440381 -6.1816390379905912e-016
		1.6384764012338408e-015 2.0191432189440373 12.11485931366423
		-3.0955809408306669e-015 6.0574296568321158 -12.11485931366423
		12.11485931366423 6.0574296568321149 -3.708983422794355e-016
		1.6384764012338408e-015 6.057429656832114 12.11485931366423
		-12.11485931366423 6.0574296568321149 2.457714601850761e-015
		-3.0955809408306669e-015 6.0574296568321158 -12.11485931366423
		12.11485931366423 6.0574296568321149 -3.708983422794355e-016
		1.6384764012338408e-015 6.057429656832114 12.11485931366423
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 6.040566684177108 -0.55059471816704297 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -46.903020684177108 3.647099718167043 ;
	setAttr ".rp" -type "double3" 0 46.903020684177108 -3.647099718167043 ;
	setAttr ".sp" -type "double3" 0 46.903020684177108 -3.647099718167043 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 50.637792749725136 -4.3524007776347569 ;
createNode transform -n "Ref:prp_packControlGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 10.052434 -1.5523465228004056 5.1108822961355216 ;
	setAttr ".r" -type "double3" 7.8706240653991788 -22.712059020996158 -2.7771978378295898 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Ref:prp_packControl" -p "Ref:prp_packControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_packControlShape" -p "Ref:prp_packControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 168.13724342724265 0 0 ;
	setAttr ".rp" -type "double3" 0 46.903020684177122 -3.6470997181670448 ;
	setAttr ".sp" -type "double3" 0 46.903020684177122 -3.6470997181670448 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	addAttr -ci true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0 -max 2 -at "double";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 46.903020684177122 -3.6470997181670448 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
	setAttr -k on ".stretchSpine";
createNode nurbsSurface -n "Ref:bip_spine_0FKcontrolShape" -p "Ref:bip_spine_0FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_1FKcontrolZeroGroup" -p "Ref:bip_spine_0FKcontrol";
	setAttr ".t" -type "double3" 0 0 -7.9936057773011997e-015 ;
	setAttr ".r" -type "double3" -2.4645891694527329 0 0 ;
	setAttr ".rp" -type "double3" 0 -7.4461739999999921 0 ;
	setAttr ".sp" -type "double3" 0 -7.4461739999999921 0 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.4461739999999921 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "Ref:bip_spine_1FKcontrolShape" -p "Ref:bip_spine_1FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_2FKcontrolZeroGroup" -p "Ref:bip_spine_1FKcontrol";
	setAttr ".t" -type "double3" 0 0 -7.9936057773011997e-015 ;
	setAttr ".r" -type "double3" 7.8146380709279422 0 0 ;
	setAttr ".rp" -type "double3" 0 -8.1669819999999973 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 0 -8.1669819999999973 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -8.1669819999999973 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "Ref:bip_spine_2FKcontrolShape" -p "Ref:bip_spine_2FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_3FKcontrolZeroGroup" -p "Ref:bip_spine_2FKcontrol";
	setAttr ".t" -type "double3" 0 0 -7.9936057773011997e-015 ;
	setAttr ".r" -type "double3" 24.681604098199148 0 0 ;
	setAttr ".rp" -type "double3" 0 -7.0590420000000051 2.6645352591003757e-015 ;
	setAttr ".sp" -type "double3" 0 -7.0590420000000051 2.6645352591003757e-015 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.0590420000000051 2.6645352591003757e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "Ref:bip_spine_3FKcontrolShape" -p "Ref:bip_spine_3FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChest" -p "UpperbodyControl";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 69.116623784974905 -7.9994706495552981 ;
	setAttr ".sp" -type "double3" 0 69.116623784974905 -7.9994706495552981 ;
createNode nurbsSurface -n "ikChestShape" -p "ikChest";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChestCluster" -p "ikChest";
	setAttr ".v" no;
createNode clusterHandle -n "ikChestClusterShape" -p "ikChestCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 65.311574232339467 -7.705523429540607 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.46572281002839222 -19.281682033019305 -2.7411243979854563 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.83812224237733501 21.067647819957408 5.6033273834203081 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -13.377917102042689 -4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.6864150946850153e-014 3.9407927918763605e-023 1.5830817817407334e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.978623538934331 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7951146347172653e-008 -16.792402033382594 1.9157000430425342e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.53249572244124077 8.8465850273367774 17.310158567236019 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -69.782971583788594 2.3458896589571752 -5.7865635442643262 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.9411876201060281 -4.8849813083506888e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.1090438630736201e-021 -2.4148365394514671e-006 7.0878800815962157e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -31.300256028924586 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -3.8678464287494618 1.1352665953614267e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector5" -p "Ref:bip_toe_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector4" -p "Ref:bip_foot_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "Ref:bip_knee_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_hip_LIK_pointConstraint1" -p "Ref:bip_hip_LIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_LW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 6.057429313659668 35.014210875584951 -0.35288476879295627 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -0.83812224237733635 21.067647819957401 5.6033273834203063 ;
	setAttr ".rp" -type "double3" 6.057429313659668 35.014210875584951 -0.35288476879295638 ;
	setAttr ".sp" -type "double3" 6.057429313659668 35.014210875584951 -0.35288476879295638 ;
createNode transform -n "Ref:bip_hip_LFK" -p "Ref:bip_hip_LFKZeroGroup";
	addAttr -ci true -sn "lFKupLeg" -ln "lFKupLeg" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hip_LFKShape" -p "Ref:bip_hip_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -7.4262357941072166e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -7.4262357941072166e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -4.4593057006808943 -6
		6 -4.4593057006808943 -4.4902232973487166e-016
		8.1147111599677579e-016 -4.4593057006808925 6
		-6 -4.4593057006808943 9.5187529733364862e-016
		-1.5331160820031275e-015 -4.4593057006808943 -6
		6 -4.4593057006808943 -4.4902232973487166e-016
		8.1147111599677579e-016 -4.4593057006808925 6
		-1.5331160820031275e-015 -8.9186114013617885 -6
		6 -8.9186114013617868 -2.8574148255855469e-016
		8.1147111599677579e-016 -8.9186114013617868 6
		-6 -8.9186114013617868 1.1151561445099656e-015
		-1.5331160820031275e-015 -8.9186114013617885 -6
		6 -8.9186114013617868 -2.8574148255855469e-016
		8.1147111599677579e-016 -8.9186114013617868 6
		-1.5331160820031275e-015 -13.37791710204268 -6
		6 -13.37791710204268 -1.2246063538223773e-016
		8.1147111599677579e-016 -13.37791710204268 6
		-6 -13.37791710204268 1.2784369916862826e-015
		-1.5331160820031275e-015 -13.37791710204268 -6
		6 -13.37791710204268 -1.2246063538223773e-016
		8.1147111599677579e-016 -13.37791710204268 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 13.978623538934331 -3.1805546814635152e-015 -7.951386703658788e-016 ;
	setAttr ".rp" -type "double3" -1.519617764955683e-015 -13.377917102042693 -8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" -1.519617764955683e-015 -13.377917102042693 -8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.519617764955683e-015 -13.377917102042693 -8.8817841970012523e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_knee_LFKShape" -p "Ref:bip_knee_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -9.3216556881118319e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -9.3216556881118319e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -5.5974673444608687 -6
		6 -5.5974673444608687 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.5974673444608669 6
		-6 -5.5974673444608687 9.5187529733364862e-016
		-1.5331160820031275e-015 -5.5974673444608687 -6
		6 -5.5974673444608687 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.5974673444608669 6
		-1.5331160820031275e-015 -11.194934688921737 -6
		6 -11.194934688921736 -2.8574148255855469e-016
		8.1147111599677579e-016 -11.194934688921736 6
		-6 -11.194934688921736 1.1151561445099656e-015
		-1.5331160820031275e-015 -11.194934688921737 -6
		6 -11.194934688921736 -2.8574148255855469e-016
		8.1147111599677579e-016 -11.194934688921736 6
		-1.5331160820031275e-015 -16.792402033382604 -6
		6 -16.792402033382604 -1.2246063538223773e-016
		8.1147111599677579e-016 -16.792402033382604 6
		-6 -16.792402033382604 1.2784369916862826e-015
		-1.5331160820031275e-015 -16.792402033382604 -6
		6 -16.792402033382604 -1.2246063538223773e-016
		8.1147111599677579e-016 -16.792402033382604 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -69.782971583788594 2.3458896589571778 -5.7865635442643262 ;
	setAttr ".rp" -type "double3" 1.7951144792860418e-008 -16.79240203338259 1.9156991548641145e-009 ;
	setAttr ".sp" -type "double3" 1.7951144792860418e-008 -16.79240203338259 1.9156991548641145e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7951144792860418e-008 -16.79240203338259 1.9156991548641145e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_foot_LFKShape" -p "Ref:bip_foot_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -4.408244669354982e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -4.408244669354982e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.6470625400353431 -6
		6 -2.6470625400353431 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.6470625400353422 6
		-6 -2.6470625400353431 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.6470625400353431 -6
		6 -2.6470625400353431 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.6470625400353422 6
		-1.5331160820031275e-015 -5.2941250800706863 -6
		6 -5.2941250800706854 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.2941250800706854 6
		-6 -5.2941250800706854 1.1151561445099656e-015
		-1.5331160820031275e-015 -5.2941250800706863 -6
		6 -5.2941250800706854 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.2941250800706854 6
		-1.5331160820031275e-015 -7.941187620106029 -6
		6 -7.941187620106029 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.941187620106029 6
		-6 -7.941187620106029 1.2784369916862826e-015
		-1.5331160820031275e-015 -7.941187620106029 -6
		6 -7.941187620106029 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.941187620106029 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -31.300256028924586 0 -3.1805546814635176e-015 ;
	setAttr ".rp" -type "double3" 2.4424906541753444e-015 -7.9411876201060254 0 ;
	setAttr ".sp" -type "double3" 2.4424906541753444e-015 -7.9411876201060254 0 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -7.9411876201060254 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999922 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_toe_LFKShape" -p "Ref:bip_toe_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -2.1470860804559178e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.1470860804559178e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.2892821429164869 -6
		6 -1.2892821429164869 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.2892821429164865 6
		-6 -1.2892821429164869 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.2892821429164869 -6
		6 -1.2892821429164869 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.2892821429164865 6
		-1.5331160820031275e-015 -2.5785642858329738 -6
		6 -2.5785642858329734 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.5785642858329734 6
		-6 -2.5785642858329734 1.1151561445099656e-015
		-1.5331160820031275e-015 -2.5785642858329738 -6
		6 -2.5785642858329734 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.5785642858329734 6
		-1.5331160820031275e-015 -3.8678464287494601 -6
		6 -3.8678464287494601 -1.2246063538223773e-016
		8.1147111599677579e-016 -3.8678464287494601 6
		-6 -3.8678464287494601 1.2784369916862826e-015
		-1.5331160820031275e-015 -3.8678464287494601 -6
		6 -3.8678464287494601 -1.2246063538223773e-016
		8.1147111599677579e-016 -3.8678464287494601 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_hip_LFK_pointConstraint1" -p "Ref:bip_hip_LFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_LW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 6.0574293136596697 35.014210875584951 -0.35288476879295549 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.46572798100179758 -19.281744665623787 -2.741133772485663 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.16187775762279 -21.067647819957411 -5.603327383420309 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5852243360778857e-006 13.377916440388242 -1.5529263368563306e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 9.2160371233041601e-014 -2.554929458324868e-021 -1.1250974597067391e-019 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.978623538934221 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6553122245995837e-007 16.792395306986382 1.2873269277235977e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.53249507849710942 8.846605568711551 17.310212550003644 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -69.782971583788637 2.3458896589571898 -5.7865635442643173 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.3869107448912814e-005 7.9411998909443744 -6.3614359078201232e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -31.300256028924608 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.298963825950409e-005 3.8678221856352351 6.0475316249924305e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9090959104164224e-006 0 0 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector9" -p "Ref:bip_toe_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector8" -p "Ref:bip_foot_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "Ref:bip_knee_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_hip_RIK_pointConstraint1" -p "Ref:bip_hip_RIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_RW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -6.05743 35.014200365331064 -0.35288461490329814 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 179.16187775762279 -21.067647819957408 -5.603327383420309 ;
	setAttr ".rp" -type "double3" -6.05743 35.014200365331064 -0.35288461490329803 ;
	setAttr ".sp" -type "double3" -6.05743 35.014200365331064 -0.35288461490329803 ;
createNode transform -n "Ref:bip_hip_RFK" -p "Ref:bip_hip_RFKZeroGroup";
	addAttr -ci true -sn "rFKupLeg" -ln "rFKupLeg" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hip_RFKShape" -p "Ref:bip_hip_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 7.4262354268155346e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 7.4262354268155346e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 4.4593054801296033 -6
		6 4.4593054801296033 -4.4902232973487166e-016
		8.1147111599677579e-016 4.4593054801296015 6
		-6 4.4593054801296033 9.5187529733364862e-016
		-1.5331160820031275e-015 4.4593054801296033 -6
		6 4.4593054801296033 -4.4902232973487166e-016
		8.1147111599677579e-016 4.4593054801296015 6
		-1.5331160820031275e-015 8.9186109602592065 -6
		6 8.9186109602592047 -2.8574148255855469e-016
		8.1147111599677579e-016 8.9186109602592047 6
		-6 8.9186109602592047 1.1151561445099656e-015
		-1.5331160820031275e-015 8.9186109602592065 -6
		6 8.9186109602592047 -2.8574148255855469e-016
		8.1147111599677579e-016 8.9186109602592047 6
		-1.5331160820031275e-015 13.377916440388807 -6
		6 13.377916440388807 -1.2246063538223773e-016
		8.1147111599677579e-016 13.377916440388807 6
		-6 13.377916440388807 1.2784369916862826e-015
		-1.5331160820031275e-015 13.377916440388807 -6
		6 13.377916440388807 -1.2246063538223773e-016
		8.1147111599677579e-016 13.377916440388807 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 13.978623538934222 0 7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -3.5852243364109526e-006 13.377916440388235 -1.5529263373004198e-006 ;
	setAttr ".sp" -type "double3" -3.5852243364109526e-006 13.377916440388235 -1.5529263373004198e-006 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5852243364109526e-006 13.377916440388235 -1.5529263373004198e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_knee_RFKShape" -p "Ref:bip_knee_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 9.3216519542118822e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 9.3216519542118822e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 5.5974651023288127 -6
		6 5.5974651023288127 -4.4902232973487166e-016
		8.1147111599677579e-016 5.5974651023288109 6
		-6 5.5974651023288127 9.5187529733364862e-016
		-1.5331160820031275e-015 5.5974651023288127 -6
		6 5.5974651023288127 -4.4902232973487166e-016
		8.1147111599677579e-016 5.5974651023288109 6
		-1.5331160820031275e-015 11.194930204657625 -6
		6 11.194930204657624 -2.8574148255855469e-016
		8.1147111599677579e-016 11.194930204657624 6
		-6 11.194930204657624 1.1151561445099656e-015
		-1.5331160820031275e-015 11.194930204657625 -6
		6 11.194930204657624 -2.8574148255855469e-016
		8.1147111599677579e-016 11.194930204657624 6
		-1.5331160820031275e-015 16.792395306986435 -6
		6 16.792395306986435 -1.2246063538223773e-016
		8.1147111599677579e-016 16.792395306986435 6
		-6 16.792395306986435 1.2784369916862826e-015
		-1.5331160820031275e-015 16.792395306986435 -6
		6 16.792395306986435 -1.2246063538223773e-016
		8.1147111599677579e-016 16.792395306986435 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -69.782971583788651 2.3458896589571934 -5.7865635442643164 ;
	setAttr ".rp" -type "double3" 4.6553122312609219e-007 16.792395306986386 1.2873269268354193e-006 ;
	setAttr ".sp" -type "double3" 4.6553122312609219e-007 16.792395306986386 1.2873269268354193e-006 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6553122312609219e-007 16.792395306986386 1.2873269268354193e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_foot_RFKShape" -p "Ref:bip_foot_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 4.4082514811072945e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 4.4082514811072945e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.6470666303560333 -6
		6 2.6470666303560333 -4.4902232973487166e-016
		8.1147111599677579e-016 2.6470666303560324 6
		-6 2.6470666303560333 9.5187529733364862e-016
		-1.5331160820031275e-015 2.6470666303560333 -6
		6 2.6470666303560333 -4.4902232973487166e-016
		8.1147111599677579e-016 2.6470666303560324 6
		-1.5331160820031275e-015 5.2941332607120666 -6
		6 5.2941332607120657 -2.8574148255855469e-016
		8.1147111599677579e-016 5.2941332607120657 6
		-6 5.2941332607120657 1.1151561445099656e-015
		-1.5331160820031275e-015 5.2941332607120666 -6
		6 5.2941332607120657 -2.8574148255855469e-016
		8.1147111599677579e-016 5.2941332607120657 6
		-1.5331160820031275e-015 7.9411998910680994 -6
		6 7.9411998910680994 -1.2246063538223773e-016
		8.1147111599677579e-016 7.9411998910680994 6
		-6 7.9411998910680994 1.2784369916862826e-015
		-1.5331160820031275e-015 7.9411998910680994 -6
		6 7.9411998910680994 -1.2246063538223773e-016
		8.1147111599677579e-016 7.9411998910680994 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -31.300256028924608 1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -4.3869107453131662e-005 7.9411998909443771 -6.3614359047114988e-006 ;
	setAttr ".sp" -type "double3" -4.3869107453131662e-005 7.9411998909443771 -6.3614359047114988e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.3869107453131662e-005 7.9411998909443771 -6.3614359047114988e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_toe_RFKShape" -p "Ref:bip_toe_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 2.1470726230256112e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.1470726230256112e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.289274061999405 -6
		6 1.289274061999405 -4.4902232973487166e-016
		8.1147111599677579e-016 1.2892740619994045 6
		-6 1.289274061999405 9.5187529733364862e-016
		-1.5331160820031275e-015 1.289274061999405 -6
		6 1.289274061999405 -4.4902232973487166e-016
		8.1147111599677579e-016 1.2892740619994045 6
		-1.5331160820031275e-015 2.5785481239988099 -6
		6 2.5785481239988095 -2.8574148255855469e-016
		8.1147111599677579e-016 2.5785481239988095 6
		-6 2.5785481239988095 1.1151561445099656e-015
		-1.5331160820031275e-015 2.5785481239988099 -6
		6 2.5785481239988095 -2.8574148255855469e-016
		8.1147111599677579e-016 2.5785481239988095 6
		-1.5331160820031275e-015 3.8678221859982145 -6
		6 3.8678221859982145 -1.2246063538223773e-016
		8.1147111599677579e-016 3.8678221859982145 6
		-6 3.8678221859982145 1.2784369916862826e-015
		-1.5331160820031275e-015 3.8678221859982145 -6
		6 3.8678221859982145 -1.2246063538223773e-016
		8.1147111599677579e-016 3.8678221859982145 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_hip_RFK_pointConstraint1" -p "Ref:bip_hip_RFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_RW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -6.05743 35.014200365331057 -0.35288461490329937 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 46.903020684177108 -3.647099718167043 ;
	setAttr ".r" -type "double3" -0.52537516092014735 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 168.13724342724265 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -7.446173999999985 1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" 2.2734473418358228 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.4645891694527178 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -8.1669820000000328 -7.1054273576010019e-015 ;
	setAttr ".r" -type "double3" -3.197950745584444 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.8146380709279013 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -7.0590419999999909 -4.4408920985006262e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 24.681604098199191 0 0 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "Ref:bip_spine_3ik_orientConstraint1" -p "Ref:bip_spine_3ik";
	addAttr -ci true -k true -sn "w0" -ln "ikChestW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 163.28098213629968 0 0 ;
	setAttr ".o" -type "double3" -163.28098213629968 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 69.13774595607596 -8.0011023769190448 ;
	setAttr ".r" -type "double3" 172.03741376404906 0 0 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "SpineCurve" -p "main";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".it" no;
createNode nurbsCurve -n "SpineCurveShape" -p "SpineCurve";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode nurbsCurve -n "SpineCurveShapeOrig" -p "SpineCurve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 22.672198000000012 22.672198000000012 22.672198000000012
		4
		0 46.903020684177108 -3.647099718167043
		0 54.372564815273158 -5.0577018371024707
		0 61.506524679704015 -7.411576209525915
		0 69.116623784974905 -7.9994706495552981
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 69.116623784974891 -7.999470649555299 ;
	setAttr ".sp" -type "double3" 0 69.116623784974891 -7.999470649555299 ;
createNode parentConstraint -n "chestParent_parentConstraint1" -p "chestParent";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_3FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 -1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 161.831103573083 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.019759862076014656 -0.0076391424434412158 ;
	setAttr ".tg[1].tor" -type "double3" 163.28098213357552 0 0 ;
	setAttr ".rst" -type "double3" 0 0 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 141.84516396252553 34.214850861528276 ;
	setAttr ".r" -type "double3" -144.48024209771762 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 76.401964120709152 -5.6085542801697779 ;
	setAttr ".rpt" -type "double3" 0 -141.84516396252559 -34.214850861528269 ;
	setAttr ".sp" -type "double3" 0 76.401964120709138 -5.608554280169777 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -8.8817841970012543e-016 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 27.885499861172949 -1.5902773407317584e-015 76.247996332145561 ;
	setAttr ".rp" -type "double3" 2.1314274191856528 72.389541800101867 0.64673923080110818 ;
	setAttr ".sp" -type "double3" 2.1314274191856528 72.389541800101867 0.64673923080110818 ;
createNode transform -n "lShoulderControl" -p "lShoulderControlZeroGroup";
	addAttr -ci true -sn "lFKshoulderControl" -ln "lFKshoulderControl" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "lShoulderControlShape" -p "lShoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 -4.687291357313331 -6.75
		6.75 -4.6872913573133301 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.6872913573133292 6.75
		-6.75 -4.6872913573133301 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.687291357313331 -6.75
		6.75 -4.6872913573133301 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.6872913573133292 6.75
		-1.7247555922535185e-015 -9.3745827146266603 -6.75
		6.75 -9.3745827146266603 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.3745827146266603 6.75
		-6.75 -9.3745827146266603 1.2545506625737113e-015
		-1.7247555922535185e-015 -9.3745827146266603 -6.75
		6.75 -9.3745827146266603 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.3745827146266603 6.75
		-1.7247555922535185e-015 -14.061874071939991 -6.75
		6.75 -14.061874071939991 -1.3776821480501744e-016
		9.1290500549637277e-016 -14.061874071939991 6.75
		-6.75 -14.061874071939991 1.4382416156470679e-015
		-1.7247555922535185e-015 -14.061874071939991 -6.75
		6.75 -14.061874071939991 -1.3776821480501744e-016
		9.1290500549637277e-016 -14.061874071939991 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "lShoulderControl_pointConstraint1" -p "lShoulderControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_collar_LW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 2.1314274191856581 72.389541800101895 0.64673923080110907 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".t" -type "double3" 1.771387878441244e-014 0 -8.8817841970012523e-016 ;
	setAttr ".rp" -type "double3" -9.5851717177226387e-009 -14.06187407194 1.6875389974302379e-014 ;
	setAttr ".sp" -type "double3" -9.5851717177226387e-009 -14.06187407194 1.6875389974302379e-014 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -5.9635400277440943e-015 -2.3854160110976384e-015 -4.9447686063378122e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to clavicle^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
	setAttr ".zooCmd1" -type "string" "parent to chest^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 1\" #;";
	setAttr ".zooCmd2" -type "string" "parent to root^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 2\" #;";
	setAttr ".zooCmd3" -type "string" "parent to world^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 3\" #;";
createNode nurbsSurface -n "Ref:bip_upperArm_LFKShape" -p "Ref:bip_upperArm_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 -5.8903083428816192 -6.75
		6.75 -5.8903083428816183 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.8903083428816174 6.75
		-6.75 -5.8903083428816183 1.0708597095003547e-015
		-1.7247555922535185e-015 -5.8903083428816192 -6.75
		6.75 -5.8903083428816183 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.8903083428816174 6.75
		-1.7247555922535185e-015 -11.780616685763237 -6.75
		6.75 -11.780616685763237 -3.2145916787837403e-016
		9.1290500549637277e-016 -11.780616685763237 6.75
		-6.75 -11.780616685763237 1.2545506625737113e-015
		-1.7247555922535185e-015 -11.780616685763237 -6.75
		6.75 -11.780616685763237 -3.2145916787837403e-016
		9.1290500549637277e-016 -11.780616685763237 6.75
		-1.7247555922535185e-015 -17.670925028644856 -6.75
		6.75 -17.670925028644856 -1.3776821480501744e-016
		9.1290500549637277e-016 -17.670925028644856 6.75
		-6.75 -17.670925028644856 1.4382416156470679e-015
		-1.7247555922535185e-015 -17.670925028644856 -6.75
		6.75 -17.670925028644856 -1.3776821480501744e-016
		9.1290500549637277e-016 -17.670925028644856 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -25.322279734095375 1.5902773407317588e-015 3.1805546814635176e-015 ;
	setAttr ".rp" -type "double3" -1.3100631690576847e-014 -17.670925028644888 -9.3258734068513149e-015 ;
	setAttr ".sp" -type "double3" -1.3100631690576847e-014 -17.670925028644888 -9.3258734068513149e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3100631690576847e-014 -17.670925028644888 -9.3258734068513149e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_lowerArm_LFKShape" -p "Ref:bip_lowerArm_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 -5.0584987777569186 -6.75
		6.75 -5.0584987777569177 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.0584987777569168 6.75
		-6.75 -5.0584987777569177 1.0708597095003547e-015
		-1.7247555922535185e-015 -5.0584987777569186 -6.75
		6.75 -5.0584987777569177 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.0584987777569168 6.75
		-1.7247555922535185e-015 -10.116997555513835 -6.75
		6.75 -10.116997555513835 -3.2145916787837403e-016
		9.1290500549637277e-016 -10.116997555513835 6.75
		-6.75 -10.116997555513835 1.2545506625737113e-015
		-1.7247555922535185e-015 -10.116997555513835 -6.75
		6.75 -10.116997555513835 -3.2145916787837403e-016
		9.1290500549637277e-016 -10.116997555513835 6.75
		-1.7247555922535185e-015 -15.175496333270754 -6.75
		6.75 -15.175496333270754 -1.3776821480501744e-016
		9.1290500549637277e-016 -15.175496333270754 6.75
		-6.75 -15.175496333270754 1.4382416156470679e-015
		-1.7247555922535185e-015 -15.175496333270754 -6.75
		6.75 -15.175496333270754 -1.3776821480501744e-016
		9.1290500549637277e-016 -15.175496333270754 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" -2.3854160110976364e-015 3.1805546814635152e-015 -1.5902773407317576e-015 ;
	setAttr ".rp" -type "double3" -1.4703516182379417e-014 -15.175496333270729 0 ;
	setAttr ".sp" -type "double3" -1.4703516182379417e-014 -15.175496333270729 0 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4703516182379417e-014 -15.175496333270729 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hand_LFKShape" -p "Ref:bip_hand_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		-4.4999999999999991 -5.7174176977771623e-016 3.1819805153394642
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		2.8900849075168082e-016 -5.1375466905119268e-016 10.318019484660535
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 2.5486751905238842e-016 3.1819805153394642
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_upperArm_LFK_pointConstraint1" -p "Ref:bip_upperArm_LFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_LW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -9.5851895309806423e-009 -14.061874071940029 2.2204460492503131e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "lShoulderControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3FKcontrolW1" -bt "W001" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w2" -ln "UpperbodyControlW2" -bt "W002" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w3" -ln "mainW3" -bt "W003" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 4 ".tg";
	setAttr ".tg[0].tot" -type "double3" -9.5851813269023878e-009 -14.061874071940009 
		1.5576363282573182e-014 ;
	setAttr ".tg[0].tor" -type "double3" -17.732520671413226 -32.440703331997383 -48.39893894492365 ;
	setAttr ".tg[1].tot" -type "double3" 14.2041986265515 -0.9476870511284482 -1.8669620352407641 ;
	setAttr ".tg[1].tor" -type "double3" 163.70586547656208 3.4560238657643638 -23.016130475423537 ;
	setAttr ".tg[2].tot" -type "double3" 14.2041986265515 28.572451994701829 -2.8335806146045002 ;
	setAttr ".tg[2].tor" -type "double3" 0.66602484439952125 -10.309966981810209 20.965166270130894 ;
	setAttr ".tg[3].tot" -type "double3" 14.2041986265515 69.434905994701836 -5.9300856146044989 ;
	setAttr ".tg[3].tor" -type "double3" 0.66602484439952125 -10.309966981810209 20.965166270130894 ;
	setAttr ".lr" -type "double3" -17.73252067141323 -32.440703331997391 -48.39893894492365 ;
	setAttr ".rst" -type "double3" 3.1924733499614444e-014 3.5527136788005009e-015 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -17.732520671413226 -32.440703331997383 -48.39893894492365 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -152.11450013882705 0 -76.247996332145533 ;
	setAttr ".rp" -type "double3" -2.13143 72.389500794128196 0.64673930419813352 ;
	setAttr ".sp" -type "double3" -2.13143 72.389500794128196 0.64673930419813352 ;
createNode transform -n "rShoulderControl" -p "rShoulderControlZeroGroup";
	addAttr -ci true -sn "rFKshoulderControl" -ln "rFKshoulderControl" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "rShoulderControlShape" -p "rShoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 4.6872891517395905 -6.75
		6.75 4.6872891517395896 -5.0515012095173062e-016
		9.1290500549637277e-016 4.6872891517395887 6.75
		-6.75 4.6872891517395896 1.0708597095003547e-015
		-1.7247555922535185e-015 4.6872891517395905 -6.75
		6.75 4.6872891517395896 -5.0515012095173062e-016
		9.1290500549637277e-016 4.6872891517395887 6.75
		-1.7247555922535185e-015 9.3745783034791792 -6.75
		6.75 9.3745783034791792 -3.2145916787837403e-016
		9.1290500549637277e-016 9.3745783034791792 6.75
		-6.75 9.3745783034791792 1.2545506625737113e-015
		-1.7247555922535185e-015 9.3745783034791792 -6.75
		6.75 9.3745783034791792 -3.2145916787837403e-016
		9.1290500549637277e-016 9.3745783034791792 6.75
		-1.7247555922535185e-015 14.061867455218769 -6.75
		6.75 14.061867455218769 -1.3776821480501744e-016
		9.1290500549637277e-016 14.061867455218769 6.75
		-6.75 14.061867455218769 1.4382416156470679e-015
		-1.7247555922535185e-015 14.061867455218769 -6.75
		6.75 14.061867455218769 -1.3776821480501744e-016
		9.1290500549637277e-016 14.061867455218769 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "rShoulderControl_pointConstraint1" -p "rShoulderControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_collar_RW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -2.1314299999999902 72.38950079412821 0.6467393041981313 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".t" -type "double3" -9.753503072470332e-014 -2.1316282072803006e-014 1.2434497875801753e-014 ;
	setAttr ".rp" -type "double3" -3.4482393740540578e-005 14.061867455174085 8.2016375468896285e-006 ;
	setAttr ".sp" -type "double3" -3.4482393740540578e-005 14.061867455174085 8.2016375468896285e-006 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999933 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to clavicle^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
	setAttr ".zooCmd1" -type "string" "parent to chest^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 1\" #;";
	setAttr ".zooCmd2" -type "string" "parent to root^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 2\" #;";
	setAttr ".zooCmd3" -type "string" "parent to world^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 3\" #;";
createNode nurbsSurface -n "Ref:bip_upperArm_RFKShape" -p "Ref:bip_upperArm_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 5.8903101047218991 -6.75
		6.75 5.8903101047218982 -5.0515012095173062e-016
		9.1290500549637277e-016 5.8903101047218973 6.75
		-6.75 5.8903101047218982 1.0708597095003547e-015
		-1.7247555922535185e-015 5.8903101047218991 -6.75
		6.75 5.8903101047218982 -5.0515012095173062e-016
		9.1290500549637277e-016 5.8903101047218973 6.75
		-1.7247555922535185e-015 11.780620209443796 -6.75
		6.75 11.780620209443796 -3.2145916787837403e-016
		9.1290500549637277e-016 11.780620209443796 6.75
		-6.75 11.780620209443796 1.2545506625737113e-015
		-1.7247555922535185e-015 11.780620209443796 -6.75
		6.75 11.780620209443796 -3.2145916787837403e-016
		9.1290500549637277e-016 11.780620209443796 6.75
		-1.7247555922535185e-015 17.670930314165695 -6.75
		6.75 17.670930314165695 -1.3776821480501744e-016
		9.1290500549637277e-016 17.670930314165695 6.75
		-6.75 17.670930314165695 1.4382416156470679e-015
		-1.7247555922535185e-015 17.670930314165695 -6.75
		6.75 17.670930314165695 -1.3776821480501744e-016
		9.1290500549637277e-016 17.670930314165695 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -25.322279734095389 -1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -3.629537145721784e-005 17.670930314127695 5.0766117016820544e-006 ;
	setAttr ".sp" -type "double3" -3.629537145721784e-005 17.670930314127695 5.0766117016820544e-006 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.629537145721784e-005 17.670930314127695 5.0766117016820544e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_lowerArm_RFKShape" -p "Ref:bip_lowerArm_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 5.0585115149582833 -6.75
		6.75 5.0585115149582824 -5.0515012095173062e-016
		9.1290500549637277e-016 5.0585115149582816 6.75
		-6.75 5.0585115149582824 1.0708597095003547e-015
		-1.7247555922535185e-015 5.0585115149582833 -6.75
		6.75 5.0585115149582824 -5.0515012095173062e-016
		9.1290500549637277e-016 5.0585115149582816 6.75
		-1.7247555922535185e-015 10.117023029916565 -6.75
		6.75 10.117023029916565 -3.2145916787837403e-016
		9.1290500549637277e-016 10.117023029916565 6.75
		-6.75 10.117023029916565 1.2545506625737113e-015
		-1.7247555922535185e-015 10.117023029916565 -6.75
		6.75 10.117023029916565 -3.2145916787837403e-016
		9.1290500549637277e-016 10.117023029916565 6.75
		-1.7247555922535185e-015 15.175534544874848 -6.75
		6.75 15.175534544874848 -1.3776821480501744e-016
		9.1290500549637277e-016 15.175534544874848 6.75
		-6.75 15.175534544874848 1.4382416156470679e-015
		-1.7247555922535185e-015 15.175534544874848 -6.75
		6.75 15.175534544874848 -1.3776821480501744e-016
		9.1290500549637277e-016 15.175534544874848 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 4.7708320221952752e-015 0 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 2.3717933169013772e-005 15.175534544853171 9.8028085560031286e-006 ;
	setAttr ".sp" -type "double3" 2.3717933169013772e-005 15.175534544853171 9.8028085560031286e-006 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.3717933169013772e-005 15.175534544853171 9.8028085560031286e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hand_RFKShape" -p "Ref:bip_hand_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		-4.4999999999999991 -5.7174176977771623e-016 3.1819805153394642
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		2.8900849075168082e-016 -5.1375466905119268e-016 10.318019484660535
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 2.5486751905238842e-016 3.1819805153394642
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_upperArm_RFK_pointConstraint1" -p "Ref:bip_upperArm_RFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_RW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -3.448239374215234e-005 14.061867455174074 8.2016375424487364e-006 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "rShoulderControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3FKcontrolW1" -bt "W001" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w2" -ln "UpperbodyControlW2" -bt "W002" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w3" -ln "mainW3" -bt "W003" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 4 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.448239384000061e-005 14.061867455174065 
		8.2016375615660227e-006 ;
	setAttr ".tg[0].tor" -type "double3" -17.732520671413177 -32.440703331997405 -48.398938944923707 ;
	setAttr ".tg[1].tot" -type "double3" -14.204199999999991 -0.94768083725233188 -1.8669597791644721 ;
	setAttr ".tg[1].tor" -type "double3" -16.294134523437897 -3.4560238657643909 23.016130475423445 ;
	setAttr ".tg[2].tot" -type "double3" -14.204199999999991 28.572446794128304 -2.8335846958018367 ;
	setAttr ".tg[2].tor" -type "double3" -179.33397515560046 10.309966981810209 -20.965166270130798 ;
	setAttr ".tg[3].tot" -type "double3" -14.204199999999991 69.434900794128325 -5.9300896958018354 ;
	setAttr ".tg[3].tor" -type "double3" -179.33397515560046 10.309966981810209 -20.965166270130798 ;
	setAttr ".lr" -type "double3" -17.73252067141318 -32.440703331997405 -48.398938944923714 ;
	setAttr ".rst" -type "double3" -1.1174588543990532e-013 -2.4868995751603507e-014 
		1.2434497875801753e-014 ;
	setAttr ".rsrr" -type "double3" -17.732520671413159 -32.440703331997412 -48.398938944923707 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "Ref:prp_bullet_shoulderControlGroup" -p "rShoulderControl";
	setAttr ".t" -type "double3" -6.0627499999999976 10.213033999999983 1.7571279999999909 ;
	setAttr ".r" -type "double3" 172.83046950199892 -27.019833223202411 -74.523309789894839 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999922 ;
createNode transform -n "Ref:prp_bullet_shoulderControl" -p "Ref:prp_bullet_shoulderControlGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_shoulderControlShape" -p "Ref:prp_bullet_shoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 141.84516396252553 34.214850861528276 ;
	setAttr ".sp" -type "double3" 0 141.84516396252553 34.214850861528276 ;
createNode orientConstraint -n "neckControlLockParent_orientConstraint1" -p "neckControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "neckControlZeroGroupW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -144.48024209771762 0 0 ;
	setAttr ".rsrr" -type "double3" -144.48024209771762 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neckControlLockParent_pointConstraint1" -p "neckControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".o" -type "double3" 0 72.728540177550641 42.214321511083575 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other ) #;\n";
createNode nurbsSurface -n "neckControlShape" -p "neckControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-4.0000000000000009 -1.7151265217091316e-015 7.9999999999999991
		-1.4695276245868527e-015 -1.0000000000000018 8
		3.9999999999999991 -1.9600477924736071e-015 8
		-2.4651903288156619e-032 0.99999999999999822 8
		-4.0000000000000009 -1.4702052509446562e-015 7.9999999999999991
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "neckControl_pointConstraint1" -p "neckControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_neckW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 0 76.401964120709138 -5.608554280169777 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -66.687556411207993 48.953180524333099 ;
	setAttr ".r" -type "double3" -35.519757902282493 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999944 ;
	setAttr ".rp" -type "double3" 0 79.560489659818373 -3.353956152230277 ;
	setAttr ".rpt" -type "double3" 0 -16.753589932692812 -45.59922437210281 ;
	setAttr ".sp" -type "double3" 0 79.56048965981843 -3.3539561522302792 ;
	setAttr ".spt" -type "double3" 0 -5.6843418860807983e-014 2.2204460492503119e-015 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -66.687556411207993 48.953180524333099 ;
	setAttr ".sp" -type "double3" 0 -66.687556411207993 48.953180524333099 ;
createNode orientConstraint -n "headControlLockParent_orientConstraint1" -p "headControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "headControlZeroGroupW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -180.00000000000011 0 0 ;
	setAttr ".rsrr" -type "double3" -180.00000000000011 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "headControlLockParent_pointConstraint1" -p "headControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "bip_neckW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".o" -type "double3" 0 -143.08952053191712 54.561734804502876 ;
	setAttr ".rst" -type "double3" 0 1.4210854715202004e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.3377586926819708e-014 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other ) #;\n";
createNode nurbsSurface -n "headControlShape" -p "headControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-3.0000000000000009 -1.2863448912818487e-015 6
		-1.1021457184401395e-015 -0.75000000000000133 6
		2.9999999999999991 -1.4700358443552053e-015 6
		-1.8488927466117464e-032 0.74999999999999867 6
		-3.0000000000000009 -1.1026539382084921e-015 6
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "headControl_pointConstraint1" -p "headControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_headW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 0 79.56048965981843 -3.3539561522302792 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.13798184014392451 8.7011134155599965 -1.8135431753511544 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.66602484439952048 -10.309966981810202 20.965166270130869 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -2.1316282072803006e-014 -17.670925028644874 -1.021405182655144e-014 ;
	setAttr ".r" -type "double3" -3.4345341206803685e-014 -8.0405385648551918e-029 2.6679382376436989e-028 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -25.322279734095421 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 3.5527136788005009e-014 -15.175496333270749 -1.7763568394002505e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector2" -p "Ref:bip_lowerArm_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_upperArm_LIK_pointConstraint1" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_LW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 14.204198626551479 69.434905994701779 -5.9300856146045096 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 16.793362188414957 2.2968617992230094 3.287742822051503 ;
	setAttr ".sp" -type "double3" 16.793362188414967 2.2968617992230165 3.2877428220515088 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "Ref:bip_hand_LIKikHandle_pointConstraint1" -p "Ref:bip_hand_LIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "likHandControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 7.6441096058098452 37.366981079988747 -3.191325619048051 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "Ref:bip_hand_LIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_hand_LIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "lElbowControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 6.3565639261371079 -16.486808225679511 -0.20209144115113364 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 24.437471794224798 39.663842879211757 0.096417203003456464 ;
	setAttr ".sp" -type "double3" 24.437471794224798 39.663842879211757 0.096417203003456464 ;
createNode parentConstraint -n "likHandControlGroup_parentConstraint1" -p "likHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "UpperbodyControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 24.437471794224798 -1.1986111207882431 3.1929222030034565 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 11.063000327228572 17.649935319198597 -0.90216598930724157 ;
	setAttr ".rp" -type "double3" 13.374471466996226 22.013907560013159 0.99858319231069803 ;
	setAttr ".sp" -type "double3" 13.374471466996226 22.013907560013159 0.99858319231069803 ;
createNode transform -n "likHandControl" -p "likHandControlWeaponGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrig4" -ln "zooTrig4" -at "message";
	addAttr -ci true -sn "zooTrig5" -ln "zooTrig5" -at "message";
	addAttr -ci true -sn "zooTrig6" -ln "zooTrig6" -at "message";
	addAttr -ci true -sn "zooTrig7" -ln "zooTrig7" -at "message";
	addAttr -ci true -sn "zooTrig8" -ln "zooTrig8" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -11.063000327228576 -17.649935319198597 0.90216598930724601 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 36.431067578439951 28.438416303337192 5.8697145731791149 ;
	setAttr ".rpt" -type "double3" -11.993595784215149 11.225426575874565 -5.7732973701756629 ;
	setAttr ".sp" -type "double3" 36.431067578439951 28.438416303337192 5.8697145731791149 ;
	setAttr ".hdl" -type "double3" 36.431067578439951 28.438416303337192 5.8697145731791149 ;
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\nzooChangeSpace ( \"-attr aim \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd2" -type "string" "toggle weapon parent^int $other = !`getAttr #.weaponParent`;\nzooChangeSpace ( \"-attr weaponParent \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd3" -type "string" "to FK^zooAlignFast %1 %5 1 0;\r\nzooAlignFast %2 %6 1 0;\r\nzooAlignFast %3 %7 1 0;\r\nsetAttr %1.r 0 0 0;\r\nsetAttr %8.lArmIKFK 0;";
createNode nurbsSurface -n "likHandControlShape" -p "likHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		34.431067578439951 25.988926560554006 3.4202248303959379
		34.431067578439951 25.988926560554006 8.3192043159622937
		34.431067578439951 30.887906046120364 8.3192043159622937
		34.431067578439951 30.887906046120364 3.4202248303959379
		34.431067578439951 25.988926560554006 3.4202248303959375
		38.431067578439951 25.988926560554006 3.4202248303959379
		38.431067578439951 25.988926560554006 8.3192043159622955
		38.431067578439951 30.887906046120364 8.3192043159622937
		38.431067578439951 30.887906046120364 3.4202248303959375
		38.431067578439951 25.988926560554006 3.4202248303959371
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode orientConstraint -n "likHandControl_orientConstraint1" -p "likHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_LW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -24.480389550997675 -1.5838445195536355 19.27277709396067 ;
	setAttr ".rsrr" -type "double3" -24.656254893047922 -10.3099653966775 20.965166288860214 ;
	setAttr -k on ".w0";
createNode transform -n "lElbowControl" -p "main";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 20.560762552688587 52.948097769022269 -6.1321770557556432 ;
	setAttr ".sp" -type "double3" 20.560762552688587 52.948097769022269 -6.1321770557556432 ;
	setAttr ".hdl" -type "double3" 20.560762552688587 52.948097769022269 -6.1321770557556432 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "lElbowControlShape" -p "lElbowControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		20.560762552688587 52.948097769022269 -7.1321770557556432
		20.560762552688587 51.948097769022269 -6.1321770557556432
		20.560762552688587 52.948097769022269 -5.1321770557556432
		20.560762552688587 53.948097769022269 -6.1321770557556432
		20.560762552688587 52.948097769022269 -7.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" -24.656254889695862 -10.309966981810252 20.965166270130883 ;
	setAttr ".rp" -type "double3" 24.437471629238583 39.663842815994535 0.096417170862964419 ;
	setAttr ".sp" -type "double3" 24.437471629238583 39.663842815994535 0.096417170862964419 ;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 24.437471629238591 36.117183447542409 0.096417170862964419 ;
	setAttr ".rpt" -type "double3" -11.241731209716983 4.1334137464132263 -10.460398857195901 ;
	setAttr ".sp" -type "double3" 24.437471629238591 36.117183447542409 0.096417170862964419 ;
createNode transform -n "sub_space_grp_L" -p "lHandControlGroup";
	setAttr ".rp" -type "double3" 24.437471631394317 39.663842822536182 0.096417143903273939 ;
	setAttr ".sp" -type "double3" 24.437471631394317 39.663842822536182 0.096417143903273939 ;
createNode transform -n "lHandControl" -p "sub_space_grp_L";
	addAttr -ci true -k true -sn "bip_thumb_0_LControlRoll" -ln "bip_thumb_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_index_0_LControlRoll" -ln "bip_index_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_middle_0_LControlRoll" -ln "bip_middle_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_ring_0_LControlRoll" -ln "bip_ring_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_pinky_0_LControlRoll" -ln "bip_pinky_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.1927080055488184e-015 0 3.1805546814635168e-015 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -0.51914958725782134 -3.8574387455518786 1.6883868130156603 ;
	setAttr ".dh" yes;
	setAttr -k on ".bip_thumb_0_LControlRoll";
	setAttr -k on ".bip_index_0_LControlRoll";
	setAttr -k on ".bip_middle_0_LControlRoll";
	setAttr -k on ".bip_ring_0_LControlRoll";
	setAttr -k on ".bip_pinky_0_LControlRoll";
createNode nurbsSurface -n "lHandControlShape" -p "lHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 -5.2501105218107629e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 5.2501105218107629e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -5.2501105218107629e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 5.2501105218107629e-016 4.5
		-1.1498370615023457e-015 -2.3644395789680872 -4.5
		4.5 -2.3644395789680872 -3.3676674730115375e-016
		6.0860333699758185e-016 -2.3644395789680868 4.5
		-4.5 -2.3644395789680872 7.1390647300023646e-016
		-1.1498370615023457e-015 -2.3644395789680872 -4.5
		4.5 -2.3644395789680872 -3.3676674730115375e-016
		6.0860333699758185e-016 -2.3644395789680868 4.5
		-1.1498370615023457e-015 -4.7288791579361744 -4.5
		4.5 -4.7288791579361744 -2.1430611191891602e-016
		6.0860333699758185e-016 -4.7288791579361744 4.5
		-4.5 -4.7288791579361744 8.3636710838247419e-016
		-1.1498370615023457e-015 -4.7288791579361744 -4.5
		4.5 -4.7288791579361744 -2.1430611191891602e-016
		6.0860333699758185e-016 -4.7288791579361744 4.5
		-1.1498370615023457e-015 -7.0933187369042621 -4.5
		4.5 -7.0933187369042621 -9.1845476536678294e-017
		6.0860333699758185e-016 -7.0933187369042621 4.5
		-4.5 -7.0933187369042621 9.5882774376471192e-016
		-1.1498370615023457e-015 -7.0933187369042621 -4.5
		4.5 -7.0933187369042621 -9.1845476536678294e-017
		6.0860333699758185e-016 -7.0933187369042621 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -44.861325163558263 11.6628592286346 -29.680049361655428 ;
	setAttr ".rp" -type "double3" -2.4400899999999988 -1.9741600000000012 3.836564000000001 ;
	setAttr ".sp" -type "double3" -2.4400899999999988 -1.9741600000000012 3.836564000000001 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -2.4400899999999934 -1.974160000000003 3.8365639999999974 ;
	setAttr ".sp" -type "double3" -2.4400899999999934 -1.974160000000003 3.8365639999999974 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.4400899999999934 -1.974160000000003 3.8365639999999974 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.7890620083232288e-015 0 -1.5902773407317594e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999922 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_0_LControlShape" -p "Ref:bip_thumb_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -3.2307623243355035e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.2307623243355035e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -3.2307623243355035e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.2307623243355035e-016 2.25
		-5.7491853075117283e-016 -1.4550060000000011 -2.25
		2.25 -1.4550060000000011 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.4550060000000009 2.25
		-2.25 -1.4550060000000011 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.4550060000000011 -2.25
		2.25 -1.4550060000000011 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.4550060000000009 2.25
		-5.7491853075117283e-016 -2.9100120000000023 -2.25
		2.25 -2.9100120000000023 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.9100120000000023 2.25
		-2.25 -2.9100120000000023 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.9100120000000023 -2.25
		2.25 -2.9100120000000023 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.9100120000000023 2.25
		-5.7491853075117283e-016 -4.3650180000000036 -2.25
		2.25 -4.3650180000000036 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.3650180000000036 2.25
		-2.25 -4.3650180000000036 4.7941387188235596e-016
		-5.7491853075117283e-016 -4.3650180000000036 -2.25
		2.25 -4.3650180000000036 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.3650180000000036 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 27.712578196862587 7.9513867036587899e-016 1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" -6.6613381477509392e-016 -4.3650180000000152 -4.4408920985006262e-015 ;
	setAttr ".sp" -type "double3" -6.6613381477509392e-016 -4.3650180000000152 -4.4408920985006262e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -4.3650180000000107 1.9984014443252818e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -4.3650180000000107 1.9984014443252818e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -4.3650180000000107 1.9984014443252818e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 3.975693351829394e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_1_LControlShape" -p "Ref:bip_thumb_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3272479411815169e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3272479411815169e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3272479411815169e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3272479411815169e-016 2.25
		-5.7491853075117283e-016 -0.59773933333333373 -2.25
		2.25 -0.59773933333333373 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59773933333333362 2.25
		-2.25 -0.59773933333333373 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.59773933333333373 -2.25
		2.25 -0.59773933333333373 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59773933333333362 2.25
		-5.7491853075117283e-016 -1.1954786666666675 -2.25
		2.25 -1.1954786666666675 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1954786666666675 2.25
		-2.25 -1.1954786666666675 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1954786666666675 -2.25
		2.25 -1.1954786666666675 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1954786666666675 2.25
		-5.7491853075117283e-016 -1.7932180000000013 -2.25
		2.25 -1.7932180000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7932180000000013 2.25
		-2.25 -1.7932180000000013 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7932180000000013 -2.25
		2.25 -1.7932180000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7932180000000013 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -17.637271556210514 0 -1.5902773407317576e-015 ;
	setAttr ".rp" -type "double3" 5.1070259132757201e-015 -1.7932180000000049 -3.219646771412954e-015 ;
	setAttr ".sp" -type "double3" 5.1070259132757201e-015 -1.7932180000000049 -3.219646771412954e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.4424906541753444e-015 -1.7932180000000093 4.5519144009631418e-015 ;
	setAttr ".sp" -type "double3" 2.4424906541753444e-015 -1.7932180000000093 4.5519144009631418e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -1.7932180000000093 4.5519144009631418e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.951386703658788e-016 3.975693351829394e-016 -1.5902773407317576e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_2_LControlShape" -p "Ref:bip_thumb_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9469508047456443e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9469508047456443e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9469508047456443e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9469508047456443e-016 2.25
		-5.7491853075117283e-016 -0.87682869187611712 -2.25
		2.25 -0.87682869187611712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87682869187611701 2.25
		-2.25 -0.87682869187611712 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.87682869187611712 -2.25
		2.25 -0.87682869187611712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87682869187611701 2.25
		-5.7491853075117283e-016 -1.7536573837522342 -2.25
		2.25 -1.7536573837522342 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7536573837522342 2.25
		-2.25 -1.7536573837522342 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7536573837522342 -2.25
		2.25 -1.7536573837522342 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7536573837522342 2.25
		-5.7491853075117283e-016 -2.6304860756283515 -2.25
		2.25 -2.6304860756283515 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6304860756283515 2.25
		-2.25 -2.6304860756283515 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6304860756283515 -2.25
		2.25 -2.6304860756283515 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6304860756283515 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 172.63677314828823 77.620952548291484 163.77241713341476 ;
	setAttr ".rp" -type "double3" -0.75159400000000165 -6.8597430000000035 4.6006339999999986 ;
	setAttr ".sp" -type "double3" -0.75159400000000165 -6.8597430000000035 4.6006339999999986 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.75159400000000431 -6.8597429999999981 4.600634000000003 ;
	setAttr ".sp" -type "double3" -0.75159400000000431 -6.8597429999999981 4.600634000000003 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.7515940000000072 -11.068308808060372 2.9586850552692141 ;
	setAttr ".sp" -type "double3" -0.7515940000000072 -11.068308808060372 2.9586850552692141 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.75159400000000698 -6.859742999999991 4.600634000000003 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587959e-016 3.0811623476677833e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_0_LControlShape" -p "Ref:bip_index_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.6650444813943377e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.6650444813943377e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.6650444813943377e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.6650444813943377e-016 2.25
		-5.7491853075117283e-016 -1.2002293333333336 -2.25
		2.25 -1.2002293333333336 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2002293333333334 2.25
		-2.25 -1.2002293333333336 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.2002293333333336 -2.25
		2.25 -1.2002293333333336 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2002293333333334 2.25
		-5.7491853075117283e-016 -2.4004586666666672 -2.25
		2.25 -2.4004586666666672 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.4004586666666672 2.25
		-2.25 -2.4004586666666672 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.4004586666666672 -2.25
		2.25 -2.4004586666666672 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.4004586666666672 2.25
		-5.7491853075117283e-016 -3.6006880000000008 -2.25
		2.25 -3.6006880000000008 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.6006880000000008 2.25
		-2.25 -3.6006880000000008 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.6006880000000008 -2.25
		2.25 -3.6006880000000008 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.6006880000000008 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 53.651741467469925 -7.9513867036587919e-016 3.0811623476677818e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -3.6006880000000039 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -3.6006880000000039 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0 -3.6006880000000017 0 ;
	setAttr ".sp" -type "double3" 0 -3.6006880000000017 0 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -3.6006880000000017 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 -1.1927080055488188e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_1_LControlShape" -p "Ref:bip_index_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6747862356207104e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6747862356207104e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6747862356207104e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6747862356207104e-016 2.25
		-5.7491853075117283e-016 -0.75425666666666669 -2.25
		2.25 -0.75425666666666669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.75425666666666658 2.25
		-2.25 -0.75425666666666669 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.75425666666666669 -2.25
		2.25 -0.75425666666666669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.75425666666666658 2.25
		-5.7491853075117283e-016 -1.5085133333333334 -2.25
		2.25 -1.5085133333333334 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5085133333333334 2.25
		-2.25 -1.5085133333333334 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5085133333333334 -2.25
		2.25 -1.5085133333333334 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5085133333333334 2.25
		-5.7491853075117283e-016 -2.2627700000000002 -2.25
		2.25 -2.2627700000000002 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2627700000000002 2.25
		-2.25 -2.2627700000000002 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.2627700000000002 -2.25
		2.25 -2.2627700000000002 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2627700000000002 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" 4.4683620776351631 5.1684013573782159e-015 -2.3854160110976384e-015 ;
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -2.2627700000000104 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -2.2627700000000104 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -2.26277 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -2.26277 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -2.26277 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 1.5902773407317588e-015 -2.3854160110976384e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_2_LControlShape" -p "Ref:bip_index_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9530611902336586e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9530611902336586e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9530611902336586e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9530611902336586e-016 2.25
		-5.7491853075117283e-016 -0.87958056485680824 -2.25
		2.25 -0.87958056485680824 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87958056485680813 2.25
		-2.25 -0.87958056485680824 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.87958056485680824 -2.25
		2.25 -0.87958056485680824 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87958056485680813 2.25
		-5.7491853075117283e-016 -1.7591611297136165 -2.25
		2.25 -1.7591611297136165 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7591611297136165 2.25
		-2.25 -1.7591611297136165 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7591611297136165 -2.25
		2.25 -1.7591611297136165 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7591611297136165 2.25
		-5.7491853075117283e-016 -2.6387416945704247 -2.25
		2.25 -2.6387416945704247 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6387416945704247 2.25
		-2.25 -2.6387416945704247 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6387416945704247 -2.25
		2.25 -2.6387416945704247 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6387416945704247 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 177.16274577298242 68.239180779672196 155.91856420836012 ;
	setAttr ".rp" -type "double3" -0.71304800000000912 -6.783447000000006 1.9471980000000011 ;
	setAttr ".sp" -type "double3" -0.71304800000000912 -6.783447000000006 1.9471980000000011 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.71304800000001034 -6.7834470000000051 1.9471980000000038 ;
	setAttr ".sp" -type "double3" -0.71304800000001034 -6.7834470000000051 1.9471980000000038 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.71304800000001789 -11.915521572938751 0.13632998833908783 ;
	setAttr ".sp" -type "double3" -0.71304800000001789 -11.915521572938751 0.13632998833908783 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.71304800000001389 -6.783446999999998 1.9471980000000002 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036588008e-016 0 -8.4483483726374748e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999889 0.999999999999999 0.99999999999999922 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_0_LControlShape" -p "Ref:bip_middle_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -3.5007300761928197e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.5007300761928197e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -3.5007300761928197e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.5007300761928197e-016 2.25
		-5.7491853075117283e-016 -1.5765886666666671 -2.25
		2.25 -1.5765886666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.5765886666666669 2.25
		-2.25 -1.5765886666666671 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.5765886666666671 -2.25
		2.25 -1.5765886666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.5765886666666669 2.25
		-5.7491853075117283e-016 -3.1531773333333342 -2.25
		2.25 -3.1531773333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -3.1531773333333342 2.25
		-2.25 -3.1531773333333342 4.1818355419123709e-016
		-5.7491853075117283e-016 -3.1531773333333342 -2.25
		2.25 -3.1531773333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -3.1531773333333342 2.25
		-5.7491853075117283e-016 -4.7297660000000015 -2.25
		2.25 -4.7297660000000015 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.7297660000000015 2.25
		-2.25 -4.7297660000000015 4.7941387188235596e-016
		-5.7491853075117283e-016 -4.7297660000000015 -2.25
		2.25 -4.7297660000000015 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.7297660000000015 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 47.021043225179774 -7.9513867036587939e-016 1.9381505090168309e-015 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -4.7297660000000015 0 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -4.7297660000000015 0 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -4.7297660000000121 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -4.7297660000000121 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -4.7297660000000121 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587939e-016 3.1805546814635176e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_1_LControlShape" -p "Ref:bip_middle_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.0416549932159958e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0416549932159958e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0416549932159958e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0416549932159958e-016 2.25
		-5.7491853075117283e-016 -0.91947966666666714 -2.25
		2.25 -0.91947966666666714 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.91947966666666703 2.25
		-2.25 -0.91947966666666714 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.91947966666666714 -2.25
		2.25 -0.91947966666666714 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.91947966666666703 2.25
		-5.7491853075117283e-016 -1.8389593333333343 -2.25
		2.25 -1.8389593333333343 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8389593333333343 2.25
		-2.25 -1.8389593333333343 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8389593333333343 -2.25
		2.25 -1.8389593333333343 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8389593333333343 2.25
		-5.7491853075117283e-016 -2.7584390000000014 -2.25
		2.25 -2.7584390000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7584390000000014 2.25
		-2.25 -2.7584390000000014 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7584390000000014 -2.25
		2.25 -2.7584390000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7584390000000014 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 5.2483317621874406 -7.9513867036587939e-016 3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -2.7584389999999992 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -2.7584389999999992 0 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -2.7584389999999992 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -2.7584389999999992 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -2.7584389999999992 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 7.9513867036587939e-016 -7.9513867036587939e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_2_LControlShape" -p "Ref:bip_middle_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.0360172185995414e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0360172185995414e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0360172185995414e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0360172185995414e-016 2.25
		-5.7491853075117283e-016 -0.91694063870048081 -2.25
		2.25 -0.91694063870048081 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.9169406387004807 2.25
		-2.25 -0.91694063870048081 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.91694063870048081 -2.25
		2.25 -0.91694063870048081 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.9169406387004807 2.25
		-5.7491853075117283e-016 -1.8338812774009616 -2.25
		2.25 -1.8338812774009616 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8338812774009616 2.25
		-2.25 -1.8338812774009616 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8338812774009616 -2.25
		2.25 -1.8338812774009616 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8338812774009616 2.25
		-5.7491853075117283e-016 -2.7508219161014424 -2.25
		2.25 -2.7508219161014424 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7508219161014424 2.25
		-2.25 -2.7508219161014424 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7508219161014424 -2.25
		2.25 -2.7508219161014424 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7508219161014424 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -178.81833348200919 65.725762412256302 156.98195246087931 ;
	setAttr ".rp" -type "double3" -1.6810870000000013 -6.5766640000000027 -0.63978800000000113 ;
	setAttr ".sp" -type "double3" -1.6810870000000013 -6.5766640000000027 -0.63978800000000113 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.6810870000000002 -6.5766640000000134 -0.63978800000000291 ;
	setAttr ".sp" -type "double3" -1.6810870000000002 -6.5766640000000134 -0.63978800000000291 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -1.6810870000000004 -11.420577220613509 -2.3167979910348038 ;
	setAttr ".sp" -type "double3" -1.6810870000000004 -11.420577220613509 -2.3167979910348038 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.681087000000002 -6.5766640000000134 -0.63978800000000646 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317592e-015 1.5902773407317594e-015 5.9635400277440979e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_0_LControlShape" -p "Ref:bip_ring_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.7985695242686395e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.7985695242686395e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.7985695242686395e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.7985695242686395e-016 2.25
		-5.7491853075117283e-016 -1.2603636666666671 -2.25
		2.25 -1.2603636666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2603636666666669 2.25
		-2.25 -1.2603636666666671 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.2603636666666671 -2.25
		2.25 -1.2603636666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2603636666666669 2.25
		-5.7491853075117283e-016 -2.5207273333333342 -2.25
		2.25 -2.5207273333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.5207273333333342 2.25
		-2.25 -2.5207273333333342 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.5207273333333342 -2.25
		2.25 -2.5207273333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.5207273333333342 2.25
		-5.7491853075117283e-016 -3.7810910000000013 -2.25
		2.25 -3.7810910000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.7810910000000013 2.25
		-2.25 -3.7810910000000013 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.7810910000000013 -2.25
		2.25 -3.7810910000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.7810910000000013 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 34.561520760706976 7.9513867036587899e-016 -2.9817700138720464e-015 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-015 -3.7810910000000009 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-015 -3.7810910000000009 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 -3.7810909999999964 0 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 -3.7810909999999964 0 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -3.7810909999999964 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317576e-015 -2.3854160110976364e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_1_LControlShape" -p "Ref:bip_ring_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.7751911052243937e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7751911052243937e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7751911052243937e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7751911052243937e-016 2.25
		-5.7491853075117283e-016 -0.79947499999999982 -2.25
		2.25 -0.79947499999999982 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79947499999999971 2.25
		-2.25 -0.79947499999999982 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.79947499999999982 -2.25
		2.25 -0.79947499999999982 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79947499999999971 2.25
		-5.7491853075117283e-016 -1.5989499999999996 -2.25
		2.25 -1.5989499999999996 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5989499999999996 2.25
		-2.25 -1.5989499999999996 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5989499999999996 -2.25
		2.25 -1.5989499999999996 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5989499999999996 2.25
		-5.7491853075117283e-016 -2.3984249999999996 -2.25
		2.25 -2.3984249999999996 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3984249999999996 2.25
		-2.25 -2.3984249999999996 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3984249999999996 -2.25
		2.25 -2.3984249999999996 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3984249999999996 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 16.826288233507857 7.9513867036587899e-016 -1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.3984249999999978 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.3984249999999978 1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -2.3984249999999925 1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -2.3984249999999925 1.2434497875801753e-014 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -2.3984249999999925 1.2434497875801753e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587899e-016 -7.9513867036587899e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_2_LControlShape" -p "Ref:bip_ring_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9894989056832096e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9894989056832096e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9894989056832096e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9894989056832096e-016 2.25
		-5.7491853075117283e-016 -0.89599065302889125 -2.25
		2.25 -0.89599065302889125 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.89599065302889114 2.25
		-2.25 -0.89599065302889125 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.89599065302889125 -2.25
		2.25 -0.89599065302889125 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.89599065302889114 2.25
		-5.7491853075117283e-016 -1.7919813060577825 -2.25
		2.25 -1.7919813060577825 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7919813060577825 2.25
		-2.25 -1.7919813060577825 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7919813060577825 -2.25
		2.25 -1.7919813060577825 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7919813060577825 2.25
		-5.7491853075117283e-016 -2.6879719590866737 -2.25
		2.25 -2.6879719590866737 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6879719590866737 2.25
		-2.25 -2.6879719590866737 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6879719590866737 -2.25
		2.25 -2.6879719590866737 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6879719590866737 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 169.75574330747753 58.305358260036833 139.78207895163519 ;
	setAttr ".rp" -type "double3" -2.6397050000000037 -6.5528300000000073 -2.6416590000000051 ;
	setAttr ".sp" -type "double3" -2.6397050000000037 -6.5528300000000073 -2.6416590000000051 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -2.6397050000000051 -6.552830000000001 -2.6416590000000078 ;
	setAttr ".sp" -type "double3" -2.6397050000000051 -6.552830000000001 -2.6416590000000078 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -2.6397050000000069 -10.682635645404888 -3.9908966600734996 ;
	setAttr ".sp" -type "double3" -2.6397050000000069 -10.682635645404888 -3.9908966600734996 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.6397050000000069 -6.5528299999999939 -2.6416590000000113 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317594e-015 1.5902773407317594e-015 3.9756933518293984e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_0_LControlShape" -p "Ref:bip_pinky_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.231576405146523e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.231576405146523e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.231576405146523e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.231576405146523e-016 2.25
		-5.7491853075117283e-016 -1.0050126666666672 -2.25
		2.25 -1.0050126666666672 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.005012666666667 2.25
		-2.25 -1.0050126666666672 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.0050126666666672 -2.25
		2.25 -1.0050126666666672 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.005012666666667 2.25
		-5.7491853075117283e-016 -2.0100253333333344 -2.25
		2.25 -2.0100253333333344 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.0100253333333344 2.25
		-2.25 -2.0100253333333344 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.0100253333333344 -2.25
		2.25 -2.0100253333333344 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.0100253333333344 2.25
		-5.7491853075117283e-016 -3.0150380000000014 -2.25
		2.25 -3.0150380000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.0150380000000014 2.25
		-2.25 -3.0150380000000014 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.0150380000000014 -2.25
		2.25 -3.0150380000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.0150380000000014 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 31.245420931704135 0 0 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-016 -3.0150379999999846 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-016 -3.0150379999999846 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.3266726846886741e-016 -3.0150379999999792 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -8.3266726846886741e-016 -3.0150379999999792 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.3266726846886741e-016 -3.0150379999999792 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 1.5902773407317584e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_1_LControlShape" -p "Ref:bip_pinky_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3901842640014671e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3901842640014671e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3901842640014671e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3901842640014671e-016 2.25
		-5.7491853075117283e-016 -0.62608333333333344 -2.25
		2.25 -0.62608333333333344 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.62608333333333333 2.25
		-2.25 -0.62608333333333344 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.62608333333333344 -2.25
		2.25 -0.62608333333333344 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.62608333333333333 2.25
		-5.7491853075117283e-016 -1.2521666666666669 -2.25
		2.25 -1.2521666666666669 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2521666666666669 2.25
		-2.25 -1.2521666666666669 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2521666666666669 -2.25
		2.25 -1.2521666666666669 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2521666666666669 2.25
		-5.7491853075117283e-016 -1.8782500000000004 -2.25
		2.25 -1.8782500000000004 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8782500000000004 2.25
		-2.25 -1.8782500000000004 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8782500000000004 -2.25
		2.25 -1.8782500000000004 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8782500000000004 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 20.546889839454966 0 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" 1.3322676295501878e-015 -1.8782499999999924 0 ;
	setAttr ".sp" -type "double3" 1.3322676295501878e-015 -1.8782499999999924 0 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.3314683517128287e-015 -1.8782499999999906 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 2.3314683517128287e-015 -1.8782499999999906 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.3314683517128287e-015 -1.8782499999999906 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 0 -1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_2_LControlShape" -p "Ref:bip_pinky_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6609423064767423e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6609423064767423e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6609423064767423e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6609423064767423e-016 2.25
		-5.7491853075117283e-016 -0.7480219152532549 -2.25
		2.25 -0.7480219152532549 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.74802191525325479 2.25
		-2.25 -0.7480219152532549 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.7480219152532549 -2.25
		2.25 -0.7480219152532549 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.74802191525325479 2.25
		-5.7491853075117283e-016 -1.4960438305065098 -2.25
		2.25 -1.4960438305065098 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4960438305065098 2.25
		-2.25 -1.4960438305065098 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4960438305065098 -2.25
		2.25 -1.4960438305065098 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4960438305065098 2.25
		-5.7491853075117283e-016 -2.2440657457597646 -2.25
		2.25 -2.2440657457597646 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2440657457597646 2.25
		-2.25 -2.2440657457597646 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.2440657457597646 -2.25
		2.25 -2.2440657457597646 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2440657457597646 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "lHandControl_pointConstraint1" -p "lHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_LW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 24.437471629238594 39.663842815994542 0.096417170862964419 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lHandControlGroup_parentConstraint1" -p "lHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_LFKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "likHandControlW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 -3.5466593684521448 
		-3.315286789720767e-015 ;
	setAttr ".tg[0].tor" -type "double3" -8.7465253740246703e-015 -2.5444437451708122e-014 
		-2.5444437451708122e-014 ;
	setAttr ".tg[1].tot" -type "double3" -1.7958251063987518e-007 -3.5466593684521386 
		-1.3565103676313051e-014 ;
	setAttr ".tg[1].tor" -type "double3" -5.5659706925611528e-015 0 1.5902773407317584e-015 ;
	setAttr ".lr" -type "double3" -24.480389550997668 -1.5838445195536348 19.272777093960666 ;
	setAttr ".rst" -type "double3" 12.147755386004738 -3.691412456179485 11.916081200691451 ;
	setAttr ".rsrr" -type "double3" -24.65625488969587 -10.309966981810231 20.965166270130887 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lkneeControl" -p "main";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.4335254988441068 21.708509813730828 -0.17027991994960784 ;
	setAttr ".sp" -type "double3" 7.4335254988441068 21.708509813730828 -0.17027991994960784 ;
	setAttr ".hdl" -type "double3" 7.4335254988441068 21.708509813730828 -0.17027991994960784 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "lkneeControlShape" -p "lkneeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		7.4335254988441068 21.708509813730828 -1.1702799199496079
		7.4335254988441068 20.708509813730828 -0.17027991994960784
		7.4335254988441068 21.708509813730828 0.82972008005039211
		7.4335254988441068 22.708509813730828 -0.17027991994960773
		7.4335254988441068 21.708509813730828 -1.1702799199496079
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "lFootControl" -ln "lFootControl" -at "message";
	addAttr -ci true -sn "ankleLift" -ln "ankleLift" -min 0 -max 120 -at "double";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 24.576349788397355 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 8.5225681975941274 5.2999530375109671 -0.20683547516071155 ;
	setAttr ".rpt" -type "double3" -0.85810167946427585 0 -3.5258448739844233 ;
	setAttr ".sp" -type "double3" 8.5225681975941274 5.2999530375109671 -0.20683547516071155 ;
	setAttr ".hdl" -type "double3" 8.5225681975941274 5.2999530375109671 -0.20683547516071155 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
	setAttr -k on ".ankleLift";
createNode nurbsSurface -n "lFootControlShape" -p "lFootControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		6.6560375004300747 0.36395262010884188 -4.2289234502378008
		6.6560375004300747 0.36395262010884188 5.4718879725001308
		6.6560375004300747 10.235953454913092 5.4718879725001308
		6.6560375004300747 10.235953454913092 -4.2289234502378008
		6.6560375004300747 0.36395262010884188 -4.2289234502378026
		10.389098894758181 0.36395262010884188 -4.2289234502378008
		10.389098894758181 0.36395262010884188 5.4718879725001308
		10.389098894758181 10.235953454913092 5.4718879725001308
		10.389098894758181 10.235953454913092 -4.2289234502378008
		10.389098894758181 0.36395262010884188 -4.2289234502378026
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 7.6644665181298519 5.2999530375109707 -3.7326803491451321 ;
	setAttr ".sp" -type "double3" 7.6644665181298519 5.2999530375109707 -3.7326803491451321 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 7.6644665181298519 5.2999530375109707 -3.7326803491451321 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 58.731824538644005 1.4944904031740267 2.4592928287099269 ;
	setAttr ".rp" -type "double3" 1.6016380066652403e-007 -8.5512755542024887 -1.0034089472619021 ;
	setAttr ".sp" -type "double3" 1.6016380066652403e-007 -8.5512755542024887 -1.0034089472619021 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" 1.6016380066652403e-007 -8.5512755542024887 -1.0034089472619021 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" 0 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -3.3075054259631056 -1.1687182267459945e-016 -0.14549314260131929 ;
	setAttr ".sp" -type "double3" -3.3075054259631056 -1.1687182267459945e-016 -0.14549314260131929 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -3.3075054259631056 -1.1687182267459945e-016 -0.14549314260131929 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" 0 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" 7.429739713280739 1.7163790280066146e-016 0.73617748416443618 ;
	setAttr ".sp" -type "double3" 7.429739713280739 1.7163790280066146e-016 0.73617748416443618 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 7.429739713280739 1.7163790280066146e-016 0.73617748416443618 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" -3.5311250384401269e-031 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -3.9651926794729659 2.2269672392420144e-015 -10.834798591834586 ;
	setAttr ".sp" -type "double3" -3.9651926794729659 2.2269672392420144e-015 -10.834798591834586 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -3.9651926794729659 2.2269672392420144e-015 -10.834798591834586 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -3.5311250384401269e-031 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -0.19694464246592247 0.32833915948867459 15.180985080810668 ;
	setAttr ".sp" -type "double3" -0.19694464246592247 0.32833915948867459 15.180985080810668 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -0.19694464246592247 0.32833915948867459 15.180985080810668 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000057 -2.8775425125534784 0 ;
	setAttr ".rp" -type "double3" 0.039902857078343512 0.84598481743387244 -4.9368704888112607 ;
	setAttr ".sp" -type "double3" 0.039902857078343512 0.84598481743387244 -4.9368704888112607 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.039902857078343512 0.84598481743387244 -4.9368704888112607 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 31.300256028924583 0 0 ;
	setAttr ".rp" -type "double3" 5.3290705182007514e-015 6.7853994482383655 4.1256290605884294 ;
	setAttr ".sp" -type "double3" 5.3290705182007514e-015 6.7853994482383655 4.1256290605884294 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 6.7853994482383655 4.1256290605884294 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.6686286086970687 -0.46712166495885221 0.26879833546023885 ;
	setAttr ".r" -type "double3" 61.060292473969248 -12.478450226502549 -21.344273154985586 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 6.7498287272087829 0.013003912838538415 -3.6793967330367763 ;
	setAttr ".rpt" -type "double3" 0.91879970698031244 0.45411775271233412 3.4105983784971152 ;
	setAttr ".sp" -type "double3" 6.7498287255249707 0.013003913136831358 -3.6793967323422319 ;
	setAttr ".spt" -type "double3" 0 3.469446951953615e-018 1.7763568394002497e-015 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode poleVectorConstraint -n "Ref:bip_foot_LIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_foot_LIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "lkneeControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 1.1754863645729747 -7.5435373561318677 -10.985533303052351 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3613163925952341 0.77885869544541175 -11.888759865923499 ;
	setAttr ".r" -type "double3" -1.0173979308305419e-015 -27.45389020539551 -3.0316363643097565e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 8.8853895259733608 0.067126134697483422 3.2177987410859914 ;
	setAttr ".rpt" -type "double3" -2.4841701372511182 0 3.7340906498535782 ;
	setAttr ".sp" -type "double3" 8.8853895122766922 0.067126145349134525 3.2177987280861111 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 1.387778780781446e-017 0 ;
	setAttr ".pv" -type "double3" -0.052161515370124589 1.7089130160431143 1.0377357466680612 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000057 -2.8775425125534784 0 ;
	setAttr ".rp" -type "double3" -0.15704178538758118 1.1743239769225471 10.244114591999409 ;
	setAttr ".sp" -type "double3" -0.15704178538758118 1.1743239769225471 10.244114591999409 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -0.15704178538758118 1.1743239769225471 10.244114591999409 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000057 -5.649800061504203e-030 2.8775425125534815 ;
	setAttr ".rp" -type "double3" 0.20798566634480986 -4.9326488243025839 -0.84598481743387699 ;
	setAttr ".sp" -type "double3" 0.20798566634480986 -4.9326488243025839 -0.84598481743387699 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 0.20798566634480986 -4.9326488243025839 -0.84598481743387699 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8820552053529611 0.42658779897403215 -7.4361708561787703 ;
	setAttr ".r" -type "double3" -1.0956987234281442e-015 -27.453890205395499 -1.9909774602678563e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 5.3538160991527208 0.41939705022799256 4.3881605142417301 ;
	setAttr ".rpt" -type "double3" -2.6260292201648889 0 1.9741093845537407 ;
	setAttr ".sp" -type "double3" 5.3538160991527208 0.41939705022799256 4.3881605142417293 ;
	setAttr ".spt" -type "double3" 8.8817841970012543e-016 0 -8.8817841970012513e-016 ;
	setAttr ".pv" -type "double3" -1.9974782298886251 9.605053303081095e-009 -0.10040279438844812 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode orientConstraint -n "lReverseToeWiggle_orientConstraint1" -p "lReverseToeWiggle";
	addAttr -ci true -k true -sn "w0" -ln "lToeControlW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 90.000000000000057 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000057 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" -0.15704178538757851 1.1743239769225482 10.244114591999407 ;
	setAttr ".r" -type "double3" -9.0396055365117476e-016 -2.8775425125534739 2.9386434800941357e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lToeControl" -p "lToeControlZeroGroup";
	addAttr -ci true -sn "lToeControl" -ln "lToeControl" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "lToeControlShape" -p "lToeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-1.8665306971640523 -0.90161045816363616 -0.41949320148258806
		-1.8665306971640527 -0.90161045816363572 4.7599929997701027
		-1.866530697164053 0.90161045816363616 4.7599929997701018
		-1.8665306971640525 0.90161045816363616 -0.41949320148258806
		-1.8665306971640523 -0.90161045816363572 -0.41949320148258851
		1.866530697164053 -0.90161045816363616 -0.41949320148258806
		1.8665306971640525 -0.90161045816363572 4.7599929997701027
		1.8665306971640523 0.90161045816363616 4.7599929997701018
		1.8665306971640527 0.90161045816363616 -0.41949320148258806
		1.866530697164053 -0.90161045816363572 -0.41949320148258851
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "lReverseControlZeroGroup_parentConstraint1" -p "lReverseControlZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "lFootControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 3.5527136788005009e-015 
		2.5193179718594079e-015 ;
	setAttr ".tg[0].tor" -type "double3" -58.699743971075485 -2.0955553205360245e-006 
		0 ;
	setAttr ".lr" -type "double3" -58.699743971075485 24.576347692842038 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -58.699743971075485 24.576347692842038 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.13799760994264809 8.701500422057542 -1.8136235261181224 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.33397515560046 10.3099669818102 -20.96516627013084 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" -3.6295371469208249e-005 17.670930314127716 5.0766117056788573e-006 ;
	setAttr ".r" -type "double3" 4.4674317740742096e-013 -2.5937459336008721e-018 4.1177628317614121e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -25.322279734095421 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" 2.3717933164135729e-005 15.175534544853107 9.8028085595558423e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector6" -p "Ref:bip_lowerArm_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_upperArm_RIK_pointConstraint1" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_RW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -14.204199999999995 69.434900794128211 -5.9300896958018612 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -16.793398919895083 2.2968670592208795 3.2877412526343406 ;
	setAttr ".sp" -type "double3" -16.79339891989509 2.2968670592208795 3.2877412526343397 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "Ref:bip_hand_RIKikHandle_pointConstraint1" -p "Ref:bip_hand_RIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "rikHandControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -7.6441010801027716 37.366933734908393 -3.1913240484273144 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "Ref:bip_hand_RIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_hand_RIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "rElbowControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -6.3565999999999985 -16.486800000000017 -0.20209000000001165 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -24.437499999997847 39.663800794129273 0.096417204207028595 ;
	setAttr ".sp" -type "double3" -24.437499999997847 39.663800794129273 0.096417204207028595 ;
createNode parentConstraint -n "rikHandControlGroup_parentConstraint1" -p "rikHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "UpperbodyControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -24.437499999997847 -1.1986532058707202 3.1929222042070289 ;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-015 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 6.9944457547449801 36.873249456513186 -12.578936681809129 ;
	setAttr ".rp" -type "double3" -31.431945754742827 2.7905513376160851 12.675353886016158 ;
	setAttr ".sp" -type "double3" -31.431945754742827 2.7905513376160851 12.675353886016158 ;
createNode transform -n "rikHandControl" -p "rikHandControlWeaponGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 7.6035249865229062 -19.412179019748464 0.27823387169494929 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -36.431077512361284 -28.438381048879442 -5.8696567676986984 ;
	setAttr ".rpt" -type "double3" -2.6043932289044465 50.641111406243994 18.266776782019907 ;
	setAttr ".sp" -type "double3" -36.431077512361284 -28.43838104887945 -5.8696567676986993 ;
	setAttr ".spt" -type "double3" 0 7.1054273576010011e-015 8.8817841970012513e-016 ;
	setAttr ".hdl" -type "double3" -36.431077512361284 -28.43838104887945 -5.8696567676986993 ;
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\"-objs %1\" ) #;";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\"-objs %1\" ) #;";
createNode nurbsSurface -n "rikHandControlShape" -p "rikHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-38.431077512361277 -30.887870791662621 -8.3191465104818771
		-38.431077512361277 -30.887870791662621 -3.4201670249155223
		-38.431077512361277 -25.988891306096264 -3.4201670249155223
		-38.431077512361277 -25.988891306096264 -8.3191465104818771
		-38.431077512361277 -30.887870791662621 -8.3191465104818789
		-34.431077512361277 -30.887870791662621 -8.3191465104818771
		-34.431077512361277 -30.887870791662621 -3.4201670249155218
		-34.431077512361277 -25.988891306096264 -3.4201670249155223
		-34.431077512361277 -25.988891306096264 -8.3191465104818789
		-34.431077512361277 -30.887870791662621 -8.3191465104818789
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode orientConstraint -n "rikHandControl_orientConstraint1" -p "rikHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_RW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 155.51960884752705 1.5834562113650954 -19.272704270102977 ;
	setAttr ".rsrr" -type "double3" 155.34374317178552 10.31002171605857 -20.965177101457343 ;
	setAttr -k on ".w0";
createNode transform -n "rElbowControl" -p "main";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -20.560799999999993 52.948100794128194 -6.1321796958018728 ;
	setAttr ".sp" -type "double3" -20.560799999999993 52.948100794128194 -6.1321796958018728 ;
	setAttr ".hdl" -type "double3" -20.560799999999993 52.948100794128194 -6.1321796958018728 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "rElbowControlShape" -p "rElbowControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-20.560799999999993 52.948100794128194 -7.1321796958018728
		-20.560799999999993 51.948100794128194 -6.1321796958018728
		-20.560799999999993 52.948100794128194 -5.1321796958018728
		-20.560799999999993 53.948100794128194 -6.1321796958018728
		-20.560799999999993 52.948100794128194 -7.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" 155.34374511030418 10.309966981810254 -20.965166270130851 ;
	setAttr ".rp" -type "double3" -24.437499999999986 39.663800794128193 0.096417204198114392 ;
	setAttr ".sp" -type "double3" -24.437499999999986 39.663800794128193 0.096417204198114392 ;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -24.437499999999982 43.2104379927382 0.096417204198115947 ;
	setAttr ".rpt" -type "double3" -9.0812518369439452 -72.465169872517819 21.926220966264392 ;
	setAttr ".sp" -type "double3" -24.437499999999982 43.210437992738207 0.096417204198115947 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
createNode transform -n "sub_space_grp_R" -p "rHandControlGroup";
	setAttr ".rp" -type "double3" -24.437500000001432 39.663800794128214 0.096417204197999595 ;
	setAttr ".sp" -type "double3" -24.437500000001432 39.663800794128214 0.096417204197999595 ;
createNode transform -n "rHandControl" -p "sub_space_grp_R";
	addAttr -ci true -k true -sn "bip_thumb_0_RControlRoll" -ln "bip_thumb_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_index_0_RControlRoll" -ln "bip_index_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_middle_0_RControlRoll" -ln "bip_middle_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_ring_0_RControlRoll" -ln "bip_ring_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_pinky_0_RControlRoll" -ln "bip_pinky_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.9756933518293969e-016 1.5902773407317584e-015 -3.1805546814635168e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 0.51914958725781912 3.8574387455518795 -1.6883868130156645 ;
	setAttr ".dh" yes;
	setAttr -k on ".bip_thumb_0_RControlRoll";
	setAttr -k on ".bip_index_0_RControlRoll";
	setAttr -k on ".bip_middle_0_RControlRoll";
	setAttr -k on ".bip_ring_0_RControlRoll";
	setAttr -k on ".bip_pinky_0_RControlRoll";
createNode nurbsSurface -n "rHandControlShape" -p "rHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 5.2500777038518592e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -5.2500777038518592e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 5.2500777038518592e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -5.2500777038518592e-016 4.5
		-1.1498370615023457e-015 2.3644247990733382 -4.5
		4.5 2.3644247990733382 -3.3676674730115375e-016
		6.0860333699758185e-016 2.3644247990733378 4.5
		-4.5 2.3644247990733382 7.1390647300023646e-016
		-1.1498370615023457e-015 2.3644247990733382 -4.5
		4.5 2.3644247990733382 -3.3676674730115375e-016
		6.0860333699758185e-016 2.3644247990733378 4.5
		-1.1498370615023457e-015 4.7288495981466765 -4.5
		4.5 4.7288495981466765 -2.1430611191891602e-016
		6.0860333699758185e-016 4.7288495981466765 4.5
		-4.5 4.7288495981466765 8.3636710838247419e-016
		-1.1498370615023457e-015 4.7288495981466765 -4.5
		4.5 4.7288495981466765 -2.1430611191891602e-016
		6.0860333699758185e-016 4.7288495981466765 4.5
		-1.1498370615023457e-015 7.0932743972200143 -4.5
		4.5 7.0932743972200143 -9.1845476536678294e-017
		6.0860333699758185e-016 7.0932743972200143 4.5
		-4.5 7.0932743972200143 9.5882774376471192e-016
		-1.1498370615023457e-015 7.0932743972200143 -4.5
		4.5 7.0932743972200143 -9.1845476536678294e-017
		6.0860333699758185e-016 7.0932743972200143 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -44.861325163558263 11.662859228634591 -29.680049361655424 ;
	setAttr ".rp" -type "double3" 2.4401389999999927 1.9741210000000065 -3.8365910000000065 ;
	setAttr ".sp" -type "double3" 2.4401389999999927 1.9741210000000065 -3.8365910000000065 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.4401389999999896 1.9741210000000056 -3.8365910000000132 ;
	setAttr ".sp" -type "double3" 2.4401389999999896 1.9741210000000056 -3.8365910000000132 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.4401389999999896 1.9741210000000056 -3.8365910000000132 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.951386703658788e-016 7.9513867036587919e-016 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_0_RControlShape" -p "Ref:bip_thumb_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 3.2307527027241712e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.2307527027241712e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 3.2307527027241712e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.2307527027241712e-016 2.25
		-5.7491853075117283e-016 1.45500166681148 -2.25
		2.25 1.45500166681148 -1.6838337365057687e-016
		3.0430166849879092e-016 1.4550016668114798 2.25
		-2.25 1.45500166681148 3.5695323650011823e-016
		-5.7491853075117283e-016 1.45500166681148 -2.25
		2.25 1.45500166681148 -1.6838337365057687e-016
		3.0430166849879092e-016 1.4550016668114798 2.25
		-5.7491853075117283e-016 2.91000333362296 -2.25
		2.25 2.91000333362296 -1.0715305595945801e-016
		3.0430166849879092e-016 2.91000333362296 2.25
		-2.25 2.91000333362296 4.1818355419123709e-016
		-5.7491853075117283e-016 2.91000333362296 -2.25
		2.25 2.91000333362296 -1.0715305595945801e-016
		3.0430166849879092e-016 2.91000333362296 2.25
		-5.7491853075117283e-016 4.3650050004344401 -2.25
		2.25 4.3650050004344401 -4.5922738268339147e-017
		3.0430166849879092e-016 4.3650050004344401 2.25
		-2.25 4.3650050004344401 4.7941387188235596e-016
		-5.7491853075117283e-016 4.3650050004344401 -2.25
		2.25 4.3650050004344401 -4.5922738268339147e-017
		3.0430166849879092e-016 4.3650050004344401 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 27.712578196862541 0 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" -6.0634199997577909e-005 4.3650050000000098 -1.0777599998679221e-005 ;
	setAttr ".sp" -type "double3" -6.0634199997577909e-005 4.3650050000000098 -1.0777599998679221e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -6.0634199998244043e-005 4.365005000000016 -1.077759999668082e-005 ;
	setAttr ".sp" -type "double3" -6.0634199998244043e-005 4.365005000000016 -1.077759999668082e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.0634199998244043e-005 4.365005000000016 -1.077759999668082e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.9574633657014459e-015 7.9513867036587939e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_1_RControlShape" -p "Ref:bip_thumb_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3272494215039897e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3272494215039897e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3272494215039897e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3272494215039897e-016 2.25
		-5.7491853075117283e-016 0.59774000001130745 -2.25
		2.25 0.59774000001130745 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59774000001130734 2.25
		-2.25 0.59774000001130745 3.5695323650011823e-016
		-5.7491853075117283e-016 0.59774000001130745 -2.25
		2.25 0.59774000001130745 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59774000001130734 2.25
		-5.7491853075117283e-016 1.1954800000226149 -2.25
		2.25 1.1954800000226149 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1954800000226149 2.25
		-2.25 1.1954800000226149 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1954800000226149 -2.25
		2.25 1.1954800000226149 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1954800000226149 2.25
		-5.7491853075117283e-016 1.7932200000339225 -2.25
		2.25 1.7932200000339225 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7932200000339225 2.25
		-2.25 1.7932200000339225 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7932200000339225 -2.25
		2.25 1.7932200000339225 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7932200000339225 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -17.637271556210457 -1.5902773407317576e-015 0 ;
	setAttr ".rp" -type "double3" 4.0444900000213835e-006 1.793220000000006 1.026130000669756e-005 ;
	setAttr ".sp" -type "double3" 4.0444900000213835e-006 1.793220000000006 1.026130000669756e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 4.0444900002434281e-006 1.7932200000000069 1.0261300001701557e-005 ;
	setAttr ".sp" -type "double3" 4.0444900002434281e-006 1.7932200000000069 1.0261300001701557e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.0444900002434281e-006 1.7932200000000069 1.0261300001701557e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.8823776800763094e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1.0000000000000011 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_2_RControlShape" -p "Ref:bip_thumb_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9469631370790546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9469631370790546e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9469631370790546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9469631370790546e-016 2.25
		-5.7491853075117283e-016 0.87683424586533221 -2.25
		2.25 0.87683424586533221 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8768342458653321 2.25
		-2.25 0.87683424586533221 3.5695323650011823e-016
		-5.7491853075117283e-016 0.87683424586533221 -2.25
		2.25 0.87683424586533221 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8768342458653321 2.25
		-5.7491853075117283e-016 1.7536684917306644 -2.25
		2.25 1.7536684917306644 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7536684917306644 2.25
		-2.25 1.7536684917306644 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7536684917306644 -2.25
		2.25 1.7536684917306644 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7536684917306644 2.25
		-5.7491853075117283e-016 2.6305027375959966 -2.25
		2.25 2.6305027375959966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6305027375959966 2.25
		-2.25 2.6305027375959966 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6305027375959966 -2.25
		2.25 2.6305027375959966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6305027375959966 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 172.63677314828828 77.620952548291584 163.77241713341485 ;
	setAttr ".rp" -type "double3" 0.75155099999999031 6.8596830000000066 -4.6006550000000068 ;
	setAttr ".sp" -type "double3" 0.75155099999999031 6.8596830000000066 -4.6006550000000068 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.75155099999999209 6.8596830000000057 -4.6006550000000139 ;
	setAttr ".sp" -type "double3" 0.75155099999999209 6.8596830000000057 -4.6006550000000139 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.75154799566999198 11.068264514890723 -2.9586641937906033 ;
	setAttr ".sp" -type "double3" 0.75154799566999198 11.068264514890723 -2.9586641937906033 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.75155099999999297 6.8596830000000057 -4.600655000000021 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587919e-016 4.2738703532166017e-015 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000007 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_0_RControlShape" -p "Ref:bip_index_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.6650341195475578e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.6650341195475578e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.6650341195475578e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.6650341195475578e-016 2.25
		-5.7491853075117283e-016 1.2002246667724039 -2.25
		2.25 1.2002246667724039 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2002246667724037 2.25
		-2.25 1.2002246667724039 3.5695323650011823e-016
		-5.7491853075117283e-016 1.2002246667724039 -2.25
		2.25 1.2002246667724039 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2002246667724037 2.25
		-5.7491853075117283e-016 2.4004493335448078 -2.25
		2.25 2.4004493335448078 -1.0715305595945801e-016
		3.0430166849879092e-016 2.4004493335448078 2.25
		-2.25 2.4004493335448078 4.1818355419123709e-016
		-5.7491853075117283e-016 2.4004493335448078 -2.25
		2.25 2.4004493335448078 -1.0715305595945801e-016
		3.0430166849879092e-016 2.4004493335448078 2.25
		-5.7491853075117283e-016 3.6006740003172117 -2.25
		2.25 3.6006740003172117 -4.5922738268339147e-017
		3.0430166849879092e-016 3.6006740003172117 2.25
		-2.25 3.6006740003172117 4.7941387188235596e-016
		-5.7491853075117283e-016 3.6006740003172117 -2.25
		2.25 3.6006740003172117 -4.5922738268339147e-017
		3.0430166849879092e-016 3.6006740003172117 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 53.651741467469961 0 -1.7890620083232288e-015 ;
	setAttr ".rp" -type "double3" 5.1146699977522303e-006 3.6006740000000077 4.7520400009659625e-005 ;
	setAttr ".sp" -type "double3" 5.1146699977522303e-006 3.6006740000000077 4.7520400009659625e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 5.1146699977522303e-006 3.6006740000000015 4.7520400009659625e-005 ;
	setAttr ".sp" -type "double3" 5.1146699977522303e-006 3.6006740000000015 4.7520400009659625e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.1146699977522303e-006 3.6006740000000015 4.7520400009659625e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 0 -7.9513867036587959e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_1_RControlShape" -p "Ref:bip_index_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6748143616607868e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6748143616607868e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6748143616607868e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6748143616607868e-016 2.25
		-5.7491853075117283e-016 0.75426933350902747 -2.25
		2.25 0.75426933350902747 -1.6838337365057687e-016
		3.0430166849879092e-016 0.75426933350902736 2.25
		-2.25 0.75426933350902747 3.5695323650011823e-016
		-5.7491853075117283e-016 0.75426933350902747 -2.25
		2.25 0.75426933350902747 -1.6838337365057687e-016
		3.0430166849879092e-016 0.75426933350902736 2.25
		-5.7491853075117283e-016 1.5085386670180549 -2.25
		2.25 1.5085386670180549 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5085386670180549 2.25
		-2.25 1.5085386670180549 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5085386670180549 -2.25
		2.25 1.5085386670180549 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5085386670180549 2.25
		-5.7491853075117283e-016 2.2628080005270825 -2.25
		2.25 2.2628080005270825 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2628080005270825 2.25
		-2.25 2.2628080005270825 4.7941387188235596e-016
		-5.7491853075117283e-016 2.2628080005270825 -2.25
		2.25 2.2628080005270825 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2628080005270825 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" 4.4683620776354243 3.1805546814635152e-015 0 ;
	setAttr ".rp" -type "double3" -1.6237999999724195e-005 2.2628079999999819 -4.606189999201149e-005 ;
	setAttr ".sp" -type "double3" -1.6237999999724195e-005 2.2628079999999819 -4.606189999201149e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.6237999996171482e-005 2.2628079999999748 -4.6061899988458777e-005 ;
	setAttr ".sp" -type "double3" -1.6237999996171482e-005 2.2628079999999748 -4.6061899988458777e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.6237999996171482e-005 2.2628079999999748 -4.6061899988458777e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635152e-015 1.9878466759146964e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_2_RControlShape" -p "Ref:bip_index_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9530898639482256e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9530898639482256e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9530898639482256e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9530898639482256e-016 2.25
		-5.7491853075117283e-016 0.87959347834983215 -2.25
		2.25 0.87959347834983215 -1.6838337365057687e-016
		3.0430166849879092e-016 0.87959347834983204 2.25
		-2.25 0.87959347834983215 3.5695323650011823e-016
		-5.7491853075117283e-016 0.87959347834983215 -2.25
		2.25 0.87959347834983215 -1.6838337365057687e-016
		3.0430166849879092e-016 0.87959347834983204 2.25
		-5.7491853075117283e-016 1.7591869566996643 -2.25
		2.25 1.7591869566996643 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7591869566996643 2.25
		-2.25 1.7591869566996643 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7591869566996643 -2.25
		2.25 1.7591869566996643 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7591869566996643 2.25
		-5.7491853075117283e-016 2.6387804350494966 -2.25
		2.25 2.6387804350494966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6387804350494966 2.25
		-2.25 2.6387804350494966 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6387804350494966 -2.25
		2.25 2.6387804350494966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6387804350494966 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 177.16274577298242 68.239180779672253 155.91856420836015 ;
	setAttr ".rp" -type "double3" 0.71302399999999233 6.7833999999999959 -1.9472090000000124 ;
	setAttr ".sp" -type "double3" 0.71302399999999233 6.7833999999999959 -1.9472090000000124 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.71302399999999544 6.7833999999999897 -1.947209000000008 ;
	setAttr ".sp" -type "double3" 0.71302399999999544 6.7833999999999897 -1.947209000000008 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.71303010364999486 11.915483105989374 -0.13628692842811896 ;
	setAttr ".sp" -type "double3" 0.71303010364999486 11.915483105989374 -0.13628692842811896 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.71302399999999633 6.7833999999999897 -1.9472090000000044 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587899e-016 -7.9513867036587899e-016 -2.981770013872046e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_0_RControlShape" -p "Ref:bip_middle_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 3.5007189742252522e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.5007189742252522e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 3.5007189742252522e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.5007189742252522e-016 2.25
		-5.7491853075117283e-016 1.5765836667849671 -2.25
		2.25 1.5765836667849671 -1.6838337365057687e-016
		3.0430166849879092e-016 1.5765836667849669 2.25
		-2.25 1.5765836667849671 3.5695323650011823e-016
		-5.7491853075117283e-016 1.5765836667849671 -2.25
		2.25 1.5765836667849671 -1.6838337365057687e-016
		3.0430166849879092e-016 1.5765836667849669 2.25
		-5.7491853075117283e-016 3.1531673335699342 -2.25
		2.25 3.1531673335699342 -1.0715305595945801e-016
		3.0430166849879092e-016 3.1531673335699342 2.25
		-2.25 3.1531673335699342 4.1818355419123709e-016
		-5.7491853075117283e-016 3.1531673335699342 -2.25
		2.25 3.1531673335699342 -1.0715305595945801e-016
		3.0430166849879092e-016 3.1531673335699342 2.25
		-5.7491853075117283e-016 4.7297510003549013 -2.25
		2.25 4.7297510003549013 -4.5922738268339147e-017
		3.0430166849879092e-016 4.7297510003549013 2.25
		-2.25 4.7297510003549013 4.7941387188235596e-016
		-5.7491853075117283e-016 4.7297510003549013 -2.25
		2.25 4.7297510003549013 -4.5922738268339147e-017
		3.0430166849879092e-016 4.7297510003549013 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 47.021043225179966 0 -3.2799470152592529e-015 ;
	setAttr ".rp" -type "double3" 1.2207299997513132e-005 4.7297510000000207 5.6640300005739164e-005 ;
	setAttr ".sp" -type "double3" 1.2207299997513132e-005 4.7297510000000207 5.6640300005739164e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.2207299997513132e-005 4.7297510000000216 5.6640300005739164e-005 ;
	setAttr ".sp" -type "double3" 1.2207299997513132e-005 4.7297510000000216 5.6640300005739164e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2207299997513132e-005 4.7297510000000216 5.6640300005739164e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270375e-015 1.9878466759146984e-015 2.782985346280578e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_1_RControlShape" -p "Ref:bip_middle_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0416609144684055e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0416609144684055e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0416609144684055e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0416609144684055e-016 2.25
		-5.7491853075117283e-016 0.91948233336168173 -2.25
		2.25 0.91948233336168173 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91948233336168161 2.25
		-2.25 0.91948233336168173 3.5695323650011823e-016
		-5.7491853075117283e-016 0.91948233336168173 -2.25
		2.25 0.91948233336168173 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91948233336168161 2.25
		-5.7491853075117283e-016 1.8389646667233635 -2.25
		2.25 1.8389646667233635 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8389646667233635 2.25
		-2.25 1.8389646667233635 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8389646667233635 -2.25
		2.25 1.8389646667233635 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8389646667233635 2.25
		-5.7491853075117283e-016 2.7584470000850452 -2.25
		2.25 2.7584470000850452 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7584470000850452 2.25
		-2.25 2.7584470000850452 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7584470000850452 -2.25
		2.25 2.7584470000850452 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7584470000850452 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 5.2483317621876138 -2.385416011097636e-015 7.951386703658788e-016 ;
	setAttr ".rp" -type "double3" -3.0135100015371563e-006 2.7584470000000074 2.1449800014394782e-005 ;
	setAttr ".sp" -type "double3" -3.0135100015371563e-006 2.7584470000000074 2.1449800014394782e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.0135099988726211e-006 2.7584470000000074 2.1449800016171139e-005 ;
	setAttr ".sp" -type "double3" -3.0135099988726211e-006 2.7584470000000074 2.1449800016171139e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.0135099988726211e-006 2.7584470000000074 2.1449800016171139e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.192708005548818e-015 1.192708005548818e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000007 1.0000000000000007 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_2_RControlShape" -p "Ref:bip_middle_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0360462329688742e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0360462329688742e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0360462329688742e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0360462329688742e-016 2.25
		-5.7491853075117283e-016 0.91695370561077238 -2.25
		2.25 0.91695370561077238 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91695370561077227 2.25
		-2.25 0.91695370561077238 3.5695323650011823e-016
		-5.7491853075117283e-016 0.91695370561077238 -2.25
		2.25 0.91695370561077238 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91695370561077227 2.25
		-5.7491853075117283e-016 1.8339074112215448 -2.25
		2.25 1.8339074112215448 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8339074112215448 2.25
		-2.25 1.8339074112215448 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8339074112215448 -2.25
		2.25 1.8339074112215448 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8339074112215448 2.25
		-5.7491853075117283e-016 2.7508611168323172 -2.25
		2.25 2.7508611168323172 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7508611168323172 2.25
		-2.25 2.7508611168323172 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7508611168323172 -2.25
		2.25 2.7508611168323172 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7508611168323172 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -178.81833348200908 65.725762412256302 156.98195246087943 ;
	setAttr ".rp" -type "double3" 1.6810659999999986 6.5766420000000085 0.63978099999999483 ;
	setAttr ".sp" -type "double3" 1.6810659999999986 6.5766420000000085 0.63978099999999483 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.6810659999999991 6.5766420000000041 0.63978099999999571 ;
	setAttr ".sp" -type "double3" 1.6810659999999991 6.5766420000000041 0.63978099999999571 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 1.6810739929250009 11.420535556468671 2.3168085579246958 ;
	setAttr ".sp" -type "double3" 1.6810739929250009 11.420535556468671 2.3168085579246958 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.681066 6.576641999999997 0.63978099999999927 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.5902773407317584e-015 1.5902773407317576e-015 4.9696166897867412e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_0_RControlShape" -p "Ref:bip_ring_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.7985532411279854e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.7985532411279854e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.7985532411279854e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.7985532411279854e-016 2.25
		-5.7491853075117283e-016 1.2603563333920489 -2.25
		2.25 1.2603563333920489 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2603563333920487 2.25
		-2.25 1.2603563333920489 3.5695323650011823e-016
		-5.7491853075117283e-016 1.2603563333920489 -2.25
		2.25 1.2603563333920489 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2603563333920487 2.25
		-5.7491853075117283e-016 2.5207126667840978 -2.25
		2.25 2.5207126667840978 -1.0715305595945801e-016
		3.0430166849879092e-016 2.5207126667840978 2.25
		-2.25 2.5207126667840978 4.1818355419123709e-016
		-5.7491853075117283e-016 2.5207126667840978 -2.25
		2.25 2.5207126667840978 -1.0715305595945801e-016
		3.0430166849879092e-016 2.5207126667840978 2.25
		-5.7491853075117283e-016 3.7810690001761467 -2.25
		2.25 3.7810690001761467 -4.5922738268339147e-017
		3.0430166849879092e-016 3.7810690001761467 2.25
		-2.25 3.7810690001761467 4.7941387188235596e-016
		-5.7491853075117283e-016 3.7810690001761467 -2.25
		2.25 3.7810690001761467 -4.5922738268339147e-017
		3.0430166849879092e-016 3.7810690001761467 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 34.56152076070704 -7.9513867036587939e-016 1.9878466759146984e-015 ;
	setAttr ".rp" -type "double3" 3.2165499956882115e-006 3.7810690000000138 3.6354999998877702e-005 ;
	setAttr ".sp" -type "double3" 3.2165499956882115e-006 3.7810690000000138 3.6354999998877702e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.2165499979086576e-006 3.7810690000000129 3.6354999995324988e-005 ;
	setAttr ".sp" -type "double3" 3.2165499979086576e-006 3.7810690000000129 3.6354999995324988e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.2165499979086576e-006 3.7810690000000129 3.6354999995324988e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_1_RControlShape" -p "Ref:bip_ring_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7751785227532062e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7751785227532062e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7751785227532062e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7751785227532062e-016 2.25
		-5.7491853075117283e-016 0.7994693333587447 -2.25
		2.25 0.7994693333587447 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79946933335874459 2.25
		-2.25 0.7994693333587447 3.5695323650011823e-016
		-5.7491853075117283e-016 0.7994693333587447 -2.25
		2.25 0.7994693333587447 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79946933335874459 2.25
		-5.7491853075117283e-016 1.5989386667174894 -2.25
		2.25 1.5989386667174894 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5989386667174894 2.25
		-2.25 1.5989386667174894 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5989386667174894 -2.25
		2.25 1.5989386667174894 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5989386667174894 2.25
		-5.7491853075117283e-016 2.398408000076234 -2.25
		2.25 2.398408000076234 -4.5922738268339147e-017
		3.0430166849879092e-016 2.398408000076234 2.25
		-2.25 2.398408000076234 4.7941387188235596e-016
		-5.7491853075117283e-016 2.398408000076234 -2.25
		2.25 2.398408000076234 -4.5922738268339147e-017
		3.0430166849879092e-016 2.398408000076234 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 16.826288233507913 7.951386703658788e-016 3.9756933518293928e-015 ;
	setAttr ".rp" -type "double3" 1.2769300001380657e-005 2.3984080000000105 1.4234300003579392e-005 ;
	setAttr ".sp" -type "double3" 1.2769300001380657e-005 2.3984080000000105 1.4234300003579392e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.2769300002712924e-005 2.3984080000000105 1.4234300003579392e-005 ;
	setAttr ".sp" -type "double3" 1.2769300002712924e-005 2.3984080000000105 1.4234300003579392e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2769300002712924e-005 2.3984080000000105 1.4234300003579392e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 -3.5781240166464536e-015 7.951386703658785e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_2_RControlShape" -p "Ref:bip_ring_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9894957803460747e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9894957803460747e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9894957803460747e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9894957803460747e-016 2.25
		-5.7491853075117283e-016 0.89598924550217562 -2.25
		2.25 0.89598924550217562 -1.6838337365057687e-016
		3.0430166849879092e-016 0.89598924550217551 2.25
		-2.25 0.89598924550217562 3.5695323650011823e-016
		-5.7491853075117283e-016 0.89598924550217562 -2.25
		2.25 0.89598924550217562 -1.6838337365057687e-016
		3.0430166849879092e-016 0.89598924550217551 2.25
		-5.7491853075117283e-016 1.7919784910043512 -2.25
		2.25 1.7919784910043512 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7919784910043512 2.25
		-2.25 1.7919784910043512 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7919784910043512 -2.25
		2.25 1.7919784910043512 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7919784910043512 2.25
		-5.7491853075117283e-016 2.6879677365065269 -2.25
		2.25 2.6879677365065269 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6879677365065269 2.25
		-2.25 2.6879677365065269 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6879677365065269 -2.25
		2.25 2.6879677365065269 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6879677365065269 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 169.75574330747753 58.305358260036897 139.7820789516353 ;
	setAttr ".rp" -type "double3" 2.6397459999999966 6.5527640000000034 2.6416199999999925 ;
	setAttr ".sp" -type "double3" 2.6397459999999966 6.5527640000000034 2.6416199999999925 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6397459999999957 6.552764000000014 2.6416199999999925 ;
	setAttr ".sp" -type "double3" 2.6397459999999957 6.552764000000014 2.6416199999999925 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 2.6397514081749955 10.682563799107815 3.990830116122694 ;
	setAttr ".sp" -type "double3" 2.6397514081749955 10.682563799107815 3.990830116122694 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.6397459999999948 6.552764000000022 2.6416199999999961 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317584e-015 0 7.9513867036587939e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_0_RControlShape" -p "Ref:bip_pinky_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.2315690037876168e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.2315690037876168e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.2315690037876168e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.2315690037876168e-016 2.25
		-5.7491853075117283e-016 1.005009333390946 -2.25
		2.25 1.005009333390946 -1.6838337365057687e-016
		3.0430166849879092e-016 1.0050093333909458 2.25
		-2.25 1.005009333390946 3.5695323650011823e-016
		-5.7491853075117283e-016 1.005009333390946 -2.25
		2.25 1.005009333390946 -1.6838337365057687e-016
		3.0430166849879092e-016 1.0050093333909458 2.25
		-5.7491853075117283e-016 2.010018666781892 -2.25
		2.25 2.010018666781892 -1.0715305595945801e-016
		3.0430166849879092e-016 2.010018666781892 2.25
		-2.25 2.010018666781892 4.1818355419123709e-016
		-5.7491853075117283e-016 2.010018666781892 -2.25
		2.25 2.010018666781892 -1.0715305595945801e-016
		3.0430166849879092e-016 2.010018666781892 2.25
		-5.7491853075117283e-016 3.0150280001728378 -2.25
		2.25 3.0150280001728378 -4.5922738268339147e-017
		3.0430166849879092e-016 3.0150280001728378 2.25
		-2.25 3.0150280001728378 4.7941387188235596e-016
		-5.7491853075117283e-016 3.0150280001728378 -2.25
		2.25 3.0150280001728378 -4.5922738268339147e-017
		3.0430166849879092e-016 3.0150280001728378 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 31.245420931704185 -1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" 6.8645799993771739e-006 3.015028000000016 -3.1544700000551984e-005 ;
	setAttr ".sp" -type "double3" 6.8645799993771739e-006 3.015028000000016 -3.1544700000551984e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.8645800007649527e-006 3.0150280000000258 -3.1544700000551984e-005 ;
	setAttr ".sp" -type "double3" 6.8645800007649527e-006 3.0150280000000258 -3.1544700000551984e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.8645800007649527e-006 3.0150280000000258 -3.1544700000551984e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_1_RControlShape" -p "Ref:bip_pinky_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3901776028317311e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3901776028317311e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3901776028317311e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3901776028317311e-016 2.25
		-5.7491853075117283e-016 0.62608033340917935 -2.25
		2.25 0.62608033340917935 -1.6838337365057687e-016
		3.0430166849879092e-016 0.62608033340917923 2.25
		-2.25 0.62608033340917935 3.5695323650011823e-016
		-5.7491853075117283e-016 0.62608033340917935 -2.25
		2.25 0.62608033340917935 -1.6838337365057687e-016
		3.0430166849879092e-016 0.62608033340917923 2.25
		-5.7491853075117283e-016 1.2521606668183587 -2.25
		2.25 1.2521606668183587 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2521606668183587 2.25
		-2.25 1.2521606668183587 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2521606668183587 -2.25
		2.25 1.2521606668183587 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2521606668183587 2.25
		-5.7491853075117283e-016 1.878241000227538 -2.25
		2.25 1.878241000227538 -4.5922738268339147e-017
		3.0430166849879092e-016 1.878241000227538 2.25
		-2.25 1.878241000227538 4.7941387188235596e-016
		-5.7491853075117283e-016 1.878241000227538 -2.25
		2.25 1.878241000227538 -4.5922738268339147e-017
		3.0430166849879092e-016 1.878241000227538 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 20.546889839455073 1.5902773407317588e-015 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" 3.9517699995661459e-006 1.8782410000000027 -2.8967599995155524e-005 ;
	setAttr ".sp" -type "double3" 3.9517699995661459e-006 1.8782410000000027 -2.8967599995155524e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.9517700010094359e-006 1.8782409999999956 -2.8967599989826454e-005 ;
	setAttr ".sp" -type "double3" 3.9517700010094359e-006 1.8782409999999956 -2.8967599989826454e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.9517700010094359e-006 1.8782409999999956 -2.8967599989826454e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -7.9513867036587939e-016 1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_2_RControlShape" -p "Ref:bip_pinky_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6609478555051154e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6609478555051154e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6609478555051154e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6609478555051154e-016 2.25
		-5.7491853075117283e-016 0.74802441431346622 -2.25
		2.25 0.74802441431346622 -1.6838337365057687e-016
		3.0430166849879092e-016 0.74802441431346611 2.25
		-2.25 0.74802441431346622 3.5695323650011823e-016
		-5.7491853075117283e-016 0.74802441431346622 -2.25
		2.25 0.74802441431346622 -1.6838337365057687e-016
		3.0430166849879092e-016 0.74802441431346611 2.25
		-5.7491853075117283e-016 1.4960488286269324 -2.25
		2.25 1.4960488286269324 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4960488286269324 2.25
		-2.25 1.4960488286269324 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4960488286269324 -2.25
		2.25 1.4960488286269324 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4960488286269324 2.25
		-5.7491853075117283e-016 2.2440732429403987 -2.25
		2.25 2.2440732429403987 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2440732429403987 2.25
		-2.25 2.2440732429403987 4.7941387188235596e-016
		-5.7491853075117283e-016 2.2440732429403987 -2.25
		2.25 2.2440732429403987 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2440732429403987 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "rHandControl_pointConstraint1" -p "rHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_RW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -24.437499999999982 39.6638007941282 0.09641720419811417 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "rHandControlGroup_parentConstraint1" -p "rHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_RFKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "rikHandControlW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 3.546637198609961 
		3.7347487308854826e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1927080055488193e-014 -5.7249984266343308e-014 
		0 ;
	setAttr ".tg[1].tot" -type "double3" 2.1316282072803006e-014 3.5466371986078378 
		8.9705793999420271e-012 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587919e-016 -9.5416640443905503e-015 
		3.0215269473903408e-014 ;
	setAttr ".lr" -type "double3" 155.51960884752705 1.5834562113650958 -19.272704270102977 ;
	setAttr ".rst" -type "double3" 8.1752333241301471 65.813894002622078 -20.470547722105536 ;
	setAttr ".rsrr" -type "double3" 155.34374511030418 10.309966981810234 -20.96516627013084 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rkneeControl" -p "main";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.4335299999999931 21.708500365331052 -0.17027961490305554 ;
	setAttr ".sp" -type "double3" -7.4335299999999931 21.708500365331052 -0.17027961490305554 ;
	setAttr ".hdl" -type "double3" -7.4335299999999931 21.708500365331052 -0.17027961490305554 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "rkneeControlShape" -p "rkneeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-7.4335299999999931 21.708500365331052 -1.1702796149030554
		-7.4335299999999931 20.708500365331052 -0.17027961490305554
		-7.4335299999999931 21.708500365331052 0.82972038509694446
		-7.4335299999999931 22.708500365331052 -0.17027961490305543
		-7.4335299999999931 21.708500365331052 -1.1702796149030554
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "rFootControl" -ln "rFootControl" -at "message";
	addAttr -ci true -sn "ankleLift" -ln "ankleLift" -min 0 -max 120 -at "double";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 0 -24.576344892783254 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.5225710409862128 5.299950365331056 -0.20683408751419607 ;
	setAttr ".rpt" -type "double3" 0.85810104098621232 0 -3.5258455273891025 ;
	setAttr ".sp" -type "double3" -8.5225710409862128 5.299950365331056 -0.20683408751419607 ;
	setAttr ".hdl" -type "double3" -8.5225710409862128 5.299950365331056 -0.20683408751419607 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
	setAttr -k on ".ankleLift";
createNode nurbsSurface -n "rFootControlShape" -p "rFootControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-10.389101738150263 0.36395128401864785 -4.3592537307664454
		-10.389101738150263 0.36395128401864785 5.471896255122827
		-10.389101738150263 10.235949446643463 5.471896255122827
		-10.389101738150263 10.235949446643463 -4.3592537307664454
		-10.389101738150263 0.36395128401864785 -4.3592537307664463
		-6.6560403438221583 0.36395128401864785 -4.3592537307664454
		-6.6560403438221591 0.36395128401864785 5.471896255122827
		-6.6560403438221591 10.235949446643463 5.471896255122827
		-6.6560403438221591 10.235949446643463 -4.3592537307664454
		-6.6560403438221583 0.36395128401864785 -4.3592537307664463
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -7.6644700000000014 5.2999503653310489 -3.7326796149033021 ;
	setAttr ".sp" -type "double3" -7.6644700000000014 5.2999503653310489 -3.7326796149033021 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -7.6644700000000014 5.2999503653310489 -3.7326796149033021 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -121.2881936084453 -0.91662177040950188 -1.5078654678798327 ;
	setAttr ".rp" -type "double3" -4.4029271250911606e-005 8.5512859487362469 1.0033994998781304 ;
	setAttr ".sp" -type "double3" -4.4029271250911606e-005 8.5512859487362469 1.0033994998781304 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" -4.4029271250911606e-005 8.5512859487362469 1.0033994998781304 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 0 ;
	setAttr ".rp" -type "double3" -4.1564697029630819 -1.3558137664088811e-015 0.25511445858207615 ;
	setAttr ".sp" -type "double3" -4.1564697029630819 -1.3558137664088811e-015 0.25511445858207615 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -4.1564697029630819 -1.3558137664088811e-015 0.25511445858207615 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 0 ;
	setAttr ".rp" -type "double3" 7.4649476062812932 7.6754126486041561e-016 -0.13246407349470868 ;
	setAttr ".sp" -type "double3" 7.4649476062812932 7.6754126486041561e-016 -0.13246407349470868 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 7.4649476062812932 7.6754126486041561e-016 -0.13246407349470868 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" -2.1186750230640768e-030 -3.1805546814635168e-015 
		0 ;
	setAttr ".rp" -type "double3" -2.1048627129828357 -4.7749240986581365e-013 -10.502682532956246 ;
	setAttr ".sp" -type "double3" -2.1048627129828357 -4.7749240986581365e-013 -10.502682532956246 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -2.1048627129828357 -4.7749240986581365e-013 -10.502682532956246 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 3.5311250384401276e-030 -3.1805546814635176e-015 0 ;
	setAttr ".rp" -type "double3" -1.5633432405537064 0.32833915948915399 15.303923416917252 ;
	setAttr ".sp" -type "double3" -1.5633432405537064 0.32833915948915399 15.303923416917252 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -1.5633432405537064 0.32833915948915399 15.303923416917252 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 89.999999999999929 -1.7645565320962069 -2.8262402339218313e-030 ;
	setAttr ".rp" -type "double3" 0.35972819952236179 0.84598120584238012 -4.9238909140726435 ;
	setAttr ".sp" -type "double3" 0.35972819952236179 0.84598120584238012 -4.9238909140726435 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.35972819952236179 0.84598120584238012 -4.9238909140726435 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 31.300256028924576 0 0 ;
	setAttr ".rp" -type "double3" 4.3869107446248279e-005 -6.7854132380478767 -4.125630000000001 ;
	setAttr ".sp" -type "double3" 4.3869107446248279e-005 -6.7854132380478767 -4.125630000000001 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 4.3869107446248279e-005 -6.7854132380478767 -4.125630000000001 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.6686313081058319 0.46711993654643386 -0.26879711083580626 ;
	setAttr ".r" -type "double3" -118.93970752603073 -12.478450226502545 -21.344273154985629 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -6.7498324266183296 0.013004097156320785 -3.6793960756432851 ;
	setAttr ".rpt" -type "double3" -0.91879909842943497 -0.48012403296663836 3.9481931627601443 ;
	setAttr ".sp" -type "double3" -6.7498323756698948 0.013004106182162189 -3.6793960546280284 ;
	setAttr ".spt" -type "double3" 0 3.469446951953615e-018 -8.8817841970012543e-016 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode poleVectorConstraint -n "Ref:bip_foot_RIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_foot_RIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "rkneeControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -1.1754897709293131 7.5435382776134814 10.985531500052526 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.3026308303227747 0.77885225510877887 -11.334930383144759 ;
	setAttr ".r" -type "double3" 1.9064541566221168e-014 22.811791160745848 1.572537578447847e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -8.8854460675366145 0.067128936604071973 3.2177896144045053 ;
	setAttr ".rpt" -type "double3" 1.942543592082187 0 3.1932498518599308 ;
	setAttr ".sp" -type "double3" -8.8854460675366127 0.067128936604069711 3.2177896144045066 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-015 4.1633363423443395e-017 
		8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" 1.9990513149028066 -5.8331356435410888e-006 0.061594158418923906 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 89.999999999999929 -1.7645565320962102 -2.826240233921832e-030 ;
	setAttr ".rp" -type "double3" -1.2036150410313493 1.1743203653315337 10.380032502844607 ;
	setAttr ".sp" -type "double3" -1.2036150410313493 1.1743203653315337 10.380032502844607 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -1.2036150410313493 1.1743203653315337 10.380032502844607 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -89.999999999999929 -1.1299600123008406e-029 -1.7645565320962033 ;
	setAttr ".rp" -type "double3" -0.2079389361723627 4.9326329186391202 0.84598120584238623 ;
	setAttr ".sp" -type "double3" -0.2079389361723627 4.9326329186391202 0.84598120584238623 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -0.2079389361723627 4.9326329186391202 0.84598120584238623 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4743572969643517 0.4265898622343392 -7.1784964097136434 ;
	setAttr ".r" -type "double3" 1.2133261036263586e-014 22.811791160745859 1.7866035598019749e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000009 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -5.3537353575098168 0.41939130828468113 4.3881499046238401 ;
	setAttr ".rpt" -type "double3" 2.1200600086149564 0 1.7324452953261358 ;
	setAttr ".sp" -type "double3" -5.3537353575098132 0.4193913082846803 4.3881499046238375 ;
	setAttr ".spt" -type "double3" -2.6645352591003769e-015 3.8857805861880513e-016 
		1.7763568394002513e-015 ;
	setAttr ".pv" -type "double3" 1.9990524493585471 -1.0788202658930326e-007 0.061557328674864631 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode orientConstraint -n "rReverseToeWiggle_orientConstraint1" -p "rReverseToeWiggle";
	addAttr -ci true -k true -sn "w0" -ln "rToeControlW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -89.999999999999929 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999929 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" -1.2036150410308206 1.1743203653350573 10.38003250284677 ;
	setAttr ".r" -type "double3" 1.7581714878565541e-014 -1.7645565320962129 5.6752245494494081e-015 ;
createNode transform -n "rToeControl" -p "rToeControlZeroGroup";
	addAttr -ci true -sn "rToeControl" -ln "rToeControl" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "rToeControlShape" -p "rToeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-1.8665306971640518 -0.9016032349876979 -0.41949320148258773
		-1.8665306971640523 -0.9016032349876979 4.7599840894732033
		-1.8665306971640525 0.9016032349876979 4.7599840894732033
		-1.8665306971640521 0.90160323498769834 -0.41949320148258729
		-1.8665306971640518 -0.90160323498769745 -0.41949320148258817
		1.8665306971640525 -0.90160323498769834 -0.41949320148258795
		1.8665306971640521 -0.9016032349876979 4.7599840894732042
		1.8665306971640518 0.90160323498769834 4.7599840894732033
		1.8665306971640523 0.90160323498769834 -0.41949320148258795
		1.8665306971640525 -0.9016032349876979 -0.4194932014825884
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "rReverseControlZeroGroup_parentConstraint1" -p "rReverseControlZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "rFootControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-015 -6.3315875443956699e-015 
		-2.0429126021870216e-015 ;
	setAttr ".tg[0].tor" -type "double3" 121.30025602892448 -2.8000587959911664e-006 
		0 ;
	setAttr ".lr" -type "double3" 121.30025602892448 -24.576347692842056 -1.7486953670211285e-015 ;
	setAttr ".rst" -type "double3" -2.6645352591003757e-015 8.8817841970012523e-016 
		0 ;
	setAttr ".rsrr" -type "double3" 121.30025602892448 -24.576347692842056 -1.7486953670211285e-015 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_bullet_backUpperControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_backUpperControl" -p "Ref:prp_bullet_backUpperControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_backUpperControlShape" -p "Ref:prp_bullet_backUpperControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_backUpperControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_backUpperControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_2FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -5.741784 -2.8610609999999994 7.700543000000005 ;
	setAttr ".tg[0].tor" -type "double3" -173.4872923287179 0 0 ;
	setAttr ".tg[1].tot" -type "double3" -5.741784 -3.0361030902911565 7.8056068120962818 ;
	setAttr ".tg[1].tor" -type "double3" -172.03741376493213 0 0 ;
	setAttr ".lr" -type "double3" -5.0888874903416268e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.741784 64.072310391698096 -15.174169901901582 ;
	setAttr ".rsrr" -type "double3" -4.4152857657411725e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_backLowerControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_backLowerControl" -p "Ref:prp_bullet_backLowerControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_backLowerControlShape" -p "Ref:prp_bullet_backLowerControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_backLowerControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_backLowerControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_1FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_1ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 4.93002 -0.68931099999998935 7.0434110000000061 ;
	setAttr ".tg[0].tor" -type "double3" -165.67265425778993 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 4.93002 -0.47359097728919863 6.9928849648434221 ;
	setAttr ".tg[1].tor" -type "double3" -167.42072643866888 0 0 ;
	setAttr ".rst" -type "double3" 4.93002 53.115064398588444 -12.172718370954808 ;
	setAttr ".rsrr" -type "double3" 1.8367703285451808e-011 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_sideControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_sideControl" -p "Ref:prp_bullet_sideControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_sideControlShape" -p "Ref:prp_bullet_sideControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_sideControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_sideControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_0FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_0ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 14.513286 -2.2944389999999899 -3.7748770000000018 ;
	setAttr ".tg[0].tor" -type "double3" -168.13724682470749 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 14.513286 -2.2597291935226735 -3.7957569289607167 ;
	setAttr ".tg[1].tor" -type "double3" -167.61187166378735 0 0 ;
	setAttr ".lr" -type "double3" -3.3974648451500586e-006 0 0 ;
	setAttr ".rst" -type "double3" 14.513286 49.924451185503258 -0.42450690871903451 ;
	setAttr ".rsrr" -type "double3" -3.3974648499208912e-006 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_chestLowerControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_chestLowerControl" -p "Ref:prp_bullet_chestLowerControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_chestLowerControlShape" -p "Ref:prp_bullet_chestLowerControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_chestLowerControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_0FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_0ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 5.866311 -4.1248769999999837 -15.939292000000007 ;
	setAttr ".tg[0].tor" -type "double3" -168.13724342724265 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 5.866311 -3.9785498815818983 -15.976444553536918 ;
	setAttr ".tg[1].tor" -type "double3" -167.61186826632252 0 0 ;
	setAttr ".rst" -type "double3" 5.866311 54.216411753309821 11.103830787950971 ;
	setAttr ".rsrr" -type "double3" -3.9756933518293952e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_chestUpperControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_chestUpperControl" -p "Ref:prp_bullet_chestUpperControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_chestUpperControlShape" -p "Ref:prp_bullet_chestUpperControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_chestUpperControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_2FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -5.72607 -1.7901312405575425 -15.197664865260194 ;
	setAttr ".tg[0].tor" -type "double3" -173.4872923287179 0 0 ;
	setAttr ".tg[1].tot" -type "double3" -5.72607 -1.3861353435287 -15.058172849864222 ;
	setAttr ".tg[1].tor" -type "double3" -172.03741376493213 0 0 ;
	setAttr ".lr" -type "double3" -5.0888874903416268e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.72607 65.605488257450276 7.6977381868935195 ;
	setAttr ".rsrr" -type "double3" -4.4152857657411725e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "RefRNfosterParent1";
createNode orientConstraint -n "Ref:bip_pelvis_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "PelvisControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -174.79190906615452 0 0 ;
	setAttr ".o" -type "double3" 174.79190906615452 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Ref:bip_pelvis_pointConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "UpperbodyControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 0 40.862454 -3.096505 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pack_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_packControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 6.2617170291312962e-015 7.6333312355124402e-014 -2.7829853462805728e-015 ;
	setAttr ".rst" -type "double3" 10.052434 2.0098690000000019 -4.948871 ;
	setAttr ".rsrr" -type "double3" -1.5405811738338909e-015 6.3611093629270335e-015 
		3.975693351829395e-016 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_hip_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_RIKW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_hip_RFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.46572798100179491 -19.281744665623787 -2.741133772485663 ;
	setAttr ".rsrr" -type "double3" -3.5781240166464568e-015 3.4041874325039201e-015 
		-3.9756933518293969e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_knee_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RIKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_RFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_foot_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_foot_RIKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_foot_RFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.53249507849711553 8.846605568711551 17.310212550003644 ;
	setAttr ".rsrr" -type "double3" -1.803970858392588e-014 1.590277340731758e-015 -3.9756933518293979e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_toe_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_toe_RIKW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_toe_RFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_hip_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_LIKW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_hip_LFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.465722810028393 -19.28168203301929 -2.7411243979854554 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587899e-016 3.180554681463516e-015 2.2069531490250782e-032 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_knee_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LIKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_LFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_foot_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_foot_LIKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_foot_LFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.53249572244124266 8.8465850273367774 17.310158567236019 ;
	setAttr ".rsrr" -type "double3" 4.9696166897867449e-016 -1.5902773407317584e-015 
		-1.987846675914698e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_toe_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_toe_LIKW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_toe_LFKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 -2.4148365394514675e-006 0 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:bip_spine_0_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_0FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_0ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 7.9513867036587856e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 2.2204460492503131e-015 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587856e-015 0 0 ;
	setAttr ".lr" -type "double3" -8.7465253740246703e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.0656079999999903 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -8.7465253740246703e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullet_chestLower_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_chestLowerControlW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.866311 -4.1248769999999979 -15.939292000000002 ;
	setAttr ".rsrr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_bullet_side_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_sideControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 14.513286 -2.2944390000000041 -3.7748770000000009 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_spine_1_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_1FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_1ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708122e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -7.1054273576010019e-015 8.8817841970012523e-016 ;
	setAttr ".tg[1].tor" -type "double3" 9.5416640443905456e-015 0 0 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.4461739999999921 1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullet_chestUpper_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_chestUpperControlW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.72607 -7.8740819999999943 -15.299928 ;
	setAttr ".rsrr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_bullet_backLower_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_backLowerControlW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.93002 -0.68931099999999645 7.0434109999999972 ;
	setAttr ".rsrr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_spine_2_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_2FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.6697912077683464e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.541664044390544e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -8.1669820000000044 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullet_backUpper_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_backUpperControlW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" -5.741784 -2.8610610000000136 7.700543 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_spine_3_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_3FKcontrolW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3ikW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 -7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708122e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 2.8421709430404007e-014 -7.9936057773011271e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.5416640443905456e-015 0 0 ;
	setAttr ".lr" -type "double3" -1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.0590419999999767 0 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_collar_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "rShoulderControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 1.2722218725854048e-014 5.0093736233050395e-014 -4.2937488199757468e-014 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905314e-015 5.1684013573782148e-014 
		-4.2142349529391588e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_bullet_shoulder_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_shoulderControlW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -5.8840261607075043e-014 -2.0673605429512851e-014 
		1.2722218725854075e-014 ;
	setAttr ".rst" -type "double3" -6.0627499999999959 10.213033999999999 1.7571280000000042 ;
	setAttr ".rsrr" -type "double3" -6.043053894780679e-014 -2.703471479243991e-014 
		-3.8166656177562176e-014 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_upperArm_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_RFKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_upperArm_RIKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.13799760994271715 8.7015004220575953 -1.8136235261181506 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952748e-014 4.7708320221952748e-014 
		-7.9513867036589901e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_lowerArm_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_RFKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_lowerArm_RIKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_hand_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "rHandControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_0_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3653635433950058e-015 -2.6645352591003757e-015 
		1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244617e-014 -9.5416640443905471e-015 
		2.3854160110976368e-015 ;
	setAttr ".lr" -type "double3" -6.361109362927031e-014 -3.9756933518296775e-016 -5.0888874903416256e-014 ;
	setAttr ".rst" -type "double3" 2.6397460000000024 6.5527639999999927 2.6416199999999952 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 1.5902773407317588e-015 
		3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_1_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 1.27675647831893e-015 -1.7763568394002505e-014 
		1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 6.6791648310733843e-014 -2.2263882770244605e-014 
		1.9083328088781091e-014 ;
	setAttr ".lr" -type "double3" -1.2086107789561363e-013 0 0 ;
	setAttr ".rst" -type "double3" 6.8645799995437073e-006 3.0150279999999956 -3.1544700007657411e-005 ;
	setAttr ".rsrr" -type "double3" -6.9972202992197363e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_2_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-015 -1.7763568394002505e-014 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781101e-014 -7.1562480332929135e-015 
		2.3854160110976371e-014 ;
	setAttr ".rst" -type "double3" 3.9517699974567222e-006 1.8782410000000027 -2.8967600002260951e-005 ;
	setAttr ".rsrr" -type "double3" 5.7249984266343308e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_0_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.3322676295501878e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781094e-014 -7.951386703658788e-016 
		-1.1330726052713771e-014 ;
	setAttr ".lr" -type "double3" 9.3826363103173724e-014 2.2263882770244598e-014 1.9083328088781113e-014 ;
	setAttr ".rst" -type "double3" 1.6810659999999942 6.576641999999997 0.63978100000000104 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 1.073437204993937e-014 
		1.9083328088781101e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_1_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.0658141036401503e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781094e-014 -1.5902773407317571e-014 
		7.951386703658788e-016 ;
	setAttr ".lr" -type "double3" 8.2694421718051442e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.2165500005731928e-006 3.781068999999996 3.6354999998877702e-005 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708128e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_2_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-015 -1.0658141036401503e-014 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416256e-014 -1.8685758753598151e-014 
		-1.5107634736951694e-014 ;
	setAttr ".lr" -type "double3" 1.6220828875463936e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.2769300003157014e-005 2.3984079999999945 1.4234300003579392e-005 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_0_RControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -8.8817841970012523e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 4.6118042881220995e-014 2.1468744099878731e-014 
		-1.6002165741113309e-014 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 8.1700498380094092e-014 3.1805546814634994e-015 ;
	setAttr ".rst" -type "double3" 0.71302399999999722 6.7833999999999959 -1.9472090000000017 ;
	setAttr ".rsrr" -type "double3" -3.3395824155366928e-014 -8.1501713712502572e-015 
		1.272221872585407e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_1_RControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-015 -2.1316282072803006e-014 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587897e-014 -1.1131941385122299e-014 
		-2.9817700138720442e-014 ;
	setAttr ".lr" -type "double3" 1.2086107789561363e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.2207300001065846e-005 4.729751 5.6640299991528309e-005 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-013 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_2_RControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -1.7763568394002505e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416243e-014 -2.782985346280574e-015 
		-2.4251729446159286e-014 ;
	setAttr ".lr" -type "double3" 2.9499644670574117e-013 0 0 ;
	setAttr ".rst" -type "double3" -3.0135100015371563e-006 2.7584469999999968 2.1449799996631214e-005 ;
	setAttr ".rsrr" -type "double3" -3.2600685485001048e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_0_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 6.2172489379008766e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.9756933518293967e-015 1.6697912077683461e-014 
		3.9756933518293952e-015 ;
	setAttr ".lr" -type "double3" 1.033680271475643e-013 -6.1126285284376967e-014 -5.5659706925612096e-015 ;
	setAttr ".rst" -type "double3" 0.75155099999999564 6.8596830000000057 -4.6006549999999962 ;
	setAttr ".rsrr" -type "double3" 5.5659706925611528e-015 -1.8735454920496028e-014 
		8.7465253740246703e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_1_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.4210854715202004e-014 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025727e-014 1.1927080055488184e-015 
		-2.1468744099878731e-014 ;
	setAttr ".lr" -type "double3" 6.9972202992197363e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.114670001304944e-006 3.6006740000000006 4.7520399991896056e-005 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_2_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-015 0 -1.7763568394002505e-014 ;
	setAttr ".tg[0].tor" -type "double3" -6.9972202992197299e-014 5.9635400277440912e-015 
		-7.9513867036587888e-015 ;
	setAttr ".lr" -type "double3" 3.4668046027952332e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.6238000000168284e-005 2.262808 -4.6061899997340561e-005 ;
	setAttr ".rsrr" -type "double3" 1.1927080055488187e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_0_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-015 -1.7763568394002505e-015 
		1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.3655375443384901e-014 1.1131941385122309e-014 
		1.5902773407317584e-015 ;
	setAttr ".lr" -type "double3" 2.1468744099878734e-014 -9.5416640443905487e-015 1.5902773407317562e-015 ;
	setAttr ".rst" -type "double3" 2.4401390000000021 1.9741210000000056 -3.8365909999999968 ;
	setAttr ".rsrr" -type "double3" 2.0673605429512861e-014 -7.9513867036587935e-015 
		-1.5902773407317602e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_1_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -5.1070259132757201e-015 7.9936057773011271e-015 
		-2.7755575615628914e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.05134464752906e-014 -3.9756933518293952e-015 
		6.361109362927032e-015 ;
	setAttr ".lr" -type "double3" -2.2263882770244621e-014 0 0 ;
	setAttr ".rst" -type "double3" -6.0634200004017202e-005 4.3650050000000062 -1.0777600006228738e-005 ;
	setAttr ".rsrr" -type "double3" -3.4986101496098675e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_2_RControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -2.4424906541753444e-015 1.2434497875801753e-014 
		2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -2.8227422797988689e-014 3.7371517507196315e-014 
		-3.4986101496098681e-014 ;
	setAttr ".lr" -type "double3" -5.7249984266343308e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.0444900051284094e-006 1.793219999999998 1.0261300005365293e-005 ;
	setAttr ".rsrr" -type "double3" 4.7708320221952748e-014 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_collar_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "lShoulderControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -6.3611093629270375e-015 6.6791648310733855e-014 -6.3611093629270375e-015 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635085e-015 4.1347210859025721e-014 
		-2.544443745170814e-014 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_upperArm_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_LFKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_upperArm_LIKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.137981840143965 8.7011134155600427 -1.8135431753511413 ;
	setAttr ".rsrr" -type "double3" -3.6576378836830448e-014 4.2937488199757468e-014 
		-1.1927080055488201e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_lowerArm_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_LFKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_lowerArm_LIKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_hand_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "lHandControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_0_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 5.4817261840867104e-016 4.4408920985006262e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.6118042881221007e-014 -1.1131941385122306e-014 
		-2.3854160110976368e-015 ;
	setAttr ".lr" -type "double3" 1.908332808878111e-014 4.2539918864574528e-014 2.544443745170814e-014 ;
	setAttr ".rst" -type "double3" -2.6397049999999957 -6.5528299999999957 -2.641658999999998 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-014 -9.5416640443905503e-015 
		-1.3241718894150475e-030 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_1_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -7.2164496600635175e-016 -7.1054273576010019e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905456e-015 -6.361109362927028e-015 
		-1.4312496066585814e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -3.015037999999989 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -7.6333312355124402e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_2_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -2.1094237467877974e-015 3.5527136788005009e-015 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781088e-014 -2.3854160110976364e-015 
		3.9756933518293942e-014 ;
	setAttr ".lr" -type "double3" -2.2263882770244617e-014 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -1.878249999999996 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_0_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-014 -4.770832022195272e-015 
		-2.7233499460031345e-014 ;
	setAttr ".lr" -type "double3" 3.9756933518293974e-014 3.9359364183111002e-014 5.0888874903416281e-014 ;
	setAttr ".rst" -type "double3" -1.681086999999998 -6.5766639999999992 -0.63978799999999847 ;
	setAttr ".rsrr" -type "double3" -1.9310840053969435e-030 -9.9392333795734887e-015 
		2.2263882770244611e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_1_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-015 7.1054273576010019e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781091e-014 -2.4649298781342238e-014 
		-8.7465253740246656e-015 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -3.7810910000000013 0 ;
	setAttr ".rsrr" -type "double3" -3.8166656177562201e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_2_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -7.1054273576010019e-015 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270304e-015 -1.6697912077683451e-014 
		-7.951386703658788e-016 ;
	setAttr ".lr" -type "double3" 1.2722218725854064e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -2.3984250000000102 0 ;
	setAttr ".rsrr" -type "double3" 2.8624992133171654e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_0_LControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 4.4408920985006262e-016 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.1468744099878737e-014 -5.5659706925611512e-015 
		-1.1777991554794577e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635085e-015 7.4743035014392642e-014 1.2722218725854065e-014 ;
	setAttr ".rst" -type "double3" -0.71304799999999346 -6.7834470000000016 1.9471980000000002 ;
	setAttr ".rsrr" -type "double3" -3.180554681463516e-015 5.3671860249696828e-015 
		-9.5416640443905456e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_1_LControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 0 1.0658141036401503e-014 -7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.4986101496098662e-014 1.1927080055488182e-015 
		4.3732626870123336e-015 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.1102230246251565e-015 -4.7297659999999944 -7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -5.7249984266343308e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_2_LControlW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 3.5527136788005009e-015 
		-1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 6.0430538947806765e-014 -1.7095481412866391e-014 
		-1.6300342742500511e-014 ;
	setAttr ".lr" -type "double3" -2.8624992133171654e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.7584389999999992 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -1.1131941385122309e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_0_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 -5.3290705182007514e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.5107634736951707e-014 3.9756933518293944e-015 
		-6.9574633657014404e-015 ;
	setAttr ".lr" -type "double3" -1.1927080055488107e-015 6.5151674803104231e-014 1.4312496066585827e-014 ;
	setAttr ".rst" -type "double3" -0.75159399999999366 -6.8597430000000044 4.600634 ;
	setAttr ".rsrr" -type "double3" 1.3758973538453222e-030 -1.982877059224911e-014 
		-7.9513867036587888e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_1_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -7.1054273576010019e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -6.0430538947806765e-014 5.5659706925611512e-015 
		-7.9513867036587856e-015 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -3.6006880000000003 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_2_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 7.1054273576010019e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952704e-014 -4.3732626870123328e-015 
		-5.5659706925611512e-015 ;
	setAttr ".lr" -type "double3" 4.4527765540489235e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.9968028886505635e-015 -2.26277 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_0_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 7.7715611723760958e-015 1.7763568394002505e-015 
		-1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.4908850069360224e-014 2.5444437451708128e-014 
		-4.7708320221952736e-015 ;
	setAttr ".lr" -type "double3" 2.6239576122074014e-014 -1.7493050748049344e-014 1.1131941385122304e-014 ;
	setAttr ".rst" -type "double3" -2.4400899999999872 -1.9741599999999995 3.8365639999999974 ;
	setAttr ".rsrr" -type "double3" -1.033680271475643e-014 -2.3854160110976377e-014 
		-3.1805546814635152e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_1_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-014 2.9309887850104133e-014 
		2.9864999362416711e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.8884543421189614e-015 -1.9083328088781094e-014 
		-3.180554681463516e-015 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -4.3650180000000027 1.7763568394002505e-014 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_2_LControlW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2434497875801753e-014 9.7699626167013776e-015 
		2.8310687127941492e-014 ;
	setAttr ".tg[0].tor" -type "double3" 5.864147693948353e-015 -1.2722218725854064e-014 
		1.2722218725854064e-014 ;
	setAttr ".lr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -1.7932180000000066 6.2172489379008766e-015 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_neck_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "neckControlW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_head_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "headControlW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 2.5444437451708128e-014 0 0 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -n "lightLinker1";
	setAttr -s 2 ".lnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr ".ihi" 0;
	setAttr -s 660 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 0
		"Ref:HeadRN" 0
		"RefRN" 749
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_shoulder_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_backUpper_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_backLower_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_chestUpper_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_side_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_chestLower_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pack_parentConstraint1" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:heavy|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:heavy|Ref:bip_pelvis" 
		"-s -r "
		1 Ref:bones "zooSetMenuHidden" "zooSetMenuHidden" " -ci 1 -h 1 -min 0 -max 1 -at \"bool\""
		
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0" "translate" " -type \"double3\" 0 -6.065608 0"
		
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0" "translateX" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0" "translateY" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0" "translateZ" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translate" 
		" -type \"double3\" 0 -7.446174 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translateX" 
		" -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translateY" 
		" -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translateZ" 
		" -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translate" " -type \"double3\" 0 -8.166982 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translateX" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translateY" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translateZ" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translate" " -type \"double3\" 0 -7.059042 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translateX" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translateY" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translateZ" " -av"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"rotateX" " -av 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"rotateY" " -av 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"rotateZ" " -av 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"rotateX" " -av 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"rotateY" " -av 0"
		2 "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"rotateZ" " -av 0"
		2 "|Ref:heavy|Ref:body|Ref:bodyShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "|Ref:heavy|Ref:head_zero|Ref:head_zeroShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "Ref:bones" "zooSetMenuHidden" " 0"
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "displayType" " 0"
		2 "Ref:skeleton_layer" "visibility" " 0"
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[1]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[2]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[3]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[4]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[5]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[6]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[7]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis.rotatePivotTranslate" "RefRN.placeHolderList[8]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[9]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[10]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[11]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[12]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.translateX" "RefRN.placeHolderList[13]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.translateY" "RefRN.placeHolderList[14]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" "RefRN.placeHolderList[15]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" "RefRN.placeHolderList[16]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" "RefRN.placeHolderList[17]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" "RefRN.placeHolderList[18]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[19]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[20]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[21]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[22]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[23]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[24]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[25]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[26]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[27]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[28]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[29]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[30]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[31]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[32]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[33]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[34]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[35]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[36]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[37]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[38]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[39]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[40]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[41]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[42]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[43]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[44]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[45]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[46]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[47]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[48]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[49]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[50]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[51]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[52]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[53]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[54]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[55]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[56]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[57]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[58]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[59]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[60]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[61]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[62]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[63]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[64]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[65]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[66]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[67]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[68]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[69]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[70]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[71]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[72]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[73]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[74]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[75]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[76]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[77]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[78]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[79]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[80]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[81]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[82]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[83]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[84]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[85]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[86]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[87]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[88]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[89]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[90]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[91]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[92]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[93]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[94]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[95]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[96]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[97]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[98]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[99]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[100]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[101]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[102]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[103]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[104]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[105]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[106]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[107]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[108]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[109]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[110]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[111]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[112]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[113]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[114]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[115]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[116]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[117]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[118]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[119]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[120]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[121]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[122]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[123]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[124]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[125]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[126]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[127]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[128]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[129]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[130]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[131]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[132]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[133]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[134]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[135]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[136]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[137]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[138]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[139]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[140]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[141]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[142]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[143]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[144]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[145]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[146]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[147]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[148]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[149]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[150]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[151]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[152]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[153]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[154]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[155]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[156]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[157]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[158]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[159]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[160]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[161]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[162]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[163]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[164]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[165]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[166]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[167]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[168]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[169]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[170]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[171]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[172]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[173]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[174]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[175]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[176]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[177]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[178]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[179]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[180]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[181]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[182]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[183]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[184]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[185]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[186]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[187]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[188]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[189]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[190]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[191]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[192]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[193]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[194]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[195]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[196]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[197]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[198]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[199]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[200]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[201]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[202]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[203]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[204]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[205]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[206]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[207]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[208]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[209]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[210]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[211]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[212]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[213]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[214]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[215]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[216]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[217]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[218]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[219]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[220]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[221]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[222]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[223]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[224]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[225]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[226]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[227]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[228]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[229]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[230]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[231]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[232]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[233]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[234]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[235]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[236]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[237]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[238]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[239]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[240]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[241]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[242]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[243]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[244]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[245]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[246]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[247]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[248]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[249]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[250]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[251]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[252]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[253]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[254]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[255]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[256]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[257]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[258]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[259]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[260]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[261]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[262]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[263]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[264]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[265]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[266]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[267]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[268]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[269]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[270]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[271]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[272]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[273]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[274]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[275]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[276]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[277]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[278]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[279]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[280]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[281]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[282]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[283]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[284]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[285]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[286]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[287]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[288]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[289]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[290]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[291]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[292]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[293]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[294]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[295]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[296]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[297]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[298]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[299]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[300]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[301]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[302]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[303]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[304]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[305]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[306]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[307]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[308]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[309]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.message" 
		"RefRN.placeHolderList[310]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[311]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[312]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[313]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[314]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[315]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[316]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[317]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[318]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[319]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[320]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[321]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[322]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[323]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[324]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.message" 
		"RefRN.placeHolderList[325]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[326]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[327]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[328]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[329]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[330]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[331]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[332]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[333]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[334]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[335]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[336]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[337]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.message" 
		"RefRN.placeHolderList[338]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[339]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[340]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[341]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[342]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[343]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[344]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[345]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[346]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[347]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[348]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[349]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[350]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[351]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[352]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[353]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[354]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[355]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[356]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[357]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[358]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[359]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[360]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[361]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[362]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[363]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[364]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[365]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[366]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[367]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[368]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[369]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[370]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[371]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[372]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[373]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[374]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[375]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[376]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[377]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[378]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[379]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[380]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[381]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[382]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[383]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[384]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[385]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[386]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[387]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[388]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[389]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[390]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[391]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[392]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[393]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[394]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[395]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[396]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[397]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[398]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[399]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[400]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[401]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[402]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[403]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[404]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[405]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[406]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[407]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[408]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[409]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[410]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[411]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[412]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[413]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[414]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[415]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[416]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[417]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[418]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[419]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[420]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[421]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[422]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[423]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[424]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[425]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[426]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[427]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[428]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[429]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[430]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[431]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[432]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[433]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[434]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[435]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[436]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[437]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[438]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[439]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[440]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[441]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[442]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[443]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[444]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[445]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[446]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[447]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[448]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[449]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[450]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[451]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[452]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[453]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[454]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[455]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[456]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[457]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[458]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[459]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[460]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[461]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[462]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[463]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[464]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[465]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[466]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[467]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[468]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[469]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[470]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[471]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[472]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[473]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[474]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[475]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[476]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[477]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[478]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[479]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[480]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[481]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[482]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[483]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[484]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[485]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[486]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[487]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[488]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[489]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[490]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[491]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[492]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[493]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[494]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[495]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[496]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[497]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[498]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[499]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[500]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[501]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[502]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[503]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[504]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[505]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[506]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[507]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[508]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[509]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[510]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[511]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.translateX" 
		"RefRN.placeHolderList[512]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.translateY" 
		"RefRN.placeHolderList[513]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.translateZ" 
		"RefRN.placeHolderList[514]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateX" 
		"RefRN.placeHolderList[515]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateY" 
		"RefRN.placeHolderList[516]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateZ" 
		"RefRN.placeHolderList[517]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotatePivot" 
		"RefRN.placeHolderList[518]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotatePivotTranslate" 
		"RefRN.placeHolderList[519]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateOrder" 
		"RefRN.placeHolderList[520]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.jointOrient" 
		"RefRN.placeHolderList[521]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.parentInverseMatrix" 
		"RefRN.placeHolderList[522]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.translateX" 
		"RefRN.placeHolderList[523]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.translateY" 
		"RefRN.placeHolderList[524]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.translateZ" 
		"RefRN.placeHolderList[525]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateX" 
		"RefRN.placeHolderList[526]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateY" 
		"RefRN.placeHolderList[527]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateZ" 
		"RefRN.placeHolderList[528]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotatePivot" 
		"RefRN.placeHolderList[529]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotatePivotTranslate" 
		"RefRN.placeHolderList[530]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateOrder" 
		"RefRN.placeHolderList[531]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.jointOrient" 
		"RefRN.placeHolderList[532]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.parentInverseMatrix" 
		"RefRN.placeHolderList[533]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.translateX" 
		"RefRN.placeHolderList[534]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.translateY" 
		"RefRN.placeHolderList[535]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.translateZ" 
		"RefRN.placeHolderList[536]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateX" 
		"RefRN.placeHolderList[537]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateY" 
		"RefRN.placeHolderList[538]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateZ" 
		"RefRN.placeHolderList[539]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotatePivot" 
		"RefRN.placeHolderList[540]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotatePivotTranslate" 
		"RefRN.placeHolderList[541]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateOrder" 
		"RefRN.placeHolderList[542]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.jointOrient" 
		"RefRN.placeHolderList[543]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.parentInverseMatrix" 
		"RefRN.placeHolderList[544]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.translateX" 
		"RefRN.placeHolderList[545]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.translateY" 
		"RefRN.placeHolderList[546]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.translateZ" 
		"RefRN.placeHolderList[547]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateX" 
		"RefRN.placeHolderList[548]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateY" 
		"RefRN.placeHolderList[549]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateZ" 
		"RefRN.placeHolderList[550]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotatePivot" 
		"RefRN.placeHolderList[551]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotatePivotTranslate" 
		"RefRN.placeHolderList[552]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateOrder" 
		"RefRN.placeHolderList[553]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.jointOrient" 
		"RefRN.placeHolderList[554]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.parentInverseMatrix" 
		"RefRN.placeHolderList[555]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.translateX" 
		"RefRN.placeHolderList[556]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.translateY" 
		"RefRN.placeHolderList[557]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.translateZ" 
		"RefRN.placeHolderList[558]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateX" 
		"RefRN.placeHolderList[559]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateY" 
		"RefRN.placeHolderList[560]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateZ" 
		"RefRN.placeHolderList[561]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotatePivot" 
		"RefRN.placeHolderList[562]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotatePivotTranslate" 
		"RefRN.placeHolderList[563]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateOrder" 
		"RefRN.placeHolderList[564]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.jointOrient" 
		"RefRN.placeHolderList[565]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.parentInverseMatrix" 
		"RefRN.placeHolderList[566]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.translateX" 
		"RefRN.placeHolderList[567]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.translateY" 
		"RefRN.placeHolderList[568]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.translateZ" 
		"RefRN.placeHolderList[569]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateX" 
		"RefRN.placeHolderList[570]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateY" 
		"RefRN.placeHolderList[571]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateZ" 
		"RefRN.placeHolderList[572]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotatePivot" 
		"RefRN.placeHolderList[573]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotatePivotTranslate" 
		"RefRN.placeHolderList[574]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateOrder" 
		"RefRN.placeHolderList[575]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.jointOrient" 
		"RefRN.placeHolderList[576]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.parentInverseMatrix" 
		"RefRN.placeHolderList[577]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.message" "RefRN.placeHolderList[578]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" "RefRN.placeHolderList[579]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" "RefRN.placeHolderList[580]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" "RefRN.placeHolderList[581]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[582]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[583]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[584]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[585]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[586]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[587]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" "RefRN.placeHolderList[588]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[589]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[590]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" "RefRN.placeHolderList[591]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[592]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.message" 
		"RefRN.placeHolderList[593]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[594]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[595]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[596]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[597]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[598]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[599]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.message" 
		"RefRN.placeHolderList[600]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[601]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[602]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[603]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[604]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[605]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[606]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[607]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[608]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[609]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[610]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[611]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[612]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.message" "RefRN.placeHolderList[613]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" "RefRN.placeHolderList[614]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" "RefRN.placeHolderList[615]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" "RefRN.placeHolderList[616]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[617]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[618]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[619]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[620]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[621]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[622]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" "RefRN.placeHolderList[623]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[624]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[625]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" "RefRN.placeHolderList[626]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[627]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.message" 
		"RefRN.placeHolderList[628]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[629]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[630]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[631]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[632]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[633]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[634]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.message" 
		"RefRN.placeHolderList[635]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[636]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[637]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[638]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[639]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[640]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[641]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[642]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[643]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[644]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[645]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[646]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[647]" ""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.translateX" "RefRN.placeHolderList[648]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.translateY" "RefRN.placeHolderList[649]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.translateZ" "RefRN.placeHolderList[650]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.rotateX" "RefRN.placeHolderList[651]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.rotateY" "RefRN.placeHolderList[652]" 
		""
		5 4 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.rotateZ" "RefRN.placeHolderList[653]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.rotatePivot" "RefRN.placeHolderList[654]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.rotatePivotTranslate" 
		"RefRN.placeHolderList[655]" ""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.rotateOrder" "RefRN.placeHolderList[656]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.jointOrient" "RefRN.placeHolderList[657]" 
		""
		5 3 "RefRN" "|Ref:heavy|Ref:bip_pelvis|Ref:prp_pack.parentInverseMatrix" 
		"RefRN.placeHolderList[658]" ""
		5 0 "RefRN" "Ref:groupParts45.outputGeometry" "|Ref:heavy|Ref:body|Ref:bodyShape.inMesh" 
		"RefRN.placeHolderList[659]" "RefRN.placeHolderList[660]" "";
	setAttr ".ptag" -type "string" "";
lockNode;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
createNode ikSplineSolver -n "ikSplineSolver";
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 45 ".dsm";
	setAttr -s 2 ".dnsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode expression -n "FKspineExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "FKspineExp1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "FKspineExp2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "FKspineExp3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_spine_0FKcontrolvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==1)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode makeNurbCylinder -n "makeNurbCylinder1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 15;
	setAttr ".hr" 0.2;
createNode expression -n "ikChestvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.95014146559823121 -0.31181917091616651 0
		 0 0.31181917091616651 -0.95014146559823121 0 0 69.116623784974905 -7.9994706495552981 1;
createNode expression -n "SpineCurvevisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode cluster -n "ikChestClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak3";
createNode objectSet -n "cluster9Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster9GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster9GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2:3]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "ikPelvisClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster10Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster10GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster10GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode curveInfo -n "SpineCurveInfoNode";
createNode curveInfo -n "curveInfo1";
createNode expression -n "stretchyBack";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "ikSpineTwist";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] ;\n";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "fkParent";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "neckControlLockParentlock";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "headControlLockParentlock";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "Ref:bip_upperArm_LFKswtichExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_lowerArm_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_upperArm_LFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if( .I[0]==1 )\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "likHandControllockExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "likHandControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "lElbowControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion10";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion12";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion15";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion16";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion17";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "fkParent1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_knee_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_foot_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_toe_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_LFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==1)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "lkneeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion18";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion19";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion21";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion22";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "lrockLexp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = -1 * .I[0]\n";
createNode unitConversion -n "unitConversion23";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion24";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "lFootControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "lToeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "Ref:bip_upperArm_RFKswtichExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_lowerArm_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_upperArm_RFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if( .I[0]==1 )\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rikHandControllockExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "rikHandControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rElbowControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion25";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion26";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion27";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion29";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion30";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion31";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion32";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion35";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion36";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion37";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion38";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion39";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "fkParent2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_knee_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_foot_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_toe_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_RFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==1)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rkneeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion40";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion41";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion42";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion43";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion44";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "rrockLexp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = -1 * .I[0]\n";
createNode unitConversion -n "unitConversion45";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion46";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "rFootControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rToeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "fkParent3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent4";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent5";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent6";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent7";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode animCurveUL -n "Ref:bip_spine_1FKcontrolZeroGroup_translateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 3.8579037790907411 1 0 2 -2.3837488866104177;
createNode animCurveUL -n "Ref:bip_spine_2FKcontrolZeroGroup_translateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 3.8579037790907411 1 0 2 -2.3837488866104177;
createNode animCurveUL -n "Ref:bip_spine_3FKcontrolZeroGroup_translateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 3.8579037790907411 1 0 2 -2.3837488866104177;
createNode objectSet -n "hands_L";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "hand_R";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode condition -n "switch_bip_upperArm_LFK_to_space_0";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_LFK_to_space_1";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_LFK_to_space_2";
	setAttr ".st" 2;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_LFK_to_space_3";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_0";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_1";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_2";
	setAttr ".st" 2;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_3";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :lightList1;
	setAttr -s 2 ".ln";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 75 ".dsm";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr -l on ".ef";
	setAttr -l on ".bf";
	setAttr -l on ".sf";
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[1]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[2]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[3]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[4]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[5]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[6]";
connectAttr "RefRN.phl[7]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[8]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[9]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "RefRN.phl[10]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[11]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[12]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[13]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[14]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[15]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[16]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[17]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[18]";
connectAttr "RefRN.phl[19]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[20]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "RefRN.phl[21]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[22]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[23]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[24]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[25]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[26]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[27]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[28]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[29]";
connectAttr "RefRN.phl[30]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[31]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "RefRN.phl[32]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[33]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[34]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[35]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[36]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[37]";
connectAttr "RefRN.phl[38]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[39]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[40]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[41]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[42]";
connectAttr "RefRN.phl[43]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[44]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[45]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[46]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[47]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[48]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[49]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[50]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[51]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[52]";
connectAttr "RefRN.phl[53]" "neckControlLockParent_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[54]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[55]" "neckControlLockParent_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[56]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "RefRN.phl[57]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[58]" "neckControlLockParent_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[59]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[60]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[61]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[62]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[63]";
connectAttr "RefRN.phl[64]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[65]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[66]" "headControlLockParent_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[67]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[68]" "headControlLockParent_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[69]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[70]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[71]" "headControlLockParent_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[72]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[73]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[74]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[75]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[76]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[77]";
connectAttr "RefRN.phl[78]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[79]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[80]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[81]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[82]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[83]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[84]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "RefRN.phl[85]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[86]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[87]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[88]";
connectAttr "RefRN.phl[89]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[90]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[91]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[92]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[93]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[94]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[95]" "lElbowControl.zooTrig1";
connectAttr "RefRN.phl[96]" "likHandControl.zooTrig2";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[97]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[98]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[99]";
connectAttr "RefRN.phl[100]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[101]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[102]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[103]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[104]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[105]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[106]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[107]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[108]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[109]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[110]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[111]" "lElbowControl.zooTrig2";
connectAttr "RefRN.phl[112]" "likHandControl.zooTrig3";
connectAttr "RefRN.phl[113]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[114]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[115]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[116]";
connectAttr "RefRN.phl[117]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[118]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[119]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[120]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[121]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[122]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[123]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[124]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[125]" "lElbowControl.zooTrig3";
connectAttr "RefRN.phl[126]" "likHandControl.zooTrig4";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[127]";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[128]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[129]";
connectAttr "RefRN.phl[130]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[131]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[132]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[133]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[134]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[135]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[136]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[137]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[138]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[139]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[140]";
connectAttr "RefRN.phl[141]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[142]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[143]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[144]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[145]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[146]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[147]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[148]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[149]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[150]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[151]";
connectAttr "RefRN.phl[152]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[153]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[154]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[155]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[156]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[157]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[158]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[159]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[160]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[161]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[162]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[163]";
connectAttr "RefRN.phl[164]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[165]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[166]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[167]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[168]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[169]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[170]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[171]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[172]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[173]";
connectAttr "RefRN.phl[174]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[175]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[176]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[177]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[178]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[179]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[180]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[181]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[182]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[183]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[184]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[185]";
connectAttr "RefRN.phl[186]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[187]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[188]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[189]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[190]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[191]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[192]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[193]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[194]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[195]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[196]";
connectAttr "RefRN.phl[197]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[198]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[199]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[200]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[201]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[202]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[203]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[204]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[205]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[206]";
connectAttr "RefRN.phl[207]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[208]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[209]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[210]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[211]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[212]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[213]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[214]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[215]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[216]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[217]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[218]";
connectAttr "RefRN.phl[219]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[220]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[221]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[222]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[223]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[224]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[225]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[226]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[227]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[228]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[229]";
connectAttr "RefRN.phl[230]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[231]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[232]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[233]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[234]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[235]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[236]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[237]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[238]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[239]";
connectAttr "RefRN.phl[240]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[241]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[242]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[243]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[244]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[245]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[246]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[247]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[248]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[249]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[250]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[251]";
connectAttr "RefRN.phl[252]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[253]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[254]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[255]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[256]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[257]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[258]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[259]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[260]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[261]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[262]";
connectAttr "RefRN.phl[263]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[264]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[265]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[266]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[267]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[268]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[269]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[270]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[271]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[272]";
connectAttr "RefRN.phl[273]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[274]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[275]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[276]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[277]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[278]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[279]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[280]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[281]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[282]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[283]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[284]";
connectAttr "RefRN.phl[285]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[286]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[287]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[288]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[289]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[290]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[291]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[292]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[293]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[294]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[295]";
connectAttr "RefRN.phl[296]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[297]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[298]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[299]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[300]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[301]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[302]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[303]";
connectAttr "RefRN.phl[304]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[305]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[306]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[307]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[308]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[309]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[310]" "rElbowControl.zooTrig1";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[311]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[312]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[313]";
connectAttr "RefRN.phl[314]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[315]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[316]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[317]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[318]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[319]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[320]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[321]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[322]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[323]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[324]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[325]" "rElbowControl.zooTrig2";
connectAttr "RefRN.phl[326]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[327]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[328]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[329]";
connectAttr "RefRN.phl[330]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[331]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[332]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[333]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[334]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[335]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[336]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[337]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[338]" "rElbowControl.zooTrig3";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[339]";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[340]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[341]";
connectAttr "RefRN.phl[342]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[343]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[344]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[345]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[346]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[347]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[348]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[349]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[350]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[351]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[352]";
connectAttr "RefRN.phl[353]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[354]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[355]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[356]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[357]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[358]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[359]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[360]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[361]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[362]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[363]";
connectAttr "RefRN.phl[364]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[365]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[366]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[367]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[368]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[369]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[370]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[371]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[372]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[373]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[374]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[375]";
connectAttr "RefRN.phl[376]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[377]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[378]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[379]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[380]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[381]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[382]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[383]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[384]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[385]";
connectAttr "RefRN.phl[386]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[387]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[388]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[389]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[390]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[391]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[392]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[393]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[394]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[395]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[396]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[397]";
connectAttr "RefRN.phl[398]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[399]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[400]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[401]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[402]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[403]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[404]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[405]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[406]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[407]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[408]";
connectAttr "RefRN.phl[409]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[410]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[411]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[412]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[413]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[414]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[415]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[416]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[417]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[418]";
connectAttr "RefRN.phl[419]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[420]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[421]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[422]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[423]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[424]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[425]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[426]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[427]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[428]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[429]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[430]";
connectAttr "RefRN.phl[431]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[432]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[433]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[434]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[435]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[436]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[437]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[438]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[439]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[440]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[441]";
connectAttr "RefRN.phl[442]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[443]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[444]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[445]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[446]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[447]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[448]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[449]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[450]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[451]";
connectAttr "RefRN.phl[452]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[453]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[454]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[455]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[456]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[457]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[458]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[459]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[460]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[461]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[462]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[463]";
connectAttr "RefRN.phl[464]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[465]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[466]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[467]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[468]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[469]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[470]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[471]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[472]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[473]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[474]";
connectAttr "RefRN.phl[475]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[476]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[477]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[478]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[479]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[480]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[481]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[482]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[483]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[484]";
connectAttr "RefRN.phl[485]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[486]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[487]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[488]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[489]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[490]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[491]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[492]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[493]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[494]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[495]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[496]";
connectAttr "RefRN.phl[497]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[498]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[499]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[500]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[501]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[502]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[503]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[504]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[505]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[506]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[507]";
connectAttr "RefRN.phl[508]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[509]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[510]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[511]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.ctx" "RefRN.phl[512]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.cty" "RefRN.phl[513]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.ctz" "RefRN.phl[514]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.crx" "RefRN.phl[515]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.cry" "RefRN.phl[516]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.crz" "RefRN.phl[517]";
connectAttr "RefRN.phl[518]" "Ref:prp_bullet_shoulder_parentConstraint1.crp";
connectAttr "RefRN.phl[519]" "Ref:prp_bullet_shoulder_parentConstraint1.crt";
connectAttr "RefRN.phl[520]" "Ref:prp_bullet_shoulder_parentConstraint1.cro";
connectAttr "RefRN.phl[521]" "Ref:prp_bullet_shoulder_parentConstraint1.cjo";
connectAttr "RefRN.phl[522]" "Ref:prp_bullet_shoulder_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.ctx" "RefRN.phl[523]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.cty" "RefRN.phl[524]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.ctz" "RefRN.phl[525]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.crx" "RefRN.phl[526]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.cry" "RefRN.phl[527]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.crz" "RefRN.phl[528]";
connectAttr "RefRN.phl[529]" "Ref:prp_bullet_backUpper_parentConstraint1.crp";
connectAttr "RefRN.phl[530]" "Ref:prp_bullet_backUpper_parentConstraint1.crt";
connectAttr "RefRN.phl[531]" "Ref:prp_bullet_backUpper_parentConstraint1.cro";
connectAttr "RefRN.phl[532]" "Ref:prp_bullet_backUpper_parentConstraint1.cjo";
connectAttr "RefRN.phl[533]" "Ref:prp_bullet_backUpper_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.ctx" "RefRN.phl[534]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.cty" "RefRN.phl[535]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.ctz" "RefRN.phl[536]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.crx" "RefRN.phl[537]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.cry" "RefRN.phl[538]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.crz" "RefRN.phl[539]";
connectAttr "RefRN.phl[540]" "Ref:prp_bullet_backLower_parentConstraint1.crp";
connectAttr "RefRN.phl[541]" "Ref:prp_bullet_backLower_parentConstraint1.crt";
connectAttr "RefRN.phl[542]" "Ref:prp_bullet_backLower_parentConstraint1.cro";
connectAttr "RefRN.phl[543]" "Ref:prp_bullet_backLower_parentConstraint1.cjo";
connectAttr "RefRN.phl[544]" "Ref:prp_bullet_backLower_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.ctx" "RefRN.phl[545]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.cty" "RefRN.phl[546]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.ctz" "RefRN.phl[547]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.crx" "RefRN.phl[548]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.cry" "RefRN.phl[549]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.crz" "RefRN.phl[550]";
connectAttr "RefRN.phl[551]" "Ref:prp_bullet_chestUpper_parentConstraint1.crp";
connectAttr "RefRN.phl[552]" "Ref:prp_bullet_chestUpper_parentConstraint1.crt";
connectAttr "RefRN.phl[553]" "Ref:prp_bullet_chestUpper_parentConstraint1.cro";
connectAttr "RefRN.phl[554]" "Ref:prp_bullet_chestUpper_parentConstraint1.cjo";
connectAttr "RefRN.phl[555]" "Ref:prp_bullet_chestUpper_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_side_parentConstraint1.ctx" "RefRN.phl[556]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.cty" "RefRN.phl[557]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.ctz" "RefRN.phl[558]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.crx" "RefRN.phl[559]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.cry" "RefRN.phl[560]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.crz" "RefRN.phl[561]";
connectAttr "RefRN.phl[562]" "Ref:prp_bullet_side_parentConstraint1.crp";
connectAttr "RefRN.phl[563]" "Ref:prp_bullet_side_parentConstraint1.crt";
connectAttr "RefRN.phl[564]" "Ref:prp_bullet_side_parentConstraint1.cro";
connectAttr "RefRN.phl[565]" "Ref:prp_bullet_side_parentConstraint1.cjo";
connectAttr "RefRN.phl[566]" "Ref:prp_bullet_side_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.ctx" "RefRN.phl[567]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.cty" "RefRN.phl[568]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.ctz" "RefRN.phl[569]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.crx" "RefRN.phl[570]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.cry" "RefRN.phl[571]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.crz" "RefRN.phl[572]";
connectAttr "RefRN.phl[573]" "Ref:prp_bullet_chestLower_parentConstraint1.crp";
connectAttr "RefRN.phl[574]" "Ref:prp_bullet_chestLower_parentConstraint1.crt";
connectAttr "RefRN.phl[575]" "Ref:prp_bullet_chestLower_parentConstraint1.cro";
connectAttr "RefRN.phl[576]" "Ref:prp_bullet_chestLower_parentConstraint1.cjo";
connectAttr "RefRN.phl[577]" "Ref:prp_bullet_chestLower_parentConstraint1.cpim";
connectAttr "RefRN.phl[578]" "lkneeControl.zooTrig1";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[579]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[580]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[581]";
connectAttr "RefRN.phl[582]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[583]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[584]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[585]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[586]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[587]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[588]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[589]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[590]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[591]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[592]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[593]" "lkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[594]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[595]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[596]";
connectAttr "RefRN.phl[597]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[598]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[599]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[600]" "lkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[601]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[602]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[603]";
connectAttr "RefRN.phl[604]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[605]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[606]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[607]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[608]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[609]";
connectAttr "RefRN.phl[610]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[611]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[612]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[613]" "rkneeControl.zooTrig1";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[614]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[615]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[616]";
connectAttr "RefRN.phl[617]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[618]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[619]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[620]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[621]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[622]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[623]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[624]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[625]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[626]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[627]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[628]" "rkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[629]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[630]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[631]";
connectAttr "RefRN.phl[632]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[633]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[634]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[635]" "rkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[636]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[637]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[638]";
connectAttr "RefRN.phl[639]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[640]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[641]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[642]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[643]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[644]";
connectAttr "RefRN.phl[645]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[646]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[647]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_pack_parentConstraint1.ctx" "RefRN.phl[648]";
connectAttr "Ref:prp_pack_parentConstraint1.cty" "RefRN.phl[649]";
connectAttr "Ref:prp_pack_parentConstraint1.ctz" "RefRN.phl[650]";
connectAttr "Ref:prp_pack_parentConstraint1.crx" "RefRN.phl[651]";
connectAttr "Ref:prp_pack_parentConstraint1.cry" "RefRN.phl[652]";
connectAttr "Ref:prp_pack_parentConstraint1.crz" "RefRN.phl[653]";
connectAttr "RefRN.phl[654]" "Ref:prp_pack_parentConstraint1.crp";
connectAttr "RefRN.phl[655]" "Ref:prp_pack_parentConstraint1.crt";
connectAttr "RefRN.phl[656]" "Ref:prp_pack_parentConstraint1.cro";
connectAttr "RefRN.phl[657]" "Ref:prp_pack_parentConstraint1.cjo";
connectAttr "RefRN.phl[658]" "Ref:prp_pack_parentConstraint1.cpim";
connectAttr "RefRN.phl[659]" "RefRN.phl[660]";
connectAttr "Ref:bip_spine_0FKcontrol.msg" "UpperbodyControl.zooWalkdown";
connectAttr "Ref:bip_spine_0FKcontrolvisExp.out[0]" "Ref:bip_spine_0FKcontrol.v"
		 -l on;
connectAttr "UpperbodyControl.msg" "Ref:bip_spine_0FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_1FKcontrol.msg" "Ref:bip_spine_0FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_1FKcontrolZeroGroup_translateY.o" "Ref:bip_spine_1FKcontrolZeroGroup.ty"
		;
connectAttr "Ref:bip_spine_0FKcontrol.msg" "Ref:bip_spine_1FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_2FKcontrol.msg" "Ref:bip_spine_1FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_2FKcontrolZeroGroup_translateY.o" "Ref:bip_spine_2FKcontrolZeroGroup.ty"
		;
connectAttr "Ref:bip_spine_1FKcontrol.msg" "Ref:bip_spine_2FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_3FKcontrol.msg" "Ref:bip_spine_2FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_3FKcontrolZeroGroup_translateY.o" "Ref:bip_spine_3FKcontrolZeroGroup.ty"
		;
connectAttr "Ref:bip_spine_2FKcontrol.msg" "Ref:bip_spine_3FKcontrol.zooWalkup";
connectAttr "neckControl.msg" "Ref:bip_spine_3FKcontrol.zooWalkdown";
connectAttr "ikChestvisExp.out[0]" "ikChest.v" -l on;
connectAttr "transformGeometry1.og" "ikChestShape.cr";
connectAttr "Ref:bip_hip_LIK_pointConstraint1.ctx" "Ref:bip_hip_LIK.tx" -l on;
connectAttr "Ref:bip_hip_LIK_pointConstraint1.cty" "Ref:bip_hip_LIK.ty" -l on;
connectAttr "Ref:bip_hip_LIK_pointConstraint1.ctz" "Ref:bip_hip_LIK.tz" -l on;
connectAttr "Ref:bip_hip_LIK.s" "Ref:bip_knee_LIK.is";
connectAttr "Ref:bip_knee_LIK.s" "Ref:bip_foot_LIK.is";
connectAttr "Ref:bip_foot_LIK.s" "Ref:bip_toe_LIK.is";
connectAttr "Ref:bip_toe_LIK.s" "Ref:bip_toeEnd_LIK.is";
connectAttr "Ref:bip_toeEnd_LIK.tx" "effector5.tx";
connectAttr "Ref:bip_toeEnd_LIK.ty" "effector5.ty";
connectAttr "Ref:bip_toeEnd_LIK.tz" "effector5.tz";
connectAttr "Ref:bip_toe_LIK.tx" "effector4.tx";
connectAttr "Ref:bip_toe_LIK.ty" "effector4.ty";
connectAttr "Ref:bip_toe_LIK.tz" "effector4.tz";
connectAttr "Ref:bip_foot_LIK.tx" "effector3.tx";
connectAttr "Ref:bip_foot_LIK.ty" "effector3.ty";
connectAttr "Ref:bip_foot_LIK.tz" "effector3.tz";
connectAttr "Ref:bip_hip_LIK_pointConstraint1.w0" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_LIK.pim" "Ref:bip_hip_LIK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_LIK.rp" "Ref:bip_hip_LIK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_LIK.rpt" "Ref:bip_hip_LIK_pointConstraint1.crt";
connectAttr "Ref:bip_hip_LFKvisExp.out[0]" "Ref:bip_hip_LFK.v" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.ctx" "Ref:bip_hip_LFK.tx" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.cty" "Ref:bip_hip_LFK.ty" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.ctz" "Ref:bip_hip_LFK.tz" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.w0" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_LFK.pim" "Ref:bip_hip_LFK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_LFK.rp" "Ref:bip_hip_LFK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_LFK.rpt" "Ref:bip_hip_LFK_pointConstraint1.crt";
connectAttr "Ref:bip_hip_RIK_pointConstraint1.ctx" "Ref:bip_hip_RIK.tx" -l on;
connectAttr "Ref:bip_hip_RIK_pointConstraint1.cty" "Ref:bip_hip_RIK.ty" -l on;
connectAttr "Ref:bip_hip_RIK_pointConstraint1.ctz" "Ref:bip_hip_RIK.tz" -l on;
connectAttr "Ref:bip_hip_RIK.s" "Ref:bip_knee_RIK.is";
connectAttr "Ref:bip_knee_RIK.s" "Ref:bip_foot_RIK.is";
connectAttr "Ref:bip_foot_RIK.s" "Ref:bip_toe_RIK.is";
connectAttr "Ref:bip_toe_RIK.s" "Ref:bip_toeEnd_RIK.is";
connectAttr "Ref:bip_toeEnd_RIK.tx" "effector9.tx";
connectAttr "Ref:bip_toeEnd_RIK.ty" "effector9.ty";
connectAttr "Ref:bip_toeEnd_RIK.tz" "effector9.tz";
connectAttr "Ref:bip_toe_RIK.tx" "effector8.tx";
connectAttr "Ref:bip_toe_RIK.ty" "effector8.ty";
connectAttr "Ref:bip_toe_RIK.tz" "effector8.tz";
connectAttr "Ref:bip_foot_RIK.tx" "effector7.tx";
connectAttr "Ref:bip_foot_RIK.ty" "effector7.ty";
connectAttr "Ref:bip_foot_RIK.tz" "effector7.tz";
connectAttr "Ref:bip_hip_RIK_pointConstraint1.w0" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RIK.pim" "Ref:bip_hip_RIK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_RIK.rp" "Ref:bip_hip_RIK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_RIK.rpt" "Ref:bip_hip_RIK_pointConstraint1.crt";
connectAttr "Ref:bip_hip_RFKvisExp.out[0]" "Ref:bip_hip_RFK.v" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.ctx" "Ref:bip_hip_RFK.tx" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.cty" "Ref:bip_hip_RFK.ty" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.ctz" "Ref:bip_hip_RFK.tz" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.w0" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RFK.pim" "Ref:bip_hip_RFK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_RFK.rp" "Ref:bip_hip_RFK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_RFK.rpt" "Ref:bip_hip_RFK_pointConstraint1.crt";
connectAttr "stretchyBack.out[0]" "Ref:bip_spine_0ik.sy";
connectAttr "Ref:bip_spine_0ik.s" "Ref:bip_spine_1ik.is";
connectAttr "stretchyBack1.out[0]" "Ref:bip_spine_1ik.sy";
connectAttr "Ref:bip_spine_1ik.s" "Ref:bip_spine_2ik.is";
connectAttr "stretchyBack2.out[0]" "Ref:bip_spine_2ik.sy";
connectAttr "Ref:bip_spine_2ik.s" "Ref:bip_spine_3ik.is";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.crx" "Ref:bip_spine_3ik.rx";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.cry" "Ref:bip_spine_3ik.ry";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.crz" "Ref:bip_spine_3ik.rz";
connectAttr "stretchyBack3.out[0]" "Ref:bip_spine_3ik.sy";
connectAttr "Ref:bip_spine_3ik.ro" "Ref:bip_spine_3ik_orientConstraint1.cro";
connectAttr "Ref:bip_spine_3ik.pim" "Ref:bip_spine_3ik_orientConstraint1.cpim";
connectAttr "Ref:bip_spine_3ik.jo" "Ref:bip_spine_3ik_orientConstraint1.cjo";
connectAttr "ikChest.r" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tr";
connectAttr "ikChest.ro" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tro";
connectAttr "ikChest.pm" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.w0" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3ik.tx" "effector1.tx";
connectAttr "Ref:bip_spine_3ik.ty" "effector1.ty";
connectAttr "Ref:bip_spine_3ik.tz" "effector1.tz";
connectAttr "Ref:bip_spine_0ik.msg" "ikSpine.hsj";
connectAttr "effector1.hp" "ikSpine.hee";
connectAttr "ikSplineSolver.msg" "ikSpine.hsv";
connectAttr "SpineCurveShape.ws" "ikSpine.ic";
connectAttr "unitConversion2.o" "ikSpine.twi";
connectAttr "SpineCurvevisExp.out[0]" "SpineCurve.v";
connectAttr "ikPelvisClusterCluster.og[0]" "SpineCurveShape.cr";
connectAttr "tweak3.pl[0].cp[0]" "SpineCurveShape.twl";
connectAttr "cluster9GroupId.id" "SpineCurveShape.iog.og[0].gid";
connectAttr "cluster9Set.mwc" "SpineCurveShape.iog.og[0].gco";
connectAttr "groupId6.id" "SpineCurveShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "SpineCurveShape.iog.og[1].gco";
connectAttr "cluster10GroupId.id" "SpineCurveShape.iog.og[2].gid";
connectAttr "cluster10Set.mwc" "SpineCurveShape.iog.og[2].gco";
connectAttr "chestParent_parentConstraint1.ctx" "chestParent.tx";
connectAttr "chestParent_parentConstraint1.cty" "chestParent.ty";
connectAttr "chestParent_parentConstraint1.ctz" "chestParent.tz";
connectAttr "chestParent_parentConstraint1.crx" "chestParent.rx";
connectAttr "chestParent_parentConstraint1.cry" "chestParent.ry";
connectAttr "chestParent_parentConstraint1.crz" "chestParent.rz";
connectAttr "chestParent.ro" "chestParent_parentConstraint1.cro";
connectAttr "chestParent.pim" "chestParent_parentConstraint1.cpim";
connectAttr "chestParent.rp" "chestParent_parentConstraint1.crp";
connectAttr "chestParent.rpt" "chestParent_parentConstraint1.crt";
connectAttr "Ref:bip_spine_3FKcontrol.t" "chestParent_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "chestParent_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "chestParent_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "chestParent_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "chestParent_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "chestParent_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "chestParent_parentConstraint1.tg[0].tpm"
		;
connectAttr "chestParent_parentConstraint1.w0" "chestParent_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3ik.t" "chestParent_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_3ik.rp" "chestParent_parentConstraint1.tg[1].trp";
connectAttr "Ref:bip_spine_3ik.rpt" "chestParent_parentConstraint1.tg[1].trt";
connectAttr "Ref:bip_spine_3ik.r" "chestParent_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_3ik.ro" "chestParent_parentConstraint1.tg[1].tro";
connectAttr "Ref:bip_spine_3ik.s" "chestParent_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_3ik.pm" "chestParent_parentConstraint1.tg[1].tpm";
connectAttr "Ref:bip_spine_3ik.jo" "chestParent_parentConstraint1.tg[1].tjo";
connectAttr "chestParent_parentConstraint1.w1" "chestParent_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent.out[0]" "chestParent_parentConstraint1.w0";
connectAttr "main.spineIKFK" "chestParent_parentConstraint1.w1";
connectAttr "lShoulderControl_pointConstraint1.ctx" "lShoulderControl.tx" -l on;
connectAttr "lShoulderControl_pointConstraint1.cty" "lShoulderControl.ty" -l on;
connectAttr "lShoulderControl_pointConstraint1.ctz" "lShoulderControl.tz" -l on;
connectAttr "Ref:bip_spine_3FKcontrol.msg" "lShoulderControl.zooWalkup";
connectAttr "Ref:bip_upperArm_LFK.msg" "lShoulderControl.zooWalkdown";
connectAttr "lShoulderControl_pointConstraint1.w0" "lShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "lShoulderControl.pim" "lShoulderControl_pointConstraint1.cpim";
connectAttr "lShoulderControl.rp" "lShoulderControl_pointConstraint1.crp";
connectAttr "lShoulderControl.rpt" "lShoulderControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crx" "Ref:bip_upperArm_LFKZeroGroup.rx"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cry" "Ref:bip_upperArm_LFKZeroGroup.ry"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crz" "Ref:bip_upperArm_LFKZeroGroup.rz"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKvisExp.out[0]" "Ref:bip_upperArm_LFK.v" -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.ctx" "Ref:bip_upperArm_LFK.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.cty" "Ref:bip_upperArm_LFK.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.ctz" "Ref:bip_upperArm_LFK.tz"
		 -l on;
connectAttr "lShoulderControl.msg" "Ref:bip_upperArm_LFK.zooWalkup";
connectAttr "Ref:bip_lowerArm_LFK.msg" "Ref:bip_upperArm_LFK.zooWalkdown";
connectAttr "Ref:bip_upperArm_LFK.msg" "Ref:bip_lowerArm_LFK.zooWalkup";
connectAttr "Ref:bip_hand_LFK.msg" "Ref:bip_lowerArm_LFK.zooWalkdown";
connectAttr "lHandControl.msg" "Ref:bip_hand_LFK.zooWalkdown";
connectAttr "Ref:bip_lowerArm_LFK.msg" "Ref:bip_hand_LFK.zooWalkup";
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.w0" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LFK.pim" "Ref:bip_upperArm_LFK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LFK.rp" "Ref:bip_upperArm_LFK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_LFK.rpt" "Ref:bip_upperArm_LFK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.pim" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crt"
		;
connectAttr "lShoulderControl.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "lShoulderControl.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "lShoulderControl.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "lShoulderControl.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "lShoulderControl.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "lShoulderControl.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "lShoulderControl.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w0" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3FKcontrol.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w1" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tt"
		;
connectAttr "UpperbodyControl.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].trp"
		;
connectAttr "UpperbodyControl.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].trt"
		;
connectAttr "UpperbodyControl.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tr"
		;
connectAttr "UpperbodyControl.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tro"
		;
connectAttr "UpperbodyControl.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].ts"
		;
connectAttr "UpperbodyControl.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w2" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tw"
		;
connectAttr "main.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tt";
connectAttr "main.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].trp"
		;
connectAttr "main.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].trt"
		;
connectAttr "main.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tr";
connectAttr "main.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tro"
		;
connectAttr "main.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].ts";
connectAttr "main.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w3" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tw"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_0.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w0"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_1.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w1"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_2.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w2"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_3.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w3"
		;
connectAttr "rShoulderControl_pointConstraint1.ctx" "rShoulderControl.tx" -l on;
connectAttr "rShoulderControl_pointConstraint1.cty" "rShoulderControl.ty" -l on;
connectAttr "rShoulderControl_pointConstraint1.ctz" "rShoulderControl.tz" -l on;
connectAttr "Ref:bip_upperArm_RFK.msg" "rShoulderControl.zooWalkdown";
connectAttr "Ref:bip_spine_3FKcontrol.msg" "rShoulderControl.zooWalkup";
connectAttr "rShoulderControl_pointConstraint1.w0" "rShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rShoulderControl.pim" "rShoulderControl_pointConstraint1.cpim";
connectAttr "rShoulderControl.rp" "rShoulderControl_pointConstraint1.crp";
connectAttr "rShoulderControl.rpt" "rShoulderControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crx" "Ref:bip_upperArm_RFKZeroGroup.rx"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cry" "Ref:bip_upperArm_RFKZeroGroup.ry"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crz" "Ref:bip_upperArm_RFKZeroGroup.rz"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKvisExp.out[0]" "Ref:bip_upperArm_RFK.v" -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.ctx" "Ref:bip_upperArm_RFK.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.cty" "Ref:bip_upperArm_RFK.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.ctz" "Ref:bip_upperArm_RFK.tz"
		 -l on;
connectAttr "rShoulderControl.msg" "Ref:bip_upperArm_RFK.zooWalkup";
connectAttr "Ref:bip_lowerArm_RFK.msg" "Ref:bip_upperArm_RFK.zooWalkdown";
connectAttr "Ref:bip_upperArm_RFK.msg" "Ref:bip_lowerArm_RFK.zooWalkup";
connectAttr "Ref:bip_hand_RFK.msg" "Ref:bip_lowerArm_RFK.zooWalkdown";
connectAttr "Ref:bip_lowerArm_RFK.msg" "Ref:bip_hand_RFK.zooWalkup";
connectAttr "rHandControl.msg" "Ref:bip_hand_RFK.zooWalkdown";
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.w0" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RFK.pim" "Ref:bip_upperArm_RFK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RFK.rp" "Ref:bip_upperArm_RFK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_RFK.rpt" "Ref:bip_upperArm_RFK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.pim" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crt"
		;
connectAttr "rShoulderControl.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "rShoulderControl.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "rShoulderControl.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "rShoulderControl.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "rShoulderControl.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "rShoulderControl.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "rShoulderControl.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w0" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3FKcontrol.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w1" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tt"
		;
connectAttr "UpperbodyControl.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].trp"
		;
connectAttr "UpperbodyControl.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].trt"
		;
connectAttr "UpperbodyControl.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tr"
		;
connectAttr "UpperbodyControl.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tro"
		;
connectAttr "UpperbodyControl.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].ts"
		;
connectAttr "UpperbodyControl.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w2" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tw"
		;
connectAttr "main.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tt";
connectAttr "main.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].trp"
		;
connectAttr "main.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].trt"
		;
connectAttr "main.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tr";
connectAttr "main.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tro"
		;
connectAttr "main.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].ts";
connectAttr "main.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w3" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tw"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_0.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w0"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_1.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w1"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_2.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w2"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_3.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w3"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.msg" "Ref:prp_bullet_shoulderControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_backUpperControl.msg" "Ref:prp_bullet_shoulderControl.zooWalkup"
		;
connectAttr "neckControlLockParent_orientConstraint1.crx" "neckControlLockParent.rx"
		;
connectAttr "neckControlLockParent_orientConstraint1.cry" "neckControlLockParent.ry"
		;
connectAttr "neckControlLockParent_orientConstraint1.crz" "neckControlLockParent.rz"
		;
connectAttr "neckControlLockParent_pointConstraint1.ctx" "neckControlLockParent.tx"
		;
connectAttr "neckControlLockParent_pointConstraint1.cty" "neckControlLockParent.ty"
		;
connectAttr "neckControlLockParent_pointConstraint1.ctz" "neckControlLockParent.tz"
		;
connectAttr "neckControlLockParent.ro" "neckControlLockParent_orientConstraint1.cro"
		;
connectAttr "neckControlLockParent.pim" "neckControlLockParent_orientConstraint1.cpim"
		;
connectAttr "neckControlZeroGroup.r" "neckControlLockParent_orientConstraint1.tg[0].tr"
		;
connectAttr "neckControlZeroGroup.ro" "neckControlLockParent_orientConstraint1.tg[0].tro"
		;
connectAttr "neckControlZeroGroup.pm" "neckControlLockParent_orientConstraint1.tg[0].tpm"
		;
connectAttr "neckControlLockParent_orientConstraint1.w0" "neckControlLockParent_orientConstraint1.tg[0].tw"
		;
connectAttr "neckControlLockParentlock.out[0]" "neckControlLockParent_orientConstraint1.w0"
		;
connectAttr "neckControlLockParent_pointConstraint1.w0" "neckControlLockParent_pointConstraint1.tg[0].tw"
		;
connectAttr "neckControlLockParent.pim" "neckControlLockParent_pointConstraint1.cpim"
		;
connectAttr "neckControlLockParent.rp" "neckControlLockParent_pointConstraint1.crp"
		;
connectAttr "neckControlLockParent.rpt" "neckControlLockParent_pointConstraint1.crt"
		;
connectAttr "neckControl_pointConstraint1.ctx" "neckControl.tx" -l on;
connectAttr "neckControl_pointConstraint1.cty" "neckControl.ty" -l on;
connectAttr "neckControl_pointConstraint1.ctz" "neckControl.tz" -l on;
connectAttr "Ref:bip_spine_3FKcontrol.msg" "neckControl.zooWalkup";
connectAttr "headControl.msg" "neckControl.zooWalkdown";
connectAttr "neckControl_pointConstraint1.w0" "neckControl_pointConstraint1.tg[0].tw"
		;
connectAttr "neckControl.pim" "neckControl_pointConstraint1.cpim";
connectAttr "neckControl.rp" "neckControl_pointConstraint1.crp";
connectAttr "neckControl.rpt" "neckControl_pointConstraint1.crt";
connectAttr "headControlLockParent_orientConstraint1.crx" "headControlLockParent.rx"
		;
connectAttr "headControlLockParent_orientConstraint1.cry" "headControlLockParent.ry"
		;
connectAttr "headControlLockParent_orientConstraint1.crz" "headControlLockParent.rz"
		;
connectAttr "headControlLockParent_pointConstraint1.ctx" "headControlLockParent.tx"
		;
connectAttr "headControlLockParent_pointConstraint1.cty" "headControlLockParent.ty"
		;
connectAttr "headControlLockParent_pointConstraint1.ctz" "headControlLockParent.tz"
		;
connectAttr "headControlLockParent.ro" "headControlLockParent_orientConstraint1.cro"
		;
connectAttr "headControlLockParent.pim" "headControlLockParent_orientConstraint1.cpim"
		;
connectAttr "headControlZeroGroup.r" "headControlLockParent_orientConstraint1.tg[0].tr"
		;
connectAttr "headControlZeroGroup.ro" "headControlLockParent_orientConstraint1.tg[0].tro"
		;
connectAttr "headControlZeroGroup.pm" "headControlLockParent_orientConstraint1.tg[0].tpm"
		;
connectAttr "headControlLockParent_orientConstraint1.w0" "headControlLockParent_orientConstraint1.tg[0].tw"
		;
connectAttr "headControlLockParentlock.out[0]" "headControlLockParent_orientConstraint1.w0"
		;
connectAttr "headControlLockParent_pointConstraint1.w0" "headControlLockParent_pointConstraint1.tg[0].tw"
		;
connectAttr "headControlLockParent.pim" "headControlLockParent_pointConstraint1.cpim"
		;
connectAttr "headControlLockParent.rp" "headControlLockParent_pointConstraint1.crp"
		;
connectAttr "headControlLockParent.rpt" "headControlLockParent_pointConstraint1.crt"
		;
connectAttr "headControl_pointConstraint1.ctx" "headControl.tx" -l on;
connectAttr "headControl_pointConstraint1.cty" "headControl.ty" -l on;
connectAttr "headControl_pointConstraint1.ctz" "headControl.tz" -l on;
connectAttr "neckControl.msg" "headControl.zooWalkup";
connectAttr "headControl_pointConstraint1.w0" "headControl_pointConstraint1.tg[0].tw"
		;
connectAttr "headControl.pim" "headControl_pointConstraint1.cpim";
connectAttr "headControl.rp" "headControl_pointConstraint1.crp";
connectAttr "headControl.rpt" "headControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.ctx" "Ref:bip_upperArm_LIK.tx"
		;
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.cty" "Ref:bip_upperArm_LIK.ty"
		;
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.ctz" "Ref:bip_upperArm_LIK.tz"
		;
connectAttr "Ref:bip_upperArm_LIK.s" "Ref:bip_lowerArm_LIK.is";
connectAttr "Ref:bip_lowerArm_LIK.s" "Ref:bip_hand_LIK.is";
connectAttr "Ref:bip_hand_LIK.tx" "effector2.tx";
connectAttr "Ref:bip_hand_LIK.ty" "effector2.ty";
connectAttr "Ref:bip_hand_LIK.tz" "effector2.tz";
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.w0" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LIK.pim" "Ref:bip_upperArm_LIK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LIK.rp" "Ref:bip_upperArm_LIK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_LIK.rpt" "Ref:bip_upperArm_LIK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_LIK.msg" "Ref:bip_hand_LIKikHandle.hsj";
connectAttr "effector2.hp" "Ref:bip_hand_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_hand_LIKikHandle.hsv";
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.ctx" "Ref:bip_hand_LIKikHandle.tx"
		;
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.cty" "Ref:bip_hand_LIKikHandle.ty"
		;
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.ctz" "Ref:bip_hand_LIKikHandle.tz"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_hand_LIKikHandle.pvx"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.cty" "Ref:bip_hand_LIKikHandle.pvy"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_hand_LIKikHandle.pvz"
		;
connectAttr "Ref:bip_hand_LIKikHandle.pim" "Ref:bip_hand_LIKikHandle_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_hand_LIKikHandle.rp" "Ref:bip_hand_LIKikHandle_pointConstraint1.crp"
		;
connectAttr "Ref:bip_hand_LIKikHandle.rpt" "Ref:bip_hand_LIKikHandle_pointConstraint1.crt"
		;
connectAttr "likHandControl.t" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "likHandControl.rp" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "likHandControl.rpt" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "likHandControl.pm" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.w0" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hand_LIKikHandle.pim" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LIK.pm" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_upperArm_LIK.t" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "lElbowControl.t" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "lElbowControl.rp" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "lElbowControl.rpt" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "lElbowControl.pm" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.w0" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "likHandControlGroup_parentConstraint1.ctx" "likHandControlGroup.tx"
		;
connectAttr "likHandControlGroup_parentConstraint1.cty" "likHandControlGroup.ty"
		;
connectAttr "likHandControlGroup_parentConstraint1.ctz" "likHandControlGroup.tz"
		;
connectAttr "likHandControlGroup_parentConstraint1.crx" "likHandControlGroup.rx"
		;
connectAttr "likHandControlGroup_parentConstraint1.cry" "likHandControlGroup.ry"
		;
connectAttr "likHandControlGroup_parentConstraint1.crz" "likHandControlGroup.rz"
		;
connectAttr "likHandControlGroup.ro" "likHandControlGroup_parentConstraint1.cro"
		;
connectAttr "likHandControlGroup.pim" "likHandControlGroup_parentConstraint1.cpim"
		;
connectAttr "likHandControlGroup.rp" "likHandControlGroup_parentConstraint1.crp"
		;
connectAttr "likHandControlGroup.rpt" "likHandControlGroup_parentConstraint1.crt"
		;
connectAttr "UpperbodyControl.t" "likHandControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "UpperbodyControl.rp" "likHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "UpperbodyControl.rpt" "likHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "UpperbodyControl.r" "likHandControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "UpperbodyControl.ro" "likHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "UpperbodyControl.s" "likHandControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "UpperbodyControl.pm" "likHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "likHandControlGroup_parentConstraint1.w0" "likHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "likHandControllockExp.out[0]" "likHandControlGroup_parentConstraint1.w0"
		;
connectAttr "likHandControlvisExp.out[0]" "likHandControl.v" -l on;
connectAttr "likHandControl_orientConstraint1.crx" "likHandControl.rx" -l on;
connectAttr "likHandControl_orientConstraint1.cry" "likHandControl.ry" -l on;
connectAttr "likHandControl_orientConstraint1.crz" "likHandControl.rz" -l on;
connectAttr "lHandControl.msg" "likHandControl.zooTrig1";
connectAttr "lHandControl.msg" "likHandControl.zooWalkdown";
connectAttr "lElbowControl.msg" "likHandControl.zooWalkleft";
connectAttr "lElbowControl.msg" "likHandControl.zooWalkright";
connectAttr "lHandControl.msg" "likHandControl.zooWalkup";
connectAttr "Ref:bip_upperArm_LFK.msg" "likHandControl.zooTrig5";
connectAttr "Ref:bip_lowerArm_LFK.msg" "likHandControl.zooTrig6";
connectAttr "Ref:bip_hand_LFK.msg" "likHandControl.zooTrig7";
connectAttr "main.msg" "likHandControl.zooTrig8";
connectAttr "likHandControl_orientConstraint1.w0" "likHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.aim" "likHandControl_orientConstraint1.w0";
connectAttr "likHandControl.ro" "likHandControl_orientConstraint1.cro";
connectAttr "likHandControl.pim" "likHandControl_orientConstraint1.cpim";
connectAttr "lElbowControlvisExp.out[0]" "lElbowControl.v" -l on;
connectAttr "likHandControl.msg" "lElbowControl.zooWalkright";
connectAttr "likHandControl.msg" "lElbowControl.zooWalkleft";
connectAttr "lHandControlGroup_parentConstraint1.ctx" "lHandControlGroup.tx";
connectAttr "lHandControlGroup_parentConstraint1.cty" "lHandControlGroup.ty";
connectAttr "lHandControlGroup_parentConstraint1.ctz" "lHandControlGroup.tz";
connectAttr "lHandControlGroup_parentConstraint1.crx" "lHandControlGroup.rx";
connectAttr "lHandControlGroup_parentConstraint1.cry" "lHandControlGroup.ry";
connectAttr "lHandControlGroup_parentConstraint1.crz" "lHandControlGroup.rz";
connectAttr "lHandControl_pointConstraint1.ctx" "lHandControl.tx" -l on;
connectAttr "lHandControl_pointConstraint1.cty" "lHandControl.ty" -l on;
connectAttr "lHandControl_pointConstraint1.ctz" "lHandControl.tz" -l on;
connectAttr "likHandControl.msg" "lHandControl.zooWalkup";
connectAttr "likHandControl.msg" "lHandControl.zooWalkdown";
connectAttr "unitConversion3.o" "Ref:bip_thumb_0_LControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_LControl.msg" "Ref:bip_thumb_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_thumb_0_LControl.zooWalkup";
connectAttr "unitConversion4.o" "Ref:bip_thumb_1_LControlrollGroup.rx";
connectAttr "Ref:bip_thumb_0_LControl.msg" "Ref:bip_thumb_1_LControl.zooWalkup";
connectAttr "Ref:bip_thumb_2_LControl.msg" "Ref:bip_thumb_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion5.o" "Ref:bip_thumb_2_LControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_LControl.msg" "Ref:bip_thumb_2_LControl.zooWalkup";
connectAttr "unitConversion6.o" "Ref:bip_index_0_LControlrollGroup.rx";
connectAttr "Ref:bip_index_1_LControl.msg" "Ref:bip_index_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_index_0_LControl.zooWalkup";
connectAttr "unitConversion7.o" "Ref:bip_index_1_LControlrollGroup.rx";
connectAttr "Ref:bip_index_0_LControl.msg" "Ref:bip_index_1_LControl.zooWalkup";
connectAttr "Ref:bip_index_2_LControl.msg" "Ref:bip_index_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion8.o" "Ref:bip_index_2_LControlrollGroup.rx";
connectAttr "Ref:bip_index_1_LControl.msg" "Ref:bip_index_2_LControl.zooWalkup";
connectAttr "unitConversion9.o" "Ref:bip_middle_0_LControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_LControl.msg" "Ref:bip_middle_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_middle_0_LControl.zooWalkup";
connectAttr "unitConversion10.o" "Ref:bip_middle_1_LControlrollGroup.rx";
connectAttr "Ref:bip_middle_0_LControl.msg" "Ref:bip_middle_1_LControl.zooWalkup"
		;
connectAttr "Ref:bip_middle_2_LControl.msg" "Ref:bip_middle_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion11.o" "Ref:bip_middle_2_LControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_LControl.msg" "Ref:bip_middle_2_LControl.zooWalkup"
		;
connectAttr "unitConversion12.o" "Ref:bip_ring_0_LControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_LControl.msg" "Ref:bip_ring_0_LControl.zooWalkdown";
connectAttr "lHandControl.msg" "Ref:bip_ring_0_LControl.zooWalkup";
connectAttr "unitConversion13.o" "Ref:bip_ring_1_LControlrollGroup.rx";
connectAttr "Ref:bip_ring_0_LControl.msg" "Ref:bip_ring_1_LControl.zooWalkup";
connectAttr "Ref:bip_ring_2_LControl.msg" "Ref:bip_ring_1_LControl.zooWalkdown";
connectAttr "unitConversion14.o" "Ref:bip_ring_2_LControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_LControl.msg" "Ref:bip_ring_2_LControl.zooWalkup";
connectAttr "unitConversion15.o" "Ref:bip_pinky_0_LControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_LControl.msg" "Ref:bip_pinky_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_pinky_0_LControl.zooWalkup";
connectAttr "unitConversion16.o" "Ref:bip_pinky_1_LControlrollGroup.rx";
connectAttr "Ref:bip_pinky_0_LControl.msg" "Ref:bip_pinky_1_LControl.zooWalkup";
connectAttr "Ref:bip_pinky_2_LControl.msg" "Ref:bip_pinky_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion17.o" "Ref:bip_pinky_2_LControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_LControl.msg" "Ref:bip_pinky_2_LControl.zooWalkup";
connectAttr "lHandControl_pointConstraint1.w0" "lHandControl_pointConstraint1.tg[0].tw"
		;
connectAttr "lHandControl.pim" "lHandControl_pointConstraint1.cpim";
connectAttr "lHandControl.rp" "lHandControl_pointConstraint1.crp";
connectAttr "lHandControl.rpt" "lHandControl_pointConstraint1.crt";
connectAttr "lHandControlGroup.ro" "lHandControlGroup_parentConstraint1.cro";
connectAttr "lHandControlGroup.pim" "lHandControlGroup_parentConstraint1.cpim";
connectAttr "lHandControlGroup.rp" "lHandControlGroup_parentConstraint1.crp";
connectAttr "lHandControlGroup.rpt" "lHandControlGroup_parentConstraint1.crt";
connectAttr "Ref:bip_hand_LFK.t" "lHandControlGroup_parentConstraint1.tg[0].tt";
connectAttr "Ref:bip_hand_LFK.rp" "lHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_hand_LFK.rpt" "lHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_hand_LFK.r" "lHandControlGroup_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hand_LFK.ro" "lHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_hand_LFK.s" "lHandControlGroup_parentConstraint1.tg[0].ts";
connectAttr "Ref:bip_hand_LFK.pm" "lHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "lHandControlGroup_parentConstraint1.w0" "lHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.t" "lHandControlGroup_parentConstraint1.tg[1].tt";
connectAttr "likHandControl.rp" "lHandControlGroup_parentConstraint1.tg[1].trp";
connectAttr "likHandControl.rpt" "lHandControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "likHandControl.r" "lHandControlGroup_parentConstraint1.tg[1].tr";
connectAttr "likHandControl.ro" "lHandControlGroup_parentConstraint1.tg[1].tro";
connectAttr "likHandControl.s" "lHandControlGroup_parentConstraint1.tg[1].ts";
connectAttr "likHandControl.pm" "lHandControlGroup_parentConstraint1.tg[1].tpm";
connectAttr "lHandControlGroup_parentConstraint1.w1" "lHandControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent1.out[0]" "lHandControlGroup_parentConstraint1.w0";
connectAttr "main.lArmIKFK" "lHandControlGroup_parentConstraint1.w1";
connectAttr "lkneeControlvisExp.out[0]" "lkneeControl.v" -l on;
connectAttr "lFootControl.msg" "lkneeControl.zooWalkright";
connectAttr "lFootControl.msg" "lkneeControl.zooWalkleft";
connectAttr "lFootControlvisExp.out[0]" "lFootControl.v" -l on;
connectAttr "lToeControl.msg" "lFootControl.zooWalkdown";
connectAttr "lToeControl.msg" "lFootControl.zooWalkup";
connectAttr "lkneeControl.msg" "lFootControl.zooWalkleft";
connectAttr "lkneeControl.msg" "lFootControl.zooWalkright";
connectAttr "lReverseControlZeroGroup_parentConstraint1.ctx" "lReverseControlZeroGroup.tx"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.cty" "lReverseControlZeroGroup.ty"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.ctz" "lReverseControlZeroGroup.tz"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.crx" "lReverseControlZeroGroup.rx"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.cry" "lReverseControlZeroGroup.ry"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.crz" "lReverseControlZeroGroup.rz"
		;
connectAttr "unitConversion24.o" "lReverseBall.ry";
connectAttr "unitConversion22.o" "lReverseLroll.rz";
connectAttr "unitConversion23.o" "lReverseRroll.rz";
connectAttr "unitConversion18.o" "lReverseHeelLift.rx";
connectAttr "unitConversion20.o" "lReverseToeLift.rx";
connectAttr "unitConversion19.o" "lReverseAnkleLift.rx";
connectAttr "Ref:bip_hip_LIK.msg" "Ref:bip_foot_LIKikHandle.hsj";
connectAttr "effector3.hp" "Ref:bip_foot_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_foot_LIKikHandle.hsv";
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_foot_LIKikHandle.pvx"
		;
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.cty" "Ref:bip_foot_LIKikHandle.pvy"
		;
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_foot_LIKikHandle.pvz"
		;
connectAttr "Ref:bip_foot_LIKikHandle.pim" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_hip_LIK.pm" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_hip_LIK.t" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "lkneeControl.t" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "lkneeControl.rp" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "lkneeControl.rpt" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "lkneeControl.pm" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.w0" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_LIK.msg" "Ref:bip_toe_LIKikHandle.hsj";
connectAttr "effector4.hp" "Ref:bip_toe_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toe_LIKikHandle.hsv";
connectAttr "unitConversion21.o" "Ref:bip_toe_LIKikHandle.twi";
connectAttr "lReverseToeWiggle_orientConstraint1.crx" "lReverseToeWiggle.rx";
connectAttr "lReverseToeWiggle_orientConstraint1.cry" "lReverseToeWiggle.ry";
connectAttr "lReverseToeWiggle_orientConstraint1.crz" "lReverseToeWiggle.rz";
connectAttr "Ref:bip_toe_LIK.msg" "Ref:bip_toeEnd_LIKikHandle.hsj";
connectAttr "effector5.hp" "Ref:bip_toeEnd_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toeEnd_LIKikHandle.hsv";
connectAttr "lReverseToeWiggle.ro" "lReverseToeWiggle_orientConstraint1.cro";
connectAttr "lReverseToeWiggle.pim" "lReverseToeWiggle_orientConstraint1.cpim";
connectAttr "lToeControl.r" "lReverseToeWiggle_orientConstraint1.tg[0].tr";
connectAttr "lToeControl.ro" "lReverseToeWiggle_orientConstraint1.tg[0].tro";
connectAttr "lToeControl.pm" "lReverseToeWiggle_orientConstraint1.tg[0].tpm";
connectAttr "lReverseToeWiggle_orientConstraint1.w0" "lReverseToeWiggle_orientConstraint1.tg[0].tw"
		;
connectAttr "lToeControlvisExp.out[0]" "lToeControl.v" -l on;
connectAttr "lFootControl.msg" "lToeControl.zooWalkup";
connectAttr "lFootControl.msg" "lToeControl.zooWalkdown";
connectAttr "lReverseControlZeroGroup.ro" "lReverseControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "lReverseControlZeroGroup.pim" "lReverseControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "lReverseControlZeroGroup.rp" "lReverseControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "lReverseControlZeroGroup.rpt" "lReverseControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "lFootControl.t" "lReverseControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "lFootControl.rp" "lReverseControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "lFootControl.rpt" "lReverseControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "lFootControl.r" "lReverseControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "lFootControl.ro" "lReverseControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "lFootControl.s" "lReverseControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "lFootControl.pm" "lReverseControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.w0" "lReverseControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.ctx" "Ref:bip_upperArm_RIK.tx"
		;
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.cty" "Ref:bip_upperArm_RIK.ty"
		;
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.ctz" "Ref:bip_upperArm_RIK.tz"
		;
connectAttr "Ref:bip_upperArm_RIK.s" "Ref:bip_lowerArm_RIK.is";
connectAttr "Ref:bip_lowerArm_RIK.s" "Ref:bip_hand_RIK.is";
connectAttr "Ref:bip_hand_RIK.tx" "effector6.tx";
connectAttr "Ref:bip_hand_RIK.ty" "effector6.ty";
connectAttr "Ref:bip_hand_RIK.tz" "effector6.tz";
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.w0" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RIK.pim" "Ref:bip_upperArm_RIK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RIK.rp" "Ref:bip_upperArm_RIK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_RIK.rpt" "Ref:bip_upperArm_RIK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_RIK.msg" "Ref:bip_hand_RIKikHandle.hsj";
connectAttr "effector6.hp" "Ref:bip_hand_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_hand_RIKikHandle.hsv";
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.ctx" "Ref:bip_hand_RIKikHandle.tx"
		;
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.cty" "Ref:bip_hand_RIKikHandle.ty"
		;
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.ctz" "Ref:bip_hand_RIKikHandle.tz"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_hand_RIKikHandle.pvx"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.cty" "Ref:bip_hand_RIKikHandle.pvy"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_hand_RIKikHandle.pvz"
		;
connectAttr "Ref:bip_hand_RIKikHandle.pim" "Ref:bip_hand_RIKikHandle_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_hand_RIKikHandle.rp" "Ref:bip_hand_RIKikHandle_pointConstraint1.crp"
		;
connectAttr "Ref:bip_hand_RIKikHandle.rpt" "Ref:bip_hand_RIKikHandle_pointConstraint1.crt"
		;
connectAttr "rikHandControl.t" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "rikHandControl.rp" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "rikHandControl.rpt" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "rikHandControl.pm" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.w0" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hand_RIKikHandle.pim" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RIK.pm" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_upperArm_RIK.t" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "rElbowControl.t" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "rElbowControl.rp" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "rElbowControl.rpt" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "rElbowControl.pm" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.w0" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "rikHandControlGroup_parentConstraint1.ctx" "rikHandControlGroup.tx"
		;
connectAttr "rikHandControlGroup_parentConstraint1.cty" "rikHandControlGroup.ty"
		;
connectAttr "rikHandControlGroup_parentConstraint1.ctz" "rikHandControlGroup.tz"
		;
connectAttr "rikHandControlGroup_parentConstraint1.crx" "rikHandControlGroup.rx"
		;
connectAttr "rikHandControlGroup_parentConstraint1.cry" "rikHandControlGroup.ry"
		;
connectAttr "rikHandControlGroup_parentConstraint1.crz" "rikHandControlGroup.rz"
		;
connectAttr "rikHandControlGroup.ro" "rikHandControlGroup_parentConstraint1.cro"
		;
connectAttr "rikHandControlGroup.pim" "rikHandControlGroup_parentConstraint1.cpim"
		;
connectAttr "rikHandControlGroup.rp" "rikHandControlGroup_parentConstraint1.crp"
		;
connectAttr "rikHandControlGroup.rpt" "rikHandControlGroup_parentConstraint1.crt"
		;
connectAttr "UpperbodyControl.t" "rikHandControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "UpperbodyControl.rp" "rikHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "UpperbodyControl.rpt" "rikHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "UpperbodyControl.r" "rikHandControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "UpperbodyControl.ro" "rikHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "UpperbodyControl.s" "rikHandControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "UpperbodyControl.pm" "rikHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "rikHandControlGroup_parentConstraint1.w0" "rikHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "rikHandControllockExp.out[0]" "rikHandControlGroup_parentConstraint1.w0"
		;
connectAttr "rikHandControlvisExp.out[0]" "rikHandControl.v" -l on;
connectAttr "rikHandControl_orientConstraint1.crx" "rikHandControl.rx" -l on;
connectAttr "rikHandControl_orientConstraint1.cry" "rikHandControl.ry" -l on;
connectAttr "rikHandControl_orientConstraint1.crz" "rikHandControl.rz" -l on;
connectAttr "rHandControl.msg" "rikHandControl.zooWalkdown";
connectAttr "rHandControl.msg" "rikHandControl.zooWalkup";
connectAttr "rElbowControl.msg" "rikHandControl.zooWalkleft";
connectAttr "rElbowControl.msg" "rikHandControl.zooWalkright";
connectAttr "rHandControl.msg" "rikHandControl.zooTrig1";
connectAttr "rikHandControl_orientConstraint1.w0" "rikHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.aim" "rikHandControl_orientConstraint1.w0";
connectAttr "rikHandControl.ro" "rikHandControl_orientConstraint1.cro";
connectAttr "rikHandControl.pim" "rikHandControl_orientConstraint1.cpim";
connectAttr "rElbowControlvisExp.out[0]" "rElbowControl.v" -l on;
connectAttr "rikHandControl.msg" "rElbowControl.zooWalkright";
connectAttr "rikHandControl.msg" "rElbowControl.zooWalkleft";
connectAttr "rHandControlGroup_parentConstraint1.ctx" "rHandControlGroup.tx";
connectAttr "rHandControlGroup_parentConstraint1.cty" "rHandControlGroup.ty";
connectAttr "rHandControlGroup_parentConstraint1.ctz" "rHandControlGroup.tz";
connectAttr "rHandControlGroup_parentConstraint1.crx" "rHandControlGroup.rx";
connectAttr "rHandControlGroup_parentConstraint1.cry" "rHandControlGroup.ry";
connectAttr "rHandControlGroup_parentConstraint1.crz" "rHandControlGroup.rz";
connectAttr "rHandControl_pointConstraint1.ctx" "rHandControl.tx" -l on;
connectAttr "rHandControl_pointConstraint1.cty" "rHandControl.ty" -l on;
connectAttr "rHandControl_pointConstraint1.ctz" "rHandControl.tz" -l on;
connectAttr "rikHandControl.msg" "rHandControl.zooWalkdown";
connectAttr "rikHandControl.msg" "rHandControl.zooWalkup";
connectAttr "unitConversion25.o" "Ref:bip_thumb_0_RControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_RControl.msg" "Ref:bip_thumb_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_thumb_0_RControl.zooWalkup";
connectAttr "unitConversion26.o" "Ref:bip_thumb_1_RControlrollGroup.rx";
connectAttr "Ref:bip_thumb_0_RControl.msg" "Ref:bip_thumb_1_RControl.zooWalkup";
connectAttr "Ref:bip_thumb_2_RControl.msg" "Ref:bip_thumb_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion27.o" "Ref:bip_thumb_2_RControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_RControl.msg" "Ref:bip_thumb_2_RControl.zooWalkup";
connectAttr "unitConversion28.o" "Ref:bip_index_0_RControlrollGroup.rx";
connectAttr "Ref:bip_index_1_RControl.msg" "Ref:bip_index_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_index_0_RControl.zooWalkup";
connectAttr "unitConversion29.o" "Ref:bip_index_1_RControlrollGroup.rx";
connectAttr "Ref:bip_index_0_RControl.msg" "Ref:bip_index_1_RControl.zooWalkup";
connectAttr "Ref:bip_index_2_RControl.msg" "Ref:bip_index_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion30.o" "Ref:bip_index_2_RControlrollGroup.rx";
connectAttr "Ref:bip_index_1_RControl.msg" "Ref:bip_index_2_RControl.zooWalkup";
connectAttr "unitConversion31.o" "Ref:bip_middle_0_RControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_RControl.msg" "Ref:bip_middle_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_middle_0_RControl.zooWalkup";
connectAttr "unitConversion32.o" "Ref:bip_middle_1_RControlrollGroup.rx";
connectAttr "Ref:bip_middle_0_RControl.msg" "Ref:bip_middle_1_RControl.zooWalkup"
		;
connectAttr "Ref:bip_middle_2_RControl.msg" "Ref:bip_middle_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion33.o" "Ref:bip_middle_2_RControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_RControl.msg" "Ref:bip_middle_2_RControl.zooWalkup"
		;
connectAttr "unitConversion34.o" "Ref:bip_ring_0_RControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_RControl.msg" "Ref:bip_ring_0_RControl.zooWalkdown";
connectAttr "rHandControl.msg" "Ref:bip_ring_0_RControl.zooWalkup";
connectAttr "unitConversion35.o" "Ref:bip_ring_1_RControlrollGroup.rx";
connectAttr "Ref:bip_ring_0_RControl.msg" "Ref:bip_ring_1_RControl.zooWalkup";
connectAttr "Ref:bip_ring_2_RControl.msg" "Ref:bip_ring_1_RControl.zooWalkdown";
connectAttr "unitConversion36.o" "Ref:bip_ring_2_RControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_RControl.msg" "Ref:bip_ring_2_RControl.zooWalkup";
connectAttr "unitConversion37.o" "Ref:bip_pinky_0_RControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_RControl.msg" "Ref:bip_pinky_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_pinky_0_RControl.zooWalkup";
connectAttr "unitConversion38.o" "Ref:bip_pinky_1_RControlrollGroup.rx";
connectAttr "Ref:bip_pinky_0_RControl.msg" "Ref:bip_pinky_1_RControl.zooWalkup";
connectAttr "Ref:bip_pinky_2_RControl.msg" "Ref:bip_pinky_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion39.o" "Ref:bip_pinky_2_RControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_RControl.msg" "Ref:bip_pinky_2_RControl.zooWalkup";
connectAttr "rHandControl_pointConstraint1.w0" "rHandControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rHandControl.pim" "rHandControl_pointConstraint1.cpim";
connectAttr "rHandControl.rp" "rHandControl_pointConstraint1.crp";
connectAttr "rHandControl.rpt" "rHandControl_pointConstraint1.crt";
connectAttr "rHandControlGroup.ro" "rHandControlGroup_parentConstraint1.cro";
connectAttr "rHandControlGroup.pim" "rHandControlGroup_parentConstraint1.cpim";
connectAttr "rHandControlGroup.rp" "rHandControlGroup_parentConstraint1.crp";
connectAttr "rHandControlGroup.rpt" "rHandControlGroup_parentConstraint1.crt";
connectAttr "Ref:bip_hand_RFK.t" "rHandControlGroup_parentConstraint1.tg[0].tt";
connectAttr "Ref:bip_hand_RFK.rp" "rHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_hand_RFK.rpt" "rHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_hand_RFK.r" "rHandControlGroup_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hand_RFK.ro" "rHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_hand_RFK.s" "rHandControlGroup_parentConstraint1.tg[0].ts";
connectAttr "Ref:bip_hand_RFK.pm" "rHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "rHandControlGroup_parentConstraint1.w0" "rHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.t" "rHandControlGroup_parentConstraint1.tg[1].tt";
connectAttr "rikHandControl.rp" "rHandControlGroup_parentConstraint1.tg[1].trp";
connectAttr "rikHandControl.rpt" "rHandControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "rikHandControl.r" "rHandControlGroup_parentConstraint1.tg[1].tr";
connectAttr "rikHandControl.ro" "rHandControlGroup_parentConstraint1.tg[1].tro";
connectAttr "rikHandControl.s" "rHandControlGroup_parentConstraint1.tg[1].ts";
connectAttr "rikHandControl.pm" "rHandControlGroup_parentConstraint1.tg[1].tpm";
connectAttr "rHandControlGroup_parentConstraint1.w1" "rHandControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent2.out[0]" "rHandControlGroup_parentConstraint1.w0";
connectAttr "main.rArmIKFK" "rHandControlGroup_parentConstraint1.w1";
connectAttr "rkneeControlvisExp.out[0]" "rkneeControl.v" -l on;
connectAttr "rFootControl.msg" "rkneeControl.zooWalkright";
connectAttr "rFootControl.msg" "rkneeControl.zooWalkleft";
connectAttr "rFootControlvisExp.out[0]" "rFootControl.v" -l on;
connectAttr "rToeControl.msg" "rFootControl.zooWalkdown";
connectAttr "rkneeControl.msg" "rFootControl.zooWalkleft";
connectAttr "rkneeControl.msg" "rFootControl.zooWalkright";
connectAttr "rToeControl.msg" "rFootControl.zooWalkup";
connectAttr "rReverseControlZeroGroup_parentConstraint1.ctx" "rReverseControlZeroGroup.tx"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.cty" "rReverseControlZeroGroup.ty"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.ctz" "rReverseControlZeroGroup.tz"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.crx" "rReverseControlZeroGroup.rx"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.cry" "rReverseControlZeroGroup.ry"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.crz" "rReverseControlZeroGroup.rz"
		;
connectAttr "unitConversion46.o" "rReverseBall.ry";
connectAttr "unitConversion44.o" "rReverseLroll.rz";
connectAttr "unitConversion45.o" "rReverseRroll.rz";
connectAttr "unitConversion40.o" "rReverseHeelLift.rx";
connectAttr "unitConversion42.o" "rReverseToeLift.rx";
connectAttr "unitConversion41.o" "rReverseAnkleLift.rx";
connectAttr "Ref:bip_hip_RIK.msg" "Ref:bip_foot_RIKikHandle.hsj";
connectAttr "effector7.hp" "Ref:bip_foot_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_foot_RIKikHandle.hsv";
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_foot_RIKikHandle.pvx"
		;
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.cty" "Ref:bip_foot_RIKikHandle.pvy"
		;
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_foot_RIKikHandle.pvz"
		;
connectAttr "Ref:bip_foot_RIKikHandle.pim" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_hip_RIK.pm" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_hip_RIK.t" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "rkneeControl.t" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "rkneeControl.rp" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "rkneeControl.rpt" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "rkneeControl.pm" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.w0" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_RIK.msg" "Ref:bip_toe_RIKikHandle.hsj";
connectAttr "effector8.hp" "Ref:bip_toe_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toe_RIKikHandle.hsv";
connectAttr "unitConversion43.o" "Ref:bip_toe_RIKikHandle.twi";
connectAttr "rReverseToeWiggle_orientConstraint1.crx" "rReverseToeWiggle.rx";
connectAttr "rReverseToeWiggle_orientConstraint1.cry" "rReverseToeWiggle.ry";
connectAttr "rReverseToeWiggle_orientConstraint1.crz" "rReverseToeWiggle.rz";
connectAttr "Ref:bip_toe_RIK.msg" "Ref:bip_toeEnd_RIKikHandle.hsj";
connectAttr "effector9.hp" "Ref:bip_toeEnd_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toeEnd_RIKikHandle.hsv";
connectAttr "rReverseToeWiggle.ro" "rReverseToeWiggle_orientConstraint1.cro";
connectAttr "rReverseToeWiggle.pim" "rReverseToeWiggle_orientConstraint1.cpim";
connectAttr "rToeControl.r" "rReverseToeWiggle_orientConstraint1.tg[0].tr";
connectAttr "rToeControl.ro" "rReverseToeWiggle_orientConstraint1.tg[0].tro";
connectAttr "rToeControl.pm" "rReverseToeWiggle_orientConstraint1.tg[0].tpm";
connectAttr "rReverseToeWiggle_orientConstraint1.w0" "rReverseToeWiggle_orientConstraint1.tg[0].tw"
		;
connectAttr "rToeControlvisExp.out[0]" "rToeControl.v" -l on;
connectAttr "rFootControl.msg" "rToeControl.zooWalkup";
connectAttr "rFootControl.msg" "rToeControl.zooWalkdown";
connectAttr "rReverseControlZeroGroup.ro" "rReverseControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "rReverseControlZeroGroup.pim" "rReverseControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "rReverseControlZeroGroup.rp" "rReverseControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "rReverseControlZeroGroup.rpt" "rReverseControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "rFootControl.t" "rReverseControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "rFootControl.rp" "rReverseControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "rFootControl.rpt" "rReverseControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "rFootControl.r" "rReverseControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "rFootControl.ro" "rReverseControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "rFootControl.s" "rReverseControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "rFootControl.pm" "rReverseControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.w0" "rReverseControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_backUpperControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cty" "Ref:prp_bullet_backUpperControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_backUpperControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crx" "Ref:prp_bullet_backUpperControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cry" "Ref:prp_bullet_backUpperControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crz" "Ref:prp_bullet_backUpperControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_backLowerControl.msg" "Ref:prp_bullet_backUpperControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_shoulderControl.msg" "Ref:prp_bullet_backUpperControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.ro" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.pim" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.rp" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.rpt" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w0" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2ik.rp" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2ik.ro" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2ik.pm" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w1" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent3.out[0]" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_backLowerControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cty" "Ref:prp_bullet_backLowerControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_backLowerControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crx" "Ref:prp_bullet_backLowerControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cry" "Ref:prp_bullet_backLowerControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crz" "Ref:prp_bullet_backLowerControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_sideControl.msg" "Ref:prp_bullet_backLowerControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_backUpperControl.msg" "Ref:prp_bullet_backLowerControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.ro" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.pim" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.rp" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.rpt" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.t" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rp" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rpt" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.r" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_1FKcontrol.ro" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_1FKcontrol.s" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_1FKcontrol.pm" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w0" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_1ik.t" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_1ik.rp" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_1ik.rpt" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_1ik.r" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_1ik.ro" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_1ik.s" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_1ik.pm" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_1ik.jo" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w1" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent4.out[0]" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_sideControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.cty" "Ref:prp_bullet_sideControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_sideControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.crx" "Ref:prp_bullet_sideControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.cry" "Ref:prp_bullet_sideControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.crz" "Ref:prp_bullet_sideControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.msg" "Ref:prp_bullet_sideControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_backLowerControl.msg" "Ref:prp_bullet_sideControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.ro" "Ref:prp_bullet_sideControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.pim" "Ref:prp_bullet_sideControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.rp" "Ref:prp_bullet_sideControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.rpt" "Ref:prp_bullet_sideControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.t" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rp" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rpt" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.r" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_0FKcontrol.ro" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_0FKcontrol.s" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_0FKcontrol.pm" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.w0" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_0ik.t" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_0ik.rp" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_0ik.rpt" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_0ik.r" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_0ik.ro" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_0ik.s" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_0ik.pm" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_0ik.jo" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.w1" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent5.out[0]" "Ref:prp_bullet_sideControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_sideControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_chestLowerControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cty" "Ref:prp_bullet_chestLowerControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_chestLowerControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crx" "Ref:prp_bullet_chestLowerControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cry" "Ref:prp_bullet_chestLowerControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crz" "Ref:prp_bullet_chestLowerControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.msg" "Ref:prp_bullet_chestLowerControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_sideControl.msg" "Ref:prp_bullet_chestLowerControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.ro" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.pim" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.rp" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.rpt" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.t" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rp" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rpt" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.r" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_0FKcontrol.ro" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_0FKcontrol.s" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_0FKcontrol.pm" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w0" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_0ik.t" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_0ik.rp" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_0ik.rpt" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_0ik.r" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_0ik.ro" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_0ik.s" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_0ik.pm" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_0ik.jo" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w1" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent6.out[0]" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_chestUpperControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cty" "Ref:prp_bullet_chestUpperControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_chestUpperControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crx" "Ref:prp_bullet_chestUpperControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cry" "Ref:prp_bullet_chestUpperControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crz" "Ref:prp_bullet_chestUpperControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_shoulderControl.msg" "Ref:prp_bullet_chestUpperControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.msg" "Ref:prp_bullet_chestUpperControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.ro" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.pim" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.rp" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.rpt" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w0" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2ik.rp" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2ik.ro" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2ik.pm" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w1" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent7.out[0]" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w1"
		;
connectAttr "PelvisControl.r" "Ref:bip_pelvis_orientConstraint1.tg[0].tr";
connectAttr "PelvisControl.ro" "Ref:bip_pelvis_orientConstraint1.tg[0].tro";
connectAttr "PelvisControl.pm" "Ref:bip_pelvis_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_orientConstraint1.w0" "Ref:bip_pelvis_orientConstraint1.tg[0].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_pelvis_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "Ref:bip_pelvis_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "Ref:bip_pelvis_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "Ref:bip_pelvis_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_pointConstraint1.w0" "Ref:bip_pelvis_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_packControl.t" "Ref:prp_pack_parentConstraint1.tg[0].tt";
connectAttr "Ref:prp_packControl.rp" "Ref:prp_pack_parentConstraint1.tg[0].trp";
connectAttr "Ref:prp_packControl.rpt" "Ref:prp_pack_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_packControl.r" "Ref:prp_pack_parentConstraint1.tg[0].tr";
connectAttr "Ref:prp_packControl.ro" "Ref:prp_pack_parentConstraint1.tg[0].tro";
connectAttr "Ref:prp_packControl.s" "Ref:prp_pack_parentConstraint1.tg[0].ts";
connectAttr "Ref:prp_packControl.pm" "Ref:prp_pack_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_pack_parentConstraint1.w0" "Ref:prp_pack_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RIK.r" "Ref:bip_hip_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_RIK.ro" "Ref:bip_hip_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_hip_RIK.pm" "Ref:bip_hip_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hip_RIK.jo" "Ref:bip_hip_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_hip_R_orientConstraint1.w0" "Ref:bip_hip_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RFK.r" "Ref:bip_hip_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_hip_RFK.ro" "Ref:bip_hip_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_hip_RFK.pm" "Ref:bip_hip_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_hip_R_orientConstraint1.w1" "Ref:bip_hip_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_hip_R_orientConstraint1.w0";
connectAttr "Ref:bip_hip_RFKswitchExp.out[0]" "Ref:bip_hip_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_knee_RIK.r" "Ref:bip_knee_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_knee_RIK.ro" "Ref:bip_knee_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_knee_RIK.pm" "Ref:bip_knee_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_knee_RIK.jo" "Ref:bip_knee_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_knee_R_orientConstraint1.w0" "Ref:bip_knee_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_RFK.r" "Ref:bip_knee_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_knee_RFK.ro" "Ref:bip_knee_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_knee_RFK.pm" "Ref:bip_knee_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_knee_R_orientConstraint1.w1" "Ref:bip_knee_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_knee_R_orientConstraint1.w0";
connectAttr "Ref:bip_knee_RFKswitchExp.out[0]" "Ref:bip_knee_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_foot_RIK.r" "Ref:bip_foot_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_foot_RIK.ro" "Ref:bip_foot_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_foot_RIK.pm" "Ref:bip_foot_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_foot_RIK.jo" "Ref:bip_foot_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_foot_R_orientConstraint1.w0" "Ref:bip_foot_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_RFK.r" "Ref:bip_foot_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_foot_RFK.ro" "Ref:bip_foot_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_foot_RFK.pm" "Ref:bip_foot_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_foot_R_orientConstraint1.w1" "Ref:bip_foot_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_foot_R_orientConstraint1.w0";
connectAttr "Ref:bip_foot_RFKswitchExp.out[0]" "Ref:bip_foot_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_toe_RIK.r" "Ref:bip_toe_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_toe_RIK.ro" "Ref:bip_toe_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_toe_RIK.pm" "Ref:bip_toe_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_toe_RIK.jo" "Ref:bip_toe_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_toe_R_orientConstraint1.w0" "Ref:bip_toe_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_toe_RFK.r" "Ref:bip_toe_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_toe_RFK.ro" "Ref:bip_toe_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_toe_RFK.pm" "Ref:bip_toe_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_toe_R_orientConstraint1.w1" "Ref:bip_toe_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_toe_R_orientConstraint1.w0";
connectAttr "Ref:bip_toe_RFKswitchExp.out[0]" "Ref:bip_toe_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_hip_LIK.r" "Ref:bip_hip_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_LIK.ro" "Ref:bip_hip_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_hip_LIK.pm" "Ref:bip_hip_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hip_LIK.jo" "Ref:bip_hip_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_hip_L_orientConstraint1.w0" "Ref:bip_hip_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_LFK.r" "Ref:bip_hip_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_hip_LFK.ro" "Ref:bip_hip_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_hip_LFK.pm" "Ref:bip_hip_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_hip_L_orientConstraint1.w1" "Ref:bip_hip_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_hip_L_orientConstraint1.w0";
connectAttr "Ref:bip_hip_LFKswitchExp.out[0]" "Ref:bip_hip_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_knee_LIK.r" "Ref:bip_knee_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_knee_LIK.ro" "Ref:bip_knee_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_knee_LIK.pm" "Ref:bip_knee_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_knee_LIK.jo" "Ref:bip_knee_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_knee_L_orientConstraint1.w0" "Ref:bip_knee_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_LFK.r" "Ref:bip_knee_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_knee_LFK.ro" "Ref:bip_knee_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_knee_LFK.pm" "Ref:bip_knee_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_knee_L_orientConstraint1.w1" "Ref:bip_knee_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_knee_L_orientConstraint1.w0";
connectAttr "Ref:bip_knee_LFKswitchExp.out[0]" "Ref:bip_knee_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_foot_LIK.r" "Ref:bip_foot_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_foot_LIK.ro" "Ref:bip_foot_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_foot_LIK.pm" "Ref:bip_foot_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_foot_LIK.jo" "Ref:bip_foot_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_foot_L_orientConstraint1.w0" "Ref:bip_foot_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_LFK.r" "Ref:bip_foot_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_foot_LFK.ro" "Ref:bip_foot_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_foot_LFK.pm" "Ref:bip_foot_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_foot_L_orientConstraint1.w1" "Ref:bip_foot_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_foot_L_orientConstraint1.w0";
connectAttr "Ref:bip_foot_LFKswitchExp.out[0]" "Ref:bip_foot_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_toe_LIK.r" "Ref:bip_toe_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_toe_LIK.ro" "Ref:bip_toe_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_toe_LIK.pm" "Ref:bip_toe_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_toe_LIK.jo" "Ref:bip_toe_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_toe_L_orientConstraint1.w0" "Ref:bip_toe_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_toe_LFK.r" "Ref:bip_toe_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_toe_LFK.ro" "Ref:bip_toe_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_toe_LFK.pm" "Ref:bip_toe_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_toe_L_orientConstraint1.w1" "Ref:bip_toe_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_toe_L_orientConstraint1.w0";
connectAttr "Ref:bip_toe_LFKswitchExp.out[0]" "Ref:bip_toe_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_spine_0FKcontrol.t" "Ref:bip_spine_0_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rp" "Ref:bip_spine_0_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rpt" "Ref:bip_spine_0_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.r" "Ref:bip_spine_0_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_0FKcontrol.ro" "Ref:bip_spine_0_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_0FKcontrol.s" "Ref:bip_spine_0_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_0FKcontrol.pm" "Ref:bip_spine_0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_0_parentConstraint1.w0" "Ref:bip_spine_0_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_0ik.t" "Ref:bip_spine_0_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_0ik.rp" "Ref:bip_spine_0_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_0ik.rpt" "Ref:bip_spine_0_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_0ik.r" "Ref:bip_spine_0_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_0ik.ro" "Ref:bip_spine_0_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_0ik.s" "Ref:bip_spine_0_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_0ik.pm" "Ref:bip_spine_0_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_0ik.jo" "Ref:bip_spine_0_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_0_parentConstraint1.w1" "Ref:bip_spine_0_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp.out[0]" "Ref:bip_spine_0_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_0_parentConstraint1.w1";
connectAttr "Ref:prp_bullet_chestLowerControl.t" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.rp" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.rpt" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.r" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.ro" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.s" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.pm" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.w0" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_bullet_sideControl.t" "Ref:prp_bullet_side_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_sideControl.rp" "Ref:prp_bullet_side_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_sideControl.rpt" "Ref:prp_bullet_side_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_sideControl.r" "Ref:prp_bullet_side_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_sideControl.ro" "Ref:prp_bullet_side_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_sideControl.s" "Ref:prp_bullet_side_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_sideControl.pm" "Ref:prp_bullet_side_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_side_parentConstraint1.w0" "Ref:prp_bullet_side_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_1FKcontrol.t" "Ref:bip_spine_1_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rp" "Ref:bip_spine_1_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rpt" "Ref:bip_spine_1_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.r" "Ref:bip_spine_1_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_1FKcontrol.ro" "Ref:bip_spine_1_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_1FKcontrol.s" "Ref:bip_spine_1_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_1FKcontrol.pm" "Ref:bip_spine_1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_1_parentConstraint1.w0" "Ref:bip_spine_1_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_1ik.t" "Ref:bip_spine_1_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_1ik.rp" "Ref:bip_spine_1_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_1ik.rpt" "Ref:bip_spine_1_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_1ik.r" "Ref:bip_spine_1_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_1ik.ro" "Ref:bip_spine_1_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_1ik.s" "Ref:bip_spine_1_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_1ik.pm" "Ref:bip_spine_1_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_1ik.jo" "Ref:bip_spine_1_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_1_parentConstraint1.w1" "Ref:bip_spine_1_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp1.out[0]" "Ref:bip_spine_1_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_1_parentConstraint1.w1";
connectAttr "Ref:prp_bullet_chestUpperControl.t" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.rp" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.rpt" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.r" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.ro" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.s" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.pm" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.w0" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_bullet_backLowerControl.t" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_backLowerControl.rp" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_backLowerControl.rpt" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_backLowerControl.r" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_backLowerControl.ro" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_backLowerControl.s" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_backLowerControl.pm" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.w0" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:bip_spine_2_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:bip_spine_2_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:bip_spine_2_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:bip_spine_2_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:bip_spine_2_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:bip_spine_2_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:bip_spine_2_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_2_parentConstraint1.w0" "Ref:bip_spine_2_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:bip_spine_2_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_2ik.rp" "Ref:bip_spine_2_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:bip_spine_2_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:bip_spine_2_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_2ik.ro" "Ref:bip_spine_2_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:bip_spine_2_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_2ik.pm" "Ref:bip_spine_2_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:bip_spine_2_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_2_parentConstraint1.w1" "Ref:bip_spine_2_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp2.out[0]" "Ref:bip_spine_2_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_2_parentConstraint1.w1";
connectAttr "Ref:prp_bullet_backUpperControl.t" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_backUpperControl.rp" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_backUpperControl.rpt" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_backUpperControl.r" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_backUpperControl.ro" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_backUpperControl.s" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_backUpperControl.pm" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.w0" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3FKcontrol.t" "Ref:bip_spine_3_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "Ref:bip_spine_3_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "Ref:bip_spine_3_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "Ref:bip_spine_3_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "Ref:bip_spine_3_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "Ref:bip_spine_3_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "Ref:bip_spine_3_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_3_parentConstraint1.w0" "Ref:bip_spine_3_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3ik.t" "Ref:bip_spine_3_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_3ik.rp" "Ref:bip_spine_3_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_3ik.rpt" "Ref:bip_spine_3_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_3ik.r" "Ref:bip_spine_3_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_3ik.ro" "Ref:bip_spine_3_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_3ik.s" "Ref:bip_spine_3_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_3ik.pm" "Ref:bip_spine_3_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_3ik.jo" "Ref:bip_spine_3_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_3_parentConstraint1.w1" "Ref:bip_spine_3_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp3.out[0]" "Ref:bip_spine_3_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_3_parentConstraint1.w1";
connectAttr "rShoulderControl.r" "Ref:bip_collar_R_orientConstraint1.tg[0].tr";
connectAttr "rShoulderControl.ro" "Ref:bip_collar_R_orientConstraint1.tg[0].tro"
		;
connectAttr "rShoulderControl.pm" "Ref:bip_collar_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_collar_R_orientConstraint1.w0" "Ref:bip_collar_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_bullet_shoulderControl.t" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_shoulderControl.rp" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_shoulderControl.rpt" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_shoulderControl.r" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_shoulderControl.ro" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_shoulderControl.s" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_shoulderControl.pm" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.w0" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RFK.r" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_upperArm_RFK.ro" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_upperArm_RFK.pm" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_R_orientConstraint1.w0" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RIK.r" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_upperArm_RIK.ro" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_upperArm_RIK.pm" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_RIK.jo" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_upperArm_R_orientConstraint1.w1" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_upperArm_RFKswtichExp.out[0]" "Ref:bip_upperArm_R_orientConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:bip_upperArm_R_orientConstraint1.w1";
connectAttr "Ref:bip_lowerArm_RFK.r" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_RFK.ro" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_RFK.pm" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.w0" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_RIK.r" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_RIK.ro" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_RIK.pm" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_RIK.jo" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.w1" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_lowerArm_RFKswitchExp.out[0]" "Ref:bip_lowerArm_R_orientConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:bip_lowerArm_R_orientConstraint1.w1";
connectAttr "rHandControl.r" "Ref:bip_hand_R_orientConstraint1.tg[0].tr";
connectAttr "rHandControl.ro" "Ref:bip_hand_R_orientConstraint1.tg[0].tro";
connectAttr "rHandControl.pm" "Ref:bip_hand_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_R_orientConstraint1.w0" "Ref:bip_hand_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_0_RControl.t" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_0_RControl.rp" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_0_RControl.rpt" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_0_RControl.r" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_0_RControl.ro" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_0_RControl.s" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_0_RControl.pm" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.w0" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_1_RControl.t" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_1_RControl.rp" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_1_RControl.rpt" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_1_RControl.r" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_1_RControl.ro" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_1_RControl.s" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_1_RControl.pm" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.w0" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_2_RControl.t" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_2_RControl.rp" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_2_RControl.rpt" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_2_RControl.r" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_2_RControl.ro" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_2_RControl.s" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_2_RControl.pm" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.w0" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_0_RControl.t" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_0_RControl.rp" "Ref:bip_ring_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_0_RControl.rpt" "Ref:bip_ring_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_0_RControl.r" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_0_RControl.ro" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_0_RControl.s" "Ref:bip_ring_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_0_RControl.pm" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_0_R_parentConstraint1.w0" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_1_RControl.t" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_1_RControl.rp" "Ref:bip_ring_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_1_RControl.rpt" "Ref:bip_ring_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_1_RControl.r" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_1_RControl.ro" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_1_RControl.s" "Ref:bip_ring_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_1_RControl.pm" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_1_R_parentConstraint1.w0" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_2_RControl.t" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_2_RControl.rp" "Ref:bip_ring_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_2_RControl.rpt" "Ref:bip_ring_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_2_RControl.r" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_2_RControl.ro" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_2_RControl.s" "Ref:bip_ring_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_2_RControl.pm" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_2_R_parentConstraint1.w0" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_0_RControl.t" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_0_RControl.rp" "Ref:bip_middle_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_0_RControl.rpt" "Ref:bip_middle_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_0_RControl.r" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_0_RControl.ro" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_0_RControl.s" "Ref:bip_middle_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_0_RControl.pm" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_0_R_parentConstraint1.w0" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_1_RControl.t" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_1_RControl.rp" "Ref:bip_middle_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_1_RControl.rpt" "Ref:bip_middle_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_1_RControl.r" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_1_RControl.ro" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_1_RControl.s" "Ref:bip_middle_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_1_RControl.pm" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_1_R_parentConstraint1.w0" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_2_RControl.t" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_2_RControl.rp" "Ref:bip_middle_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_2_RControl.rpt" "Ref:bip_middle_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_2_RControl.r" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_2_RControl.ro" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_2_RControl.s" "Ref:bip_middle_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_2_RControl.pm" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_2_R_parentConstraint1.w0" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_0_RControl.t" "Ref:bip_index_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_0_RControl.rp" "Ref:bip_index_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_0_RControl.rpt" "Ref:bip_index_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_0_RControl.r" "Ref:bip_index_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_0_RControl.ro" "Ref:bip_index_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_0_RControl.s" "Ref:bip_index_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_0_RControl.pm" "Ref:bip_index_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_0_R_parentConstraint1.w0" "Ref:bip_index_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_1_RControl.t" "Ref:bip_index_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_1_RControl.rp" "Ref:bip_index_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_1_RControl.rpt" "Ref:bip_index_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_1_RControl.r" "Ref:bip_index_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_1_RControl.ro" "Ref:bip_index_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_1_RControl.s" "Ref:bip_index_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_1_RControl.pm" "Ref:bip_index_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_1_R_parentConstraint1.w0" "Ref:bip_index_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_2_RControl.t" "Ref:bip_index_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_2_RControl.rp" "Ref:bip_index_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_2_RControl.rpt" "Ref:bip_index_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_2_RControl.r" "Ref:bip_index_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_2_RControl.ro" "Ref:bip_index_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_2_RControl.s" "Ref:bip_index_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_2_RControl.pm" "Ref:bip_index_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_2_R_parentConstraint1.w0" "Ref:bip_index_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_0_RControl.t" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_0_RControl.rp" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_0_RControl.rpt" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_0_RControl.r" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_0_RControl.ro" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_0_RControl.s" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_0_RControl.pm" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.w0" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_1_RControl.t" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_1_RControl.rp" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_1_RControl.rpt" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_1_RControl.r" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_1_RControl.ro" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_1_RControl.s" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_1_RControl.pm" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.w0" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_2_RControl.t" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_2_RControl.rp" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_2_RControl.rpt" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_2_RControl.r" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_2_RControl.ro" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_2_RControl.s" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_2_RControl.pm" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.w0" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "lShoulderControl.r" "Ref:bip_collar_L_orientConstraint1.tg[0].tr";
connectAttr "lShoulderControl.ro" "Ref:bip_collar_L_orientConstraint1.tg[0].tro"
		;
connectAttr "lShoulderControl.pm" "Ref:bip_collar_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_collar_L_orientConstraint1.w0" "Ref:bip_collar_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LFK.r" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_upperArm_LFK.ro" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_upperArm_LFK.pm" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_L_orientConstraint1.w0" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LIK.r" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_upperArm_LIK.ro" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_upperArm_LIK.pm" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_LIK.jo" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_upperArm_L_orientConstraint1.w1" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_upperArm_LFKswtichExp.out[0]" "Ref:bip_upperArm_L_orientConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:bip_upperArm_L_orientConstraint1.w1";
connectAttr "Ref:bip_lowerArm_LFK.r" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_LFK.ro" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_LFK.pm" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.w0" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_LIK.r" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_LIK.ro" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_LIK.pm" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_LIK.jo" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.w1" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_lowerArm_LFKswitchExp.out[0]" "Ref:bip_lowerArm_L_orientConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:bip_lowerArm_L_orientConstraint1.w1";
connectAttr "lHandControl.r" "Ref:bip_hand_L_orientConstraint1.tg[0].tr";
connectAttr "lHandControl.ro" "Ref:bip_hand_L_orientConstraint1.tg[0].tro";
connectAttr "lHandControl.pm" "Ref:bip_hand_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_L_orientConstraint1.w0" "Ref:bip_hand_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_0_LControl.t" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_0_LControl.rp" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_0_LControl.rpt" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_0_LControl.r" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_0_LControl.ro" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_0_LControl.s" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_0_LControl.pm" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.w0" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_1_LControl.t" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_1_LControl.rp" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_1_LControl.rpt" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_1_LControl.r" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_1_LControl.ro" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_1_LControl.s" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_1_LControl.pm" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.w0" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_2_LControl.t" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_2_LControl.rp" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_2_LControl.rpt" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_2_LControl.r" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_2_LControl.ro" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_2_LControl.s" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_2_LControl.pm" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.w0" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_0_LControl.t" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_0_LControl.rp" "Ref:bip_ring_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_0_LControl.rpt" "Ref:bip_ring_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_0_LControl.r" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_0_LControl.ro" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_0_LControl.s" "Ref:bip_ring_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_0_LControl.pm" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_0_L_parentConstraint1.w0" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_1_LControl.t" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_1_LControl.rp" "Ref:bip_ring_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_1_LControl.rpt" "Ref:bip_ring_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_1_LControl.r" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_1_LControl.ro" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_1_LControl.s" "Ref:bip_ring_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_1_LControl.pm" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_1_L_parentConstraint1.w0" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_2_LControl.t" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_2_LControl.rp" "Ref:bip_ring_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_2_LControl.rpt" "Ref:bip_ring_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_2_LControl.r" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_2_LControl.ro" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_2_LControl.s" "Ref:bip_ring_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_2_LControl.pm" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_2_L_parentConstraint1.w0" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_0_LControl.t" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_0_LControl.rp" "Ref:bip_middle_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_0_LControl.rpt" "Ref:bip_middle_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_0_LControl.r" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_0_LControl.ro" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_0_LControl.s" "Ref:bip_middle_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_0_LControl.pm" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_0_L_parentConstraint1.w0" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_1_LControl.t" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_1_LControl.rp" "Ref:bip_middle_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_1_LControl.rpt" "Ref:bip_middle_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_1_LControl.r" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_1_LControl.ro" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_1_LControl.s" "Ref:bip_middle_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_1_LControl.pm" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_1_L_parentConstraint1.w0" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_2_LControl.t" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_2_LControl.rp" "Ref:bip_middle_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_2_LControl.rpt" "Ref:bip_middle_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_2_LControl.r" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_2_LControl.ro" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_2_LControl.s" "Ref:bip_middle_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_2_LControl.pm" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_2_L_parentConstraint1.w0" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_0_LControl.t" "Ref:bip_index_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_0_LControl.rp" "Ref:bip_index_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_0_LControl.rpt" "Ref:bip_index_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_0_LControl.r" "Ref:bip_index_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_0_LControl.ro" "Ref:bip_index_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_0_LControl.s" "Ref:bip_index_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_0_LControl.pm" "Ref:bip_index_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_0_L_parentConstraint1.w0" "Ref:bip_index_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_1_LControl.t" "Ref:bip_index_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_1_LControl.rp" "Ref:bip_index_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_1_LControl.rpt" "Ref:bip_index_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_1_LControl.r" "Ref:bip_index_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_1_LControl.ro" "Ref:bip_index_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_1_LControl.s" "Ref:bip_index_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_1_LControl.pm" "Ref:bip_index_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_1_L_parentConstraint1.w0" "Ref:bip_index_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_2_LControl.t" "Ref:bip_index_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_2_LControl.rp" "Ref:bip_index_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_2_LControl.rpt" "Ref:bip_index_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_2_LControl.r" "Ref:bip_index_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_2_LControl.ro" "Ref:bip_index_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_2_LControl.s" "Ref:bip_index_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_2_LControl.pm" "Ref:bip_index_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_2_L_parentConstraint1.w0" "Ref:bip_index_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_0_LControl.t" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_0_LControl.rp" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_0_LControl.rpt" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_0_LControl.r" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_0_LControl.ro" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_0_LControl.s" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_0_LControl.pm" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.w0" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_1_LControl.t" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_1_LControl.rp" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_1_LControl.rpt" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_1_LControl.r" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_1_LControl.ro" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_1_LControl.s" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_1_LControl.pm" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.w0" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_2_LControl.t" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_2_LControl.rp" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_2_LControl.rpt" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_2_LControl.r" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_2_LControl.ro" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_2_LControl.s" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_2_LControl.pm" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.w0" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "neckControl.r" "Ref:bip_neck_orientConstraint1.tg[0].tr";
connectAttr "neckControl.ro" "Ref:bip_neck_orientConstraint1.tg[0].tro";
connectAttr "neckControl.pm" "Ref:bip_neck_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_neck_orientConstraint1.w0" "Ref:bip_neck_orientConstraint1.tg[0].tw"
		;
connectAttr "headControl.r" "Ref:bip_head_orientConstraint1.tg[0].tr";
connectAttr "headControl.ro" "Ref:bip_head_orientConstraint1.tg[0].tro";
connectAttr "headControl.pm" "Ref:bip_head_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_head_orientConstraint1.w0" "Ref:bip_head_orientConstraint1.tg[0].tw"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RefRNfosterParent1.msg" "RefRN.fp";
connectAttr "sharedReferenceNode.sr" "RefRN.sr";
connectAttr "main.iog" "plotted.dsm" -na;
connectAttr "UpperbodyControl.iog" "plotted.dsm" -na;
connectAttr "PelvisControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "plotted.dsm" -na;
connectAttr "ikChest.iog" "plotted.dsm" -na;
connectAttr "neckControl.iog" "plotted.dsm" -na;
connectAttr "headControl.iog" "plotted.dsm" -na;
connectAttr "lShoulderControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hand_LFK.iog" "plotted.dsm" -na;
connectAttr "likHandControl.iog" "plotted.dsm" -na;
connectAttr "lElbowControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "plotted.dsm" -na;
connectAttr "lkneeControl.iog" "plotted.dsm" -na;
connectAttr "lFootControl.iog" "plotted.dsm" -na;
connectAttr "lToeControl.iog" "plotted.dsm" -na;
connectAttr "rShoulderControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_upperArm_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hand_RFK.iog" "plotted.dsm" -na;
connectAttr "rikHandControl.iog" "plotted.dsm" -na;
connectAttr "rElbowControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "plotted.dsm" -na;
connectAttr "rkneeControl.iog" "plotted.dsm" -na;
connectAttr "rFootControl.iog" "plotted.dsm" -na;
connectAttr "rToeControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_packControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_shoulderControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_backUpperControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_backLowerControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_sideControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_chestLowerControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_chestUpperControl.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "lHandControl.iog" "plotted.dsm" -na;
connectAttr "hands_L.msg" "plotted.dnsm" -na;
connectAttr "hand_R.msg" "plotted.dnsm" -na;
connectAttr "main.spineIKFK" "FKspineExp.in[0]";
connectAttr ":time1.o" "FKspineExp.tim";
connectAttr "main.spineIKFK" "FKspineExp1.in[0]";
connectAttr ":time1.o" "FKspineExp1.tim";
connectAttr "main.spineIKFK" "FKspineExp2.in[0]";
connectAttr ":time1.o" "FKspineExp2.tim";
connectAttr "main.spineIKFK" "FKspineExp3.in[0]";
connectAttr ":time1.o" "FKspineExp3.tim";
connectAttr "main.spineIKFK" "Ref:bip_spine_0FKcontrolvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_spine_0FKcontrolvisExp.tim";
connectAttr "main.spineIKFK" "ikChestvisExp.in[0]";
connectAttr ":time1.o" "ikChestvisExp.tim";
connectAttr "makeNurbCylinder1.os" "transformGeometry1.ig";
connectAttr "main.spineIKFK" "SpineCurvevisExp.in[0]";
connectAttr ":time1.o" "SpineCurvevisExp.tim";
connectAttr "cluster9GroupParts.og" "ikChestClusterCluster.ip[0].ig";
connectAttr "cluster9GroupId.id" "ikChestClusterCluster.ip[0].gi";
connectAttr "ikChestCluster.wm" "ikChestClusterCluster.ma";
connectAttr "ikChestClusterShape.x" "ikChestClusterCluster.x";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "cluster9GroupId.msg" "cluster9Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[0]" "cluster9Set.dsm" -na;
connectAttr "ikChestClusterCluster.msg" "cluster9Set.ub[0]";
connectAttr "tweak3.og[0]" "cluster9GroupParts.ig";
connectAttr "cluster9GroupId.id" "cluster9GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "SpineCurveShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "SpineCurveShapeOrig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "cluster10GroupParts.og" "ikPelvisClusterCluster.ip[0].ig";
connectAttr "cluster10GroupId.id" "ikPelvisClusterCluster.ip[0].gi";
connectAttr "ikPelvisCluster.wm" "ikPelvisClusterCluster.ma";
connectAttr "ikPelvisClusterShape.x" "ikPelvisClusterCluster.x";
connectAttr "cluster10GroupId.msg" "cluster10Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[2]" "cluster10Set.dsm" -na;
connectAttr "ikPelvisClusterCluster.msg" "cluster10Set.ub[0]";
connectAttr "ikChestClusterCluster.og[0]" "cluster10GroupParts.ig";
connectAttr "cluster10GroupId.id" "cluster10GroupParts.gi";
connectAttr "SpineCurveShape.ws" "SpineCurveInfoNode.ic";
connectAttr "SpineCurveShape.ws" "curveInfo1.ic";
connectAttr "curveInfo1.al" "stretchyBack.in[0]";
connectAttr ":time1.o" "stretchyBack.tim";
connectAttr "curveInfo1.al" "stretchyBack1.in[0]";
connectAttr ":time1.o" "stretchyBack1.tim";
connectAttr "curveInfo1.al" "stretchyBack2.in[0]";
connectAttr ":time1.o" "stretchyBack2.tim";
connectAttr "curveInfo1.al" "stretchyBack3.in[0]";
connectAttr ":time1.o" "stretchyBack3.tim";
connectAttr "unitConversion1.o" "ikSpineTwist.in[0]";
connectAttr ":time1.o" "ikSpineTwist.tim";
connectAttr "ikChest.ry" "unitConversion1.i";
connectAttr "ikSpineTwist.out[0]" "unitConversion2.i";
connectAttr "main.spineIKFK" "fkParent.in[0]";
connectAttr ":time1.o" "fkParent.tim";
connectAttr "neckControl.lock" "neckControlLockParentlock.in[0]";
connectAttr ":time1.o" "neckControlLockParentlock.tim";
connectAttr "headControl.lock" "headControlLockParentlock.in[0]";
connectAttr ":time1.o" "headControlLockParentlock.tim";
connectAttr "main.lArmIKFK" "Ref:bip_upperArm_LFKswtichExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_LFKswtichExp.tim";
connectAttr "main.lArmIKFK" "Ref:bip_lowerArm_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_lowerArm_LFKswitchExp.tim";
connectAttr "main.lArmIKFK" "Ref:bip_upperArm_LFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_LFKvisExp.tim";
connectAttr "likHandControl.lock" "likHandControllockExp.in[0]";
connectAttr ":time1.o" "likHandControllockExp.tim";
connectAttr "main.lArmIKFK" "likHandControlvisExp.in[0]";
connectAttr ":time1.o" "likHandControlvisExp.tim";
connectAttr "main.lArmIKFK" "lElbowControlvisExp.in[0]";
connectAttr ":time1.o" "lElbowControlvisExp.tim";
connectAttr "lHandControl.bip_thumb_0_LControlRoll" "unitConversion3.i";
connectAttr "lHandControl.bip_thumb_0_LControlRoll" "unitConversion4.i";
connectAttr "lHandControl.bip_thumb_0_LControlRoll" "unitConversion5.i";
connectAttr "lHandControl.bip_index_0_LControlRoll" "unitConversion6.i";
connectAttr "lHandControl.bip_index_0_LControlRoll" "unitConversion7.i";
connectAttr "lHandControl.bip_index_0_LControlRoll" "unitConversion8.i";
connectAttr "lHandControl.bip_middle_0_LControlRoll" "unitConversion9.i";
connectAttr "lHandControl.bip_middle_0_LControlRoll" "unitConversion10.i";
connectAttr "lHandControl.bip_middle_0_LControlRoll" "unitConversion11.i";
connectAttr "lHandControl.bip_ring_0_LControlRoll" "unitConversion12.i";
connectAttr "lHandControl.bip_ring_0_LControlRoll" "unitConversion13.i";
connectAttr "lHandControl.bip_ring_0_LControlRoll" "unitConversion14.i";
connectAttr "lHandControl.bip_pinky_0_LControlRoll" "unitConversion15.i";
connectAttr "lHandControl.bip_pinky_0_LControlRoll" "unitConversion16.i";
connectAttr "lHandControl.bip_pinky_0_LControlRoll" "unitConversion17.i";
connectAttr "main.lArmIKFK" "fkParent1.in[0]";
connectAttr ":time1.o" "fkParent1.tim";
connectAttr "main.lLegIKFK" "Ref:bip_hip_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_knee_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_knee_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_foot_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_foot_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_toe_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_toe_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_hip_LFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_LFKvisExp.tim";
connectAttr "main.lLegIKFK" "lkneeControlvisExp.in[0]";
connectAttr ":time1.o" "lkneeControlvisExp.tim";
connectAttr "lFootControl.heelRock" "unitConversion18.i";
connectAttr "lFootControl.ankleLift" "unitConversion19.i";
connectAttr "lFootControl.toeLift" "unitConversion20.i";
connectAttr "lFootControl.ankleBank" "unitConversion21.i";
connectAttr "lFootControl.rockR" "unitConversion22.i";
connectAttr "lFootControl.rockL" "lrockLexp.in[0]";
connectAttr ":time1.o" "lrockLexp.tim";
connectAttr "lrockLexp.out[0]" "unitConversion23.i";
connectAttr "lFootControl.ballPivot" "unitConversion24.i";
connectAttr "main.lLegIKFK" "lFootControlvisExp.in[0]";
connectAttr ":time1.o" "lFootControlvisExp.tim";
connectAttr "main.lLegIKFK" "lToeControlvisExp.in[0]";
connectAttr ":time1.o" "lToeControlvisExp.tim";
connectAttr "main.rArmIKFK" "Ref:bip_upperArm_RFKswtichExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_RFKswtichExp.tim";
connectAttr "main.rArmIKFK" "Ref:bip_lowerArm_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_lowerArm_RFKswitchExp.tim";
connectAttr "main.rArmIKFK" "Ref:bip_upperArm_RFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_RFKvisExp.tim";
connectAttr "rikHandControl.lock" "rikHandControllockExp.in[0]";
connectAttr ":time1.o" "rikHandControllockExp.tim";
connectAttr "main.rArmIKFK" "rikHandControlvisExp.in[0]";
connectAttr ":time1.o" "rikHandControlvisExp.tim";
connectAttr "main.rArmIKFK" "rElbowControlvisExp.in[0]";
connectAttr ":time1.o" "rElbowControlvisExp.tim";
connectAttr "rHandControl.bip_thumb_0_RControlRoll" "unitConversion25.i";
connectAttr "rHandControl.bip_thumb_0_RControlRoll" "unitConversion26.i";
connectAttr "rHandControl.bip_thumb_0_RControlRoll" "unitConversion27.i";
connectAttr "rHandControl.bip_index_0_RControlRoll" "unitConversion28.i";
connectAttr "rHandControl.bip_index_0_RControlRoll" "unitConversion29.i";
connectAttr "rHandControl.bip_index_0_RControlRoll" "unitConversion30.i";
connectAttr "rHandControl.bip_middle_0_RControlRoll" "unitConversion31.i";
connectAttr "rHandControl.bip_middle_0_RControlRoll" "unitConversion32.i";
connectAttr "rHandControl.bip_middle_0_RControlRoll" "unitConversion33.i";
connectAttr "rHandControl.bip_ring_0_RControlRoll" "unitConversion34.i";
connectAttr "rHandControl.bip_ring_0_RControlRoll" "unitConversion35.i";
connectAttr "rHandControl.bip_ring_0_RControlRoll" "unitConversion36.i";
connectAttr "rHandControl.bip_pinky_0_RControlRoll" "unitConversion37.i";
connectAttr "rHandControl.bip_pinky_0_RControlRoll" "unitConversion38.i";
connectAttr "rHandControl.bip_pinky_0_RControlRoll" "unitConversion39.i";
connectAttr "main.rArmIKFK" "fkParent2.in[0]";
connectAttr ":time1.o" "fkParent2.tim";
connectAttr "main.rLegIKFK" "Ref:bip_hip_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_knee_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_knee_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_foot_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_foot_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_toe_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_toe_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_hip_RFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_RFKvisExp.tim";
connectAttr "main.rLegIKFK" "rkneeControlvisExp.in[0]";
connectAttr ":time1.o" "rkneeControlvisExp.tim";
connectAttr "rFootControl.heelRock" "unitConversion40.i";
connectAttr "rFootControl.ankleLift" "unitConversion41.i";
connectAttr "rFootControl.toeLift" "unitConversion42.i";
connectAttr "rFootControl.ankleBank" "unitConversion43.i";
connectAttr "rFootControl.rockR" "unitConversion44.i";
connectAttr "rFootControl.rockL" "rrockLexp.in[0]";
connectAttr ":time1.o" "rrockLexp.tim";
connectAttr "rrockLexp.out[0]" "unitConversion45.i";
connectAttr "rFootControl.ballPivot" "unitConversion46.i";
connectAttr "main.rLegIKFK" "rFootControlvisExp.in[0]";
connectAttr ":time1.o" "rFootControlvisExp.tim";
connectAttr "main.rLegIKFK" "rToeControlvisExp.in[0]";
connectAttr ":time1.o" "rToeControlvisExp.tim";
connectAttr "main.spineIKFK" "fkParent3.in[0]";
connectAttr ":time1.o" "fkParent3.tim";
connectAttr "main.spineIKFK" "fkParent4.in[0]";
connectAttr ":time1.o" "fkParent4.tim";
connectAttr "main.spineIKFK" "fkParent5.in[0]";
connectAttr ":time1.o" "fkParent5.tim";
connectAttr "main.spineIKFK" "fkParent6.in[0]";
connectAttr ":time1.o" "fkParent6.tim";
connectAttr "main.spineIKFK" "fkParent7.in[0]";
connectAttr ":time1.o" "fkParent7.tim";
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_1FKcontrolZeroGroup_translateY.i"
		;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_2FKcontrolZeroGroup_translateY.i"
		;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_3FKcontrolZeroGroup_translateY.i"
		;
connectAttr "Ref:bip_thumb_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_3.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_3.ft"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "mainShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "UpperbodyControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PelvisControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikChestShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "neckControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "headControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lShoulderControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_upperArm_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hand_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "likHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lElbowControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hip_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_knee_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_foot_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_toe_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lkneeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lFootControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lToeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rShoulderControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_upperArm_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hand_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rikHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rElbowControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hip_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_knee_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_foot_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_toe_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rkneeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rFootControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rToeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_packControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_bullet_shoulderControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_backUpperControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_backLowerControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_sideControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_bullet_chestLowerControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_chestUpperControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of heavy_rig.ma
