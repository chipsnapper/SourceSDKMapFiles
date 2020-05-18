//Maya ASCII 2008 scene
//Name: sniper_rig.ma
//Last modified: Fri, Oct 09, 2009 06:15:04 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "sniper_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "sniper_reference.ma";
requires maya "2008";
requires "vstUtils" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 2008";
fileInfo "version" "2008 Extension 2";
fileInfo "cutIdentifier" "200802250025-718075";
fileInfo "osv" "Microsoft Windows XP Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.4734085557728047 62.233942630512345 104.87405553735925 ;
	setAttr ".r" -type "double3" -14.138352729645005 -366.19999999995383 1.9995420695180062e-016 ;
	setAttr ".rp" -type "double3" 0 6.2172489379008766e-015 1.7763568394002505e-015 ;
	setAttr ".rpt" -type "double3" 2.2706918927619567e-016 2.3136460860925818e-016 -1.3598824851345137e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 114.4591053805155;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.34605789184570313 52.198747634887695 -1.630626916885376 ;
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
	setAttr ".t" -type "double3" -9.8538487259320888 47.218325054733015 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 191.14267122323838;
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
		20 -1.9999999999999999e-011 -2.4492127076447545e-015
		14.142135623730951 -1.9999999999999999e-011 14.142135623730947
		5.6654984523230034e-015 -1.9999999999999999e-011 20
		-14.142135623730947 -1.9999999999999999e-011 14.142135623730953
		-20 -1.9999999999999999e-011 5.5511151231257827e-015
		-14.142135623730956 -1.9999999999999999e-011 -14.142135623730946
		-1.010639055082363e-014 -1.9999999999999999e-011 -20
		14.142135623730942 -1.9999999999999999e-011 -14.14213562373096
		20 -1.9999999999999999e-011 -1.5771889003146633e-014
		20 -1.9999999999999999e-011 -2.4492127076447545e-015
		14.142135623730951 1.9999999999999999e-011 14.142135623730951
		5.6654984523230034e-015 1.9999999999999999e-011 20
		-14.142135623730947 1.9999999999999999e-011 14.142135623730956
		-20 1.9999999999999999e-011 8.0003278307705372e-015
		-14.142135623730956 1.9999999999999999e-011 -14.142135623730942
		-1.010639055082363e-014 1.9999999999999999e-011 -20
		14.142135623730942 1.9999999999999999e-011 -14.142135623730956
		20 -1.9999999999999999e-011 -1.5771889003146633e-014
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "UpperbodyControl" -p "main";
	addAttr -ci true -sn "upperBodyControl" -ln "upperBodyControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 47.645506901689565 -1.7521305385548587 ;
	setAttr ".sp" -type "double3" 0 47.645506901689565 -1.7521305385548587 ;
	setAttr ".hdl" -type "double3" 0 47.645506901689565 -1.7521305385548587 ;
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
		7.836116248912238 46.395506901689565 -9.58824678746711
		11.08194187554388 46.395506901689565 -1.7521305385548576
		7.8361162489122425 46.395506901689565 6.0839857103573838
		3.4541083832369569e-015 46.395506901689565 9.329811336989021
		-7.8361162489122416 46.395506901689565 6.0839857103573864
		-11.081941875543881 46.395506901689565 -1.7521305385548551
		-7.8361162489122442 46.395506901689565 -9.5882467874670976
		-5.9521101886435596e-015 46.395506901689565 -12.834072414098738
		7.836116248912238 46.395506901689565 -9.58824678746711
		11.08194187554388 46.395506901689565 -1.7521305385548576
		7.8361162489122425 46.395506901689565 6.0839857103573838
		7.836116248912238 47.228840235022901 -9.58824678746711
		11.08194187554388 47.228840235022901 -1.7521305385548573
		7.8361162489122425 47.228840235022901 6.0839857103573838
		3.4541083832369569e-015 47.228840235022901 9.329811336989021
		-7.8361162489122416 47.228840235022901 6.0839857103573864
		-11.081941875543881 47.228840235022901 -1.7521305385548549
		-7.8361162489122442 47.228840235022901 -9.5882467874670976
		-5.9521101886435596e-015 47.228840235022901 -12.834072414098738
		7.836116248912238 47.228840235022901 -9.58824678746711
		11.08194187554388 47.228840235022901 -1.7521305385548573
		7.8361162489122425 47.228840235022901 6.0839857103573838
		7.836116248912238 48.062173568356229 -9.58824678746711
		11.08194187554388 48.062173568356229 -1.7521305385548573
		7.8361162489122425 48.062173568356229 6.0839857103573838
		3.4541083832369569e-015 48.062173568356229 9.329811336989021
		-7.8361162489122416 48.062173568356229 6.0839857103573864
		-11.081941875543881 48.062173568356229 -1.7521305385548549
		-7.8361162489122442 48.062173568356229 -9.5882467874670976
		-5.9521101886435596e-015 48.062173568356229 -12.834072414098738
		7.836116248912238 48.062173568356229 -9.58824678746711
		11.08194187554388 48.062173568356229 -1.7521305385548573
		7.8361162489122425 48.062173568356229 6.0839857103573838
		7.836116248912238 48.895506901689565 -9.58824678746711
		11.08194187554388 48.895506901689565 -1.7521305385548573
		7.8361162489122425 48.895506901689565 6.0839857103573838
		3.4541083832369569e-015 48.895506901689565 9.329811336989021
		-7.8361162489122416 48.895506901689565 6.0839857103573864
		-11.081941875543881 48.895506901689565 -1.7521305385548549
		-7.8361162489122442 48.895506901689565 -9.5882467874670976
		-5.9521101886435596e-015 48.895506901689565 -12.834072414098738
		7.836116248912238 48.895506901689565 -9.58824678746711
		11.08194187554388 48.895506901689565 -1.7521305385548573
		7.8361162489122425 48.895506901689565 6.0839857103573838
		
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
	setAttr ".t" -type "double3" 0 47.645506901689565 -1.7521305385548587 ;
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
		-2.6583205737060714e-015 -5.2017990123085429 -10.403598024617088
		10.403598024617088 -5.2017990123085438 -9.5552341826700134e-016
		1.4070365499029801e-015 -5.2017990123085447 10.403598024617088
		-10.403598024617088 -5.2017990123085438 1.473539212676469e-015
		-2.6583205737060714e-015 -5.2017990123085429 -10.403598024617088
		10.403598024617088 -5.2017990123085438 -9.5552341826700134e-016
		1.4070365499029801e-015 -5.2017990123085447 10.403598024617088
		-2.6583205737060714e-015 -1.7339330041028473 -10.403598024617088
		10.403598024617088 -1.733933004102848 -7.4318488087433447e-016
		1.4070365499029801e-015 -1.7339330041028487 10.403598024617088
		-10.403598024617088 -1.733933004102848 1.6858777500691361e-015
		-2.6583205737060714e-015 -1.7339330041028473 -10.403598024617088
		10.403598024617088 -1.733933004102848 -7.4318488087433447e-016
		1.4070365499029801e-015 -1.7339330041028487 10.403598024617088
		-2.6583205737060714e-015 1.7339330041028487 -10.403598024617088
		10.403598024617088 1.733933004102848 -5.3084634348166739e-016
		1.4070365499029801e-015 1.7339330041028473 10.403598024617088
		-10.403598024617088 1.733933004102848 1.8982162874618031e-015
		-2.6583205737060714e-015 1.7339330041028487 -10.403598024617088
		10.403598024617088 1.733933004102848 -5.3084634348166739e-016
		1.4070365499029801e-015 1.7339330041028473 10.403598024617088
		-2.6583205737060714e-015 5.2017990123085447 -10.403598024617088
		10.403598024617088 5.2017990123085438 -3.1850780608900046e-016
		1.4070365499029801e-015 5.2017990123085429 10.403598024617088
		-10.403598024617088 5.2017990123085438 2.11055482485447e-015
		-2.6583205737060714e-015 5.2017990123085447 -10.403598024617088
		10.403598024617088 5.2017990123085438 -3.1850780608900046e-016
		1.4070365499029801e-015 5.2017990123085429 10.403598024617088
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 5.6255649216808408 -1.0739325367301662 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -53.271071823370406 2.8260630752850249 ;
	setAttr ".rp" -type "double3" 0 53.271071823370406 -2.8260630752850249 ;
	setAttr ".sp" -type "double3" 0 53.271071823370406 -2.8260630752850249 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1.7256332301709633e-031 56.122042868976749 -3.5776078996040965 ;
createNode transform -n "Ref:prp_pouchControlGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" -8.9680576324462891 -3.9077558946094868 0.57229450378007884 ;
createNode transform -n "Ref:prp_pouchControl" -p "Ref:prp_pouchControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pouchControlShape" -p "Ref:prp_pouchControl";
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
	setAttr ".r" -type "double3" 167.22521711466038 0 0 ;
	setAttr ".rp" -type "double3" 0 53.271071823370413 -2.8260630752850244 ;
	setAttr ".sp" -type "double3" 0 53.271071823370413 -2.8260630752850244 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 53.271071823370413 -2.8260630752850244 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".sy";
	setAttr -l on -k off ".sx";
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
	setAttr ".r" -type "double3" 8.3089079740570071 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.3892318165218498 -3.1086244689504383e-015 ;
	setAttr ".sp" -type "double3" 0 -5.3892318165218498 -3.1086244689504383e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.3892318165218498 -3.1086244689504383e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
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
	setAttr ".r" -type "double3" 1.093082952408299 7.29969696574598 0.13890300343157397 ;
	setAttr ".rp" -type "double3" 0 -6.2016065699538032 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 0 -6.2016065699538032 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.2016065699538032 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".r" -type "double3" 13.12061033096885 -1.5902773407317576e-015 -5.1710799861959477e-017 ;
	setAttr ".rp" -type "double3" -3.3306690738754696e-016 -5.8012498666159615 -9.1824574363362513e-016 ;
	setAttr ".sp" -type "double3" -3.3306690738754696e-016 -5.8012498666159615 -9.1824574363362513e-016 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.3306690738754696e-016 -5.8012498666159615 -9.1824574363362513e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".rp" -type "double3" 2.417196771485087e-016 70.500829071630164 -4.8428129209125483 ;
	setAttr ".sp" -type "double3" 2.417196771485087e-016 70.500829071630164 -4.8428129209125483 ;
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
	setAttr ".or" -type "double3" 2.417196771485085e-016 67.574416519588553 -4.6548735282298299 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.15237896423223832 -13.309313044482629 -1.3060037096724639 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4446139834535521 14.459818473476886 5.6135104274621987 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -18.600542601749321 6.6613381477509392e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.0632586135682895e-013 2.7024145553022998e-022 1.3834579746206281e-021 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.052847694257267 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.4160312861454258e-008 -18.446086870482858 2.1152288809389574e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.59943180291741693 7.1646719590266779 11.244754107541565 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -63.489570272825297 0.6858625366622354 -5.6717997201071615 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.5219602925813049 7.3274719625260332e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -37.552278315219901 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -6.2110844379172221 -1.4864533680884367e-015 ;
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
	setAttr ".rst" -type "double3" 5.201798024594023 42.530978094306441 -0.98552025012348565 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 1.444613983453551 14.459818473476876 5.613510427462197 ;
	setAttr ".rp" -type "double3" 5.201798024594023 42.530978094306441 -0.98552025012348565 ;
	setAttr ".sp" -type "double3" 5.201798024594023 42.530978094306441 -0.98552025012348565 ;
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
		-1.5331160820031275e-015 -1.0325375333491603e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0325375333491603e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.2001808672497729 -6
		6 -6.2001808672497729 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.2001808672497711 6
		-6 -6.2001808672497729 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.2001808672497729 -6
		6 -6.2001808672497729 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.2001808672497711 6
		-1.5331160820031275e-015 -12.400361734499546 -6
		6 -12.400361734499544 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.400361734499544 6
		-6 -12.400361734499544 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.400361734499546 -6
		6 -12.400361734499544 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.400361734499544 6
		-1.5331160820031275e-015 -18.600542601749318 -6
		6 -18.600542601749318 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.600542601749318 6
		-6 -18.600542601749318 1.2784369916862826e-015
		-1.5331160820031275e-015 -18.600542601749318 -6
		6 -18.600542601749318 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.600542601749318 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 11.052847694257267 1.5902773407317584e-015 -7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -3.7747582837255322e-015 -18.600542601749318 8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" -3.7747582837255322e-015 -18.600542601749318 8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.7747582837255322e-015 -18.600542601749318 8.8817841970012523e-016 ;
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
		-1.5331160820031275e-015 -1.0239635178922932e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0239635178922932e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.1486956234942856 -6
		6 -6.1486956234942856 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.1486956234942838 6
		-6 -6.1486956234942856 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.1486956234942856 -6
		6 -6.1486956234942856 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.1486956234942838 6
		-1.5331160820031275e-015 -12.297391246988571 -6
		6 -12.297391246988569 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.297391246988569 6
		-6 -12.297391246988569 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.297391246988571 -6
		6 -12.297391246988569 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.297391246988569 6
		-1.5331160820031275e-015 -18.446086870482855 -6
		6 -18.446086870482855 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.446086870482855 6
		-6 -18.446086870482855 1.2784369916862826e-015
		-1.5331160820031275e-015 -18.446086870482855 -6
		6 -18.446086870482855 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.446086870482855 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -63.489570272825297 0.68586253666223462 -5.6717997201071615 ;
	setAttr ".rp" -type "double3" 2.4160312639409653e-008 -18.446086870482862 2.1152306572957968e-009 ;
	setAttr ".sp" -type "double3" 2.4160312639409653e-008 -18.446086870482862 2.1152306572957968e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.4160312639409653e-008 -18.446086870482862 2.1152306572957968e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
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
		-1.5331160820031275e-015 -4.7306382658825502e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -4.7306382658825502e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.8406534308604354 -6
		6 -2.8406534308604354 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.8406534308604345 6
		-6 -2.8406534308604354 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.8406534308604354 -6
		6 -2.8406534308604354 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.8406534308604345 6
		-1.5331160820031275e-015 -5.6813068617208708 -6
		6 -5.68130686172087 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.68130686172087 6
		-6 -5.68130686172087 1.1151561445099656e-015
		-1.5331160820031275e-015 -5.6813068617208708 -6
		6 -5.68130686172087 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.68130686172087 6
		-1.5331160820031275e-015 -8.5219602925813049 -6
		6 -8.5219602925813049 -1.2246063538223773e-016
		8.1147111599677579e-016 -8.5219602925813049 6
		-6 -8.5219602925813049 1.2784369916862826e-015
		-1.5331160820031275e-015 -8.5219602925813049 -6
		6 -8.5219602925813049 -1.2246063538223773e-016
		8.1147111599677579e-016 -8.5219602925813049 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -37.552278315219901 1.5902773407317592e-015 0 ;
	setAttr ".rp" -type "double3" -1.4432899320127035e-015 -8.5219602925813014 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -1.4432899320127035e-015 -8.5219602925813014 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4432899320127035e-015 -8.5219602925813014 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999956 ;
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
		-1.5331160820031275e-015 -3.4478444754333508e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -3.4478444754333508e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.0703614793057419 -6
		6 -2.0703614793057419 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.070361479305741 6
		-6 -2.0703614793057419 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.0703614793057419 -6
		6 -2.0703614793057419 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.070361479305741 6
		-1.5331160820031275e-015 -4.1407229586114838 -6
		6 -4.1407229586114829 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.1407229586114829 6
		-6 -4.1407229586114829 1.1151561445099656e-015
		-1.5331160820031275e-015 -4.1407229586114838 -6
		6 -4.1407229586114829 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.1407229586114829 6
		-1.5331160820031275e-015 -6.2110844379172248 -6
		6 -6.2110844379172248 -1.2246063538223773e-016
		8.1147111599677579e-016 -6.2110844379172248 6
		-6 -6.2110844379172248 1.2784369916862826e-015
		-1.5331160820031275e-015 -6.2110844379172248 -6
		6 -6.2110844379172248 -1.2246063538223773e-016
		8.1147111599677579e-016 -6.2110844379172248 6
		
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
	setAttr ".rst" -type "double3" 5.2017980245940212 42.530978094306434 -0.98552025012348565 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.15237981604673465 -13.309462351432877 -1.3060190213786187 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -178.55538601654644 -14.459818473476883 -5.6135104274621836 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.2741559487494669e-006 18.600531438076853 3.5699805940314633e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.9486773068588748e-013 1.8507085793445513e-019 1.0646944770979785e-018 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.052847694257268 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.5510477072503477e-006 18.446115417702135 -6.2439894996657586e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.59942797315417184 7.1647509633859308 11.24488134170651 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -63.489570272825333 0.68586253666226238 -5.6717997201071455 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1224784177699121e-006 8.521966232526367 -6.1070101198268389e-008 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -37.552278315219965 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.2441140721696229e-005 6.2110755803802977 1.3435415721917667e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793334710984e-006 0 0 ;
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
	setAttr ".rst" -type "double3" -5.2018 42.531000000000006 -0.98552000000000273 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -178.55538601654644 -14.459818473476872 -5.613510427462181 ;
	setAttr ".rp" -type "double3" -5.2018 42.531000000000006 -0.98552000000000273 ;
	setAttr ".sp" -type "double3" -5.2018 42.531000000000006 -0.98552000000000273 ;
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
		-1.5331160820031275e-015 1.0325369136408719e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0325369136408719e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.2001771460257507 -6
		6 6.2001771460257507 -4.4902232973487166e-016
		8.1147111599677579e-016 6.2001771460257489 6
		-6 6.2001771460257507 9.5187529733364862e-016
		-1.5331160820031275e-015 6.2001771460257507 -6
		6 6.2001771460257507 -4.4902232973487166e-016
		8.1147111599677579e-016 6.2001771460257489 6
		-1.5331160820031275e-015 12.400354292051501 -6
		6 12.4003542920515 -2.8574148255855469e-016
		8.1147111599677579e-016 12.4003542920515 6
		-6 12.4003542920515 1.1151561445099656e-015
		-1.5331160820031275e-015 12.400354292051501 -6
		6 12.4003542920515 -2.8574148255855469e-016
		8.1147111599677579e-016 12.4003542920515 6
		-1.5331160820031275e-015 18.600531438077251 -6
		6 18.600531438077251 -1.2246063538223773e-016
		8.1147111599677579e-016 18.600531438077251 6
		-6 18.600531438077251 1.2784369916862826e-015
		-1.5331160820031275e-015 18.600531438077251 -6
		6 18.600531438077251 -1.2246063538223773e-016
		8.1147111599677579e-016 18.600531438077251 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 11.05284769425727 0 0 ;
	setAttr ".rp" -type "double3" -1.274155950248268e-006 18.600531438076864 3.5699805942535079e-006 ;
	setAttr ".sp" -type "double3" -1.274155950248268e-006 18.600531438076864 3.5699805942535079e-006 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.274155950248268e-006 18.600531438076864 3.5699805942535079e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-1.5331160820031275e-015 1.0239651025814675e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0239651025814675e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.1487051392350525 -6
		6 6.1487051392350525 -4.4902232973487166e-016
		8.1147111599677579e-016 6.1487051392350498 6
		-6 6.1487051392350525 9.5187529733364862e-016
		-1.5331160820031275e-015 6.1487051392350525 -6
		6 6.1487051392350525 -4.4902232973487166e-016
		8.1147111599677579e-016 6.1487051392350498 6
		-1.5331160820031275e-015 12.297410278470105 -6
		6 12.297410278470103 -2.8574148255855469e-016
		8.1147111599677579e-016 12.297410278470103 6
		-6 12.297410278470103 1.1151561445099656e-015
		-1.5331160820031275e-015 12.297410278470105 -6
		6 12.297410278470103 -2.8574148255855469e-016
		8.1147111599677579e-016 12.297410278470103 6
		-1.5331160820031275e-015 18.446115417705155 -6
		6 18.446115417705155 -1.2246063538223773e-016
		8.1147111599677579e-016 18.446115417705155 6
		-6 18.446115417705155 1.2784369916862826e-015
		-1.5331160820031275e-015 18.446115417705155 -6
		6 18.446115417705155 -1.2246063538223773e-016
		8.1147111599677579e-016 18.446115417705155 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -63.489570272825318 0.6858625366622606 -5.6717997201071455 ;
	setAttr ".rp" -type "double3" 8.5510477088046599e-006 18.446115417702121 -6.2439894978894017e-006 ;
	setAttr ".sp" -type "double3" 8.5510477088046599e-006 18.446115417702121 -6.2439894978894017e-006 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.5510477088046599e-006 18.446115417702121 -6.2439894978894017e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1 ;
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
		-1.5331160820031275e-015 4.730641563214482e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 4.730641563214482e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.84065541084215 -6
		6 2.84065541084215 -4.4902232973487166e-016
		8.1147111599677579e-016 2.8406554108421491 6
		-6 2.84065541084215 9.5187529733364862e-016
		-1.5331160820031275e-015 2.84065541084215 -6
		6 2.84065541084215 -4.4902232973487166e-016
		8.1147111599677579e-016 2.8406554108421491 6
		-1.5331160820031275e-015 5.6813108216843 -6
		6 5.6813108216842991 -2.8574148255855469e-016
		8.1147111599677579e-016 5.6813108216842991 6
		-6 5.6813108216842991 1.1151561445099656e-015
		-1.5331160820031275e-015 5.6813108216843 -6
		6 5.6813108216842991 -2.8574148255855469e-016
		8.1147111599677579e-016 5.6813108216842991 6
		-1.5331160820031275e-015 8.5219662325264487 -6
		6 8.5219662325264487 -1.2246063538223773e-016
		8.1147111599677579e-016 8.5219662325264487 6
		-6 8.5219662325264487 1.2784369916862826e-015
		-1.5331160820031275e-015 8.5219662325264487 -6
		6 8.5219662325264487 -1.2246063538223773e-016
		8.1147111599677579e-016 8.5219662325264487 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -37.552278315219965 0 -1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" -1.1224784158825329e-006 8.5219662325263688 -6.1070098089643921e-008 ;
	setAttr ".sp" -type "double3" -1.1224784158825329e-006 8.5219662325263688 -6.1070098089643921e-008 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1224784158825329e-006 8.5219662325263688 -6.1070098089643921e-008 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999978 ;
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
		-1.5331160820031275e-015 3.4478395585351351e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 3.4478395585351351e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.0703585268069458 -6
		6 2.0703585268069458 -4.4902232973487166e-016
		8.1147111599677579e-016 2.0703585268069449 6
		-6 2.0703585268069458 9.5187529733364862e-016
		-1.5331160820031275e-015 2.0703585268069458 -6
		6 2.0703585268069458 -4.4902232973487166e-016
		8.1147111599677579e-016 2.0703585268069449 6
		-1.5331160820031275e-015 4.1407170536138915 -6
		6 4.1407170536138906 -2.8574148255855469e-016
		8.1147111599677579e-016 4.1407170536138906 6
		-6 4.1407170536138906 1.1151561445099656e-015
		-1.5331160820031275e-015 4.1407170536138915 -6
		6 4.1407170536138906 -2.8574148255855469e-016
		8.1147111599677579e-016 4.1407170536138906 6
		-1.5331160820031275e-015 6.211075580420836 -6
		6 6.211075580420836 -1.2246063538223773e-016
		8.1147111599677579e-016 6.211075580420836 6
		-6 6.211075580420836 1.2784369916862826e-015
		-1.5331160820031275e-015 6.211075580420836 -6
		6 6.211075580420836 -1.2246063538223773e-016
		8.1147111599677579e-016 6.211075580420836 6
		
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
	setAttr ".rst" -type "double3" -5.2017999999999986 42.53100000000002 -0.98552000000000273 ;
	setAttr -k on ".w0";
createNode transform -n "prp_vest_front_L_ctrl_space1" -p "UpperbodyControl";
	setAttr ".t" -type "double3" 10.107890503861906 46.736234483189136 -3.2873453474596568 ;
createNode transform -n "prp_vest_front_L_ctrl" -p "prp_vest_front_L_ctrl_space1";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.8619063502665085e-009 -3.1891360663394153e-009 
		4.5965675710135656e-010 ;
	setAttr ".sp" -type "double3" -3.8619063502665085e-009 -3.1891360663394153e-009 
		4.5965675710135656e-010 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "prp_vest_front_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		-0.83114564066579089 1.4747515962140895e-032 -2.4084521304279225e-016
		-0.58770871866841834 -3.5986780057413519e-017 0.58770871866841801
		-2.5044040226928896e-016 -5.0892992423331857e-017 0.83114564066579111
		0.5877087186684179 -3.5986780057413538e-017 0.58770871866841823
		0.83114564066579089 -2.733472550928594e-032 4.4640994494604389e-016
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "prp_vest_front_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		-0.83114564066579089 2.4084521304279225e-016 0
		-0.58770871866841834 -0.58770871866841801 0
		-2.5044040226928896e-016 -0.83114564066579111 0
		0.5877087186684179 -0.58770871866841823 0
		0.83114564066579089 -4.4640994494604389e-016 0
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		;
createNode nurbsCurve -n "nurbsCircleShape3" -p "prp_vest_front_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 -0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 -0.71979323906126758
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		;
createNode nurbsCurve -n "nurbsCircleShape4" -p "prp_vest_front_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 -0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 -0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 -2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 0.71979323906126758
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		;
createNode nurbsSurface -n "nurbsSphereShape1" -p "prp_vest_front_L_ctrl";
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
		9 0 0 0 1 2 3 4 4 4
		11 -2 -1 0 1 2 3 4 5 6 7 8
		
		63
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		-0.11250892911533633 -0.73499999999999999 0.19487118153292807
		-0.22501785823067286 -0.73499999999999999 7.296624975177194e-017
		-0.11250892911533658 -0.73499999999999999 -0.19487118153292804
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		-0.34691371644886654 -0.57595454429504989 0.6008721827319804
		-0.69382743289773341 -0.57595454429504989 2.0428547992642522e-016
		-0.34691371644886704 -0.57595454429504989 -0.60087218273197995
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		-0.48804314177556629 -4.2754637362869907e-017 0.84531551784082248
		-0.97608628355113325 9.0060097967976116e-018 2.7746887783001528e-016
		-0.48804314177556701 6.0766656956465121e-017 -0.84531551784082204
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		-0.3469137164488667 0.57595454429505 0.60087218273198051
		-0.69382743289773363 0.57595454429505 1.9017866214391917e-016
		-0.34691371644886709 0.57595454429505 -0.60087218273198029
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		-0.11250892911533647 0.73499999999999988 0.19487118153292821
		-0.225017858230673 0.73499999999999988 5.4963941804305887e-017
		-0.11250892911533655 0.73499999999999988 -0.19487118153292807
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "prp_vest_back_L_ctrl_space1" -p "UpperbodyControl";
	setAttr ".t" -type "double3" 7.4472466508813833 43.521857167923365 -7.4972062999848017 ;
createNode transform -n "prp_vest_back_L_ctrl" -p "prp_vest_back_L_ctrl_space1";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1861711612937142e-010 2.0766321995324688e-009 -1.5198509117908543e-011 ;
	setAttr ".sp" -type "double3" 1.1861711612937142e-010 2.0766321995324688e-009 -1.5198509117908543e-011 ;
createNode nurbsCurve -n "nurbsCircleShape5" -p "prp_vest_back_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		-0.83114564066579089 1.4747515962140895e-032 -2.4084521304279225e-016
		-0.58770871866841834 -3.5986780057413519e-017 0.58770871866841801
		-2.5044040226928896e-016 -5.0892992423331857e-017 0.83114564066579111
		0.5877087186684179 -3.5986780057413538e-017 0.58770871866841823
		0.83114564066579089 -2.733472550928594e-032 4.4640994494604389e-016
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		;
createNode nurbsCurve -n "nurbsCircleShape6" -p "prp_vest_back_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		-0.83114564066579089 2.4084521304279225e-016 0
		-0.58770871866841834 -0.58770871866841801 0
		-2.5044040226928896e-016 -0.83114564066579111 0
		0.5877087186684179 -0.58770871866841823 0
		0.83114564066579089 -4.4640994494604389e-016 0
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		;
createNode nurbsCurve -n "nurbsCircleShape7" -p "prp_vest_back_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 -0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 -0.71979323906126758
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		;
createNode nurbsCurve -n "nurbsCircleShape8" -p "prp_vest_back_L_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 -0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 -0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 -2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 0.71979323906126758
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		;
createNode nurbsSurface -n "nurbsSphereShape2" -p "prp_vest_back_L_ctrl";
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
		9 0 0 0 1 2 3 4 4 4
		11 -2 -1 0 1 2 3 4 5 6 7 8
		
		63
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		-0.11250892911533633 -0.73499999999999999 0.19487118153292807
		-0.22501785823067286 -0.73499999999999999 7.296624975177194e-017
		-0.11250892911533658 -0.73499999999999999 -0.19487118153292804
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		-0.34691371644886654 -0.57595454429504989 0.6008721827319804
		-0.69382743289773341 -0.57595454429504989 2.0428547992642522e-016
		-0.34691371644886704 -0.57595454429504989 -0.60087218273197995
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		-0.48804314177556629 -4.2754637362869907e-017 0.84531551784082248
		-0.97608628355113325 9.0060097967976116e-018 2.7746887783001528e-016
		-0.48804314177556701 6.0766656956465121e-017 -0.84531551784082204
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		-0.3469137164488667 0.57595454429505 0.60087218273198051
		-0.69382743289773363 0.57595454429505 1.9017866214391917e-016
		-0.34691371644886709 0.57595454429505 -0.60087218273198029
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		-0.11250892911533647 0.73499999999999988 0.19487118153292821
		-0.225017858230673 0.73499999999999988 5.4963941804305887e-017
		-0.11250892911533655 0.73499999999999988 -0.19487118153292807
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "prp_vest_back_M_ctrl_space1" -p "UpperbodyControl";
	setAttr ".t" -type "double3" 0 43.641140981857355 -10.113828653214551 ;
createNode transform -n "prp_vest_back_M_ctrl" -p "prp_vest_back_M_ctrl_space1";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -1.8573516058495443e-009 3.2145504036407146e-009 ;
	setAttr ".sp" -type "double3" 0 -1.8573516058495443e-009 3.2145504036407146e-009 ;
createNode nurbsCurve -n "nurbsCircleShape9" -p "prp_vest_back_M_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		-0.83114564066579089 1.4747515962140895e-032 -2.4084521304279225e-016
		-0.58770871866841834 -3.5986780057413519e-017 0.58770871866841801
		-2.5044040226928896e-016 -5.0892992423331857e-017 0.83114564066579111
		0.5877087186684179 -3.5986780057413538e-017 0.58770871866841823
		0.83114564066579089 -2.733472550928594e-032 4.4640994494604389e-016
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		;
createNode nurbsCurve -n "nurbsCircleShape10" -p "prp_vest_back_M_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		-0.83114564066579089 2.4084521304279225e-016 0
		-0.58770871866841834 -0.58770871866841801 0
		-2.5044040226928896e-016 -0.83114564066579111 0
		0.5877087186684179 -0.58770871866841823 0
		0.83114564066579089 -4.4640994494604389e-016 0
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		;
createNode nurbsCurve -n "nurbsCircleShape11" -p "prp_vest_back_M_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 -0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 -0.71979323906126758
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		;
createNode nurbsCurve -n "nurbsCircleShape12" -p "prp_vest_back_M_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 -0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 -0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 -2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 0.71979323906126758
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		;
createNode nurbsSurface -n "nurbsSphereShape3" -p "prp_vest_back_M_ctrl";
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
		9 0 0 0 1 2 3 4 4 4
		11 -2 -1 0 1 2 3 4 5 6 7 8
		
		63
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		-0.11250892911533633 -0.73499999999999999 0.19487118153292807
		-0.22501785823067286 -0.73499999999999999 7.296624975177194e-017
		-0.11250892911533658 -0.73499999999999999 -0.19487118153292804
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		-0.34691371644886654 -0.57595454429504989 0.6008721827319804
		-0.69382743289773341 -0.57595454429504989 2.0428547992642522e-016
		-0.34691371644886704 -0.57595454429504989 -0.60087218273197995
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		-0.48804314177556629 -4.2754637362869907e-017 0.84531551784082248
		-0.97608628355113325 9.0060097967976116e-018 2.7746887783001528e-016
		-0.48804314177556701 6.0766656956465121e-017 -0.84531551784082204
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		-0.3469137164488667 0.57595454429505 0.60087218273198051
		-0.69382743289773363 0.57595454429505 1.9017866214391917e-016
		-0.34691371644886709 0.57595454429505 -0.60087218273198029
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		-0.11250892911533647 0.73499999999999988 0.19487118153292821
		-0.225017858230673 0.73499999999999988 5.4963941804305887e-017
		-0.11250892911533655 0.73499999999999988 -0.19487118153292807
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "prp_vest_back_R_ctrl_space1" -p "UpperbodyControl";
	setAttr ".t" -type "double3" -7.44725 43.5219 -7.4972100000000026 ;
	setAttr ".r" -type "double3" -179.99999879258178 0 0 ;
createNode transform -n "prp_vest_back_R_ctrl" -p "prp_vest_back_R_ctrl_space1";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -2.6645352591003757e-015 ;
	setAttr ".sp" -type "double3" 0 0 -2.6645352591003757e-015 ;
createNode nurbsCurve -n "nurbsCircleShape13" -p "prp_vest_back_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		-0.83114564066579089 1.4747515962140895e-032 -2.4084521304279225e-016
		-0.58770871866841834 -3.5986780057413519e-017 0.58770871866841801
		-2.5044040226928896e-016 -5.0892992423331857e-017 0.83114564066579111
		0.5877087186684179 -3.5986780057413538e-017 0.58770871866841823
		0.83114564066579089 -2.733472550928594e-032 4.4640994494604389e-016
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		;
createNode nurbsCurve -n "nurbsCircleShape14" -p "prp_vest_back_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		-0.83114564066579089 2.4084521304279225e-016 0
		-0.58770871866841834 -0.58770871866841801 0
		-2.5044040226928896e-016 -0.83114564066579111 0
		0.5877087186684179 -0.58770871866841823 0
		0.83114564066579089 -4.4640994494604389e-016 0
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		;
createNode nurbsCurve -n "nurbsCircleShape15" -p "prp_vest_back_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 -0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 -0.71979323906126758
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		;
createNode nurbsCurve -n "nurbsCircleShape16" -p "prp_vest_back_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 -0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 -0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 -2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 0.71979323906126758
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		;
createNode nurbsSurface -n "nurbsSphereShape4" -p "prp_vest_back_R_ctrl";
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
		9 0 0 0 1 2 3 4 4 4
		11 -2 -1 0 1 2 3 4 5 6 7 8
		
		63
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		-0.11250892911533633 -0.73499999999999999 0.19487118153292807
		-0.22501785823067286 -0.73499999999999999 7.296624975177194e-017
		-0.11250892911533658 -0.73499999999999999 -0.19487118153292804
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		-0.34691371644886654 -0.57595454429504989 0.6008721827319804
		-0.69382743289773341 -0.57595454429504989 2.0428547992642522e-016
		-0.34691371644886704 -0.57595454429504989 -0.60087218273197995
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		-0.48804314177556629 -4.2754637362869907e-017 0.84531551784082248
		-0.97608628355113325 9.0060097967976116e-018 2.7746887783001528e-016
		-0.48804314177556701 6.0766656956465121e-017 -0.84531551784082204
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		-0.3469137164488667 0.57595454429505 0.60087218273198051
		-0.69382743289773363 0.57595454429505 1.9017866214391917e-016
		-0.34691371644886709 0.57595454429505 -0.60087218273198029
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		-0.11250892911533647 0.73499999999999988 0.19487118153292821
		-0.225017858230673 0.73499999999999988 5.4963941804305887e-017
		-0.11250892911533655 0.73499999999999988 -0.19487118153292807
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "prp_vest_front_R_ctrl_space1" -p "UpperbodyControl";
	setAttr ".t" -type "double3" -10.1079 46.736278939766365 -3.2873458227320684 ;
	setAttr ".r" -type "double3" -179.99999879258178 0 0 ;
createNode transform -n "prp_vest_front_R_ctrl" -p "prp_vest_front_R_ctrl_space1";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -2.3363355694527854e-010 2.6793145480041858e-010 ;
	setAttr ".sp" -type "double3" 0 -2.3363355694527854e-010 2.6793145480041858e-010 ;
createNode nurbsCurve -n "nurbsCircleShape17" -p "prp_vest_front_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		-0.83114564066579089 1.4747515962140895e-032 -2.4084521304279225e-016
		-0.58770871866841834 -3.5986780057413519e-017 0.58770871866841801
		-2.5044040226928896e-016 -5.0892992423331857e-017 0.83114564066579111
		0.5877087186684179 -3.5986780057413538e-017 0.58770871866841823
		0.83114564066579089 -2.733472550928594e-032 4.4640994494604389e-016
		0.58770871866841878 3.5986780057413513e-017 -0.5877087186684179
		-9.4823779558719952e-017 5.0892992423331851e-017 -0.83114564066579089
		-0.58770871866841823 3.5986780057413538e-017 -0.58770871866841823
		;
createNode nurbsCurve -n "nurbsCircleShape18" -p "prp_vest_front_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		-0.83114564066579089 2.4084521304279225e-016 0
		-0.58770871866841834 -0.58770871866841801 0
		-2.5044040226928896e-016 -0.83114564066579111 0
		0.5877087186684179 -0.58770871866841823 0
		0.83114564066579089 -4.4640994494604389e-016 0
		0.58770871866841878 0.5877087186684179 0
		-9.4823779558719952e-017 0.83114564066579089 0
		-0.58770871866841823 0.58770871866841823 0
		;
createNode nurbsCurve -n "nurbsCircleShape19" -p "prp_vest_front_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 -0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 -0.71979323906126758
		0.29385435933420945 0.5877087186684179 -0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 0.50897068039245186
		;
createNode nurbsCurve -n "nurbsCircleShape20" -p "prp_vest_front_R_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		-0.41557282033289555 2.4084521304279225e-016 -0.71979323906126758
		-0.29385435933420928 -0.58770871866841801 -0.50897068039245208
		-1.2522020113464453e-016 -0.83114564066579111 -2.168877504991982e-016
		0.293854359334209 -0.58770871866841823 0.50897068039245164
		0.41557282033289555 -4.4640994494604389e-016 0.71979323906126758
		0.29385435933420945 0.5877087186684179 0.50897068039245241
		-4.7411889779359982e-017 0.83114564066579089 -8.2119801980707043e-017
		-0.29385435933420917 0.58770871866841823 -0.50897068039245186
		;
createNode nurbsSurface -n "nurbsSphereShape5" -p "prp_vest_front_R_ctrl";
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
		9 0 0 0 1 2 3 4 4 4
		11 -2 -1 0 1 2 3 4 5 6 7 8
		
		63
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		3.4239017735828878e-017 -0.73499999999999999 -2.1232333587316958e-016
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		-0.11250892911533633 -0.73499999999999999 0.19487118153292807
		-0.22501785823067286 -0.73499999999999999 7.296624975177194e-017
		-0.11250892911533658 -0.73499999999999999 -0.19487118153292804
		0.11250892911533625 -0.73499999999999999 -0.19487118153292823
		0.22501785823067288 -0.73499999999999999 -4.3597655859482136e-017
		0.11250892911533647 -0.73499999999999999 0.19487118153292798
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		-0.34691371644886654 -0.57595454429504989 0.6008721827319804
		-0.69382743289773341 -0.57595454429504989 2.0428547992642522e-016
		-0.34691371644886704 -0.57595454429504989 -0.60087218273197995
		0.34691371644886626 -0.57595454429504989 -0.60087218273198062
		0.69382743289773352 -0.57595454429504989 9.3281044625763049e-017
		0.3469137164488667 -0.57595454429504989 0.60087218273198018
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		-0.48804314177556629 -4.2754637362869907e-017 0.84531551784082248
		-0.97608628355113325 9.0060097967976116e-018 2.7746887783001528e-016
		-0.48804314177556701 6.0766656956465121e-017 -0.84531551784082204
		0.48804314177556596 6.0766656956465182e-017 -0.84531551784082293
		0.97608628355113336 9.0060097967976131e-018 2.4038029147867107e-016
		0.48804314177556662 -4.2754637362869888e-017 0.84531551784082215
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		-0.3469137164488667 0.57595454429505 0.60087218273198051
		-0.69382743289773363 0.57595454429505 1.9017866214391917e-016
		-0.34691371644886709 0.57595454429505 -0.60087218273198029
		0.34691371644886643 0.57595454429505 -0.60087218273198073
		0.69382743289773385 0.57595454429505 2.4845604023333033e-016
		0.34691371644886676 0.57595454429505 0.6008721827319804
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		-0.11250892911533647 0.73499999999999988 0.19487118153292821
		-0.225017858230673 0.73499999999999988 5.4963941804305887e-017
		-0.11250892911533655 0.73499999999999988 -0.19487118153292807
		0.11250892911533636 0.73499999999999988 -0.19487118153292821
		0.22501785823067302 0.73499999999999988 1.544277315626449e-016
		0.11250892911533644 0.73499999999999988 0.19487118153292821
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		1.1768957687850799e-016 0.73499999999999999 -5.0824709121397682e-017
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -4.9303806576313238e-032 53.271071823370406 -2.8260630752850244 ;
	setAttr ".r" -type "double3" 1.5412650519588342 -7.8667870603733006e-018 5.8485270403897655e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 167.22521711466038 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -5.3892318165218427 -1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" -2.7475751061136608 1.0439431784860875e-016 2.2166671391421567e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.308907974057032 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" -1.15621028744767e-016 -6.2016065699538174 -8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 1.0700612591470069 -0.0012801846395680137 0.13708936609494199 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0930829524082772 7.2996969657459889 0.1389030034315713 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 1.4799900410985628e-016 -5.8012498666159615 1.7953186040947999e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.120610330968882 0 0 ;
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
	setAttr ".lr" -type "double3" 170.28504816692276 -7.1094161107687874 1.66590104140578 ;
	setAttr ".o" -type "double3" -170.41715453137479 -7.2872477319354321 0.44930562464042684 ;
	setAttr ".rsrr" -type "double3" -7.0941278246705784e-015 1.5902773407317584e-015 
		-7.9513867036587939e-016 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.573442993630178e-017 70.518667461637889 -4.8439585338857407 ;
	setAttr ".r" -type "double3" 176.46223513848304 -7.287247731941858 0.44930562453556955 ;
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
		6 0 0 0 17.392088253091625 17.392088253091625 17.392088253091625
		4
		-4.9303806576313238e-032 53.271071823370406 -2.8260630752850244
		3.944304526105059e-031 58.973013914583085 -4.3291527239231691
		2.417196771485084e-016 64.648003967546941 -4.4669341355471106
		2.417196771485086e-016 70.500829071630164 -4.8428129209125501
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 4.6867821735589107e-017 70.500829071630164 -4.8428129209125483 ;
	setAttr ".sp" -type "double3" 4.6867821735589107e-017 70.500829071630164 -4.8428129209125483 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6853243172532582e-016 1.3520358814348278e-018 
		3.5585142539961251e-015 ;
	setAttr ".tg[0].tor" -type "double3" 170.15754716031256 -7.1094161107687786 1.6659010414057727 ;
	setAttr ".tg[1].tot" -type "double3" 6.5590727153418098e-006 0.017396803316046316 
		-0.0041075270199826203 ;
	setAttr ".tg[1].tor" -type "double3" 170.28504816911536 -7.1094161107687821 1.6659010414057784 ;
	setAttr ".lr" -type "double3" -7.9141145784853937e-015 6.3611093629270351e-015 -1.3914926731402894e-015 ;
	setAttr ".rst" -type "double3" 2.9495562612059724e-016 0 -1.7763568394002505e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" -1.7034164583982998 146.10726603758692 4.6484925177945051 ;
	setAttr ".r" -type "double3" -169.47773232379305 -7.2882294261019203 0.4330005780325904 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -0.081227050859468672 73.275650900229365 -4.3716826317779436 ;
	setAttr ".rpt" -type "double3" 1.7034164583982985 -146.10726603758687 -4.648492517794498 ;
	setAttr ".sp" -type "double3" -0.081227050859468686 73.27565090022938 -4.3716826317779445 ;
	setAttr ".spt" -type "double3" 1.3877787807814455e-017 -1.4210854715202001e-014 
		8.8817841970012513e-016 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -0.69012988214366977 -0.84918270552682817 70.66916122752005 ;
	setAttr ".rp" -type "double3" 3.6024390744838213 70.175510565769429 -3.7279222064829178 ;
	setAttr ".sp" -type "double3" 3.6024390744838213 70.175510565769429 -3.7279222064829178 ;
createNode transform -n "lShoulderControl" -p "lShoulderControlZeroGroup";
	addAttr -ci true -sn "lFKshoulderControl" -ln "lFKshoulderControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
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
		-1.7247555922535185e-015 -1.8650688055647351 -6.75
		6.75 -1.8650688055647349 -5.0515012095173062e-016
		9.1290500549637277e-016 -1.8650688055647346 6.75
		-6.75 -1.8650688055647349 1.0708597095003547e-015
		-1.7247555922535185e-015 -1.8650688055647351 -6.75
		6.75 -1.8650688055647349 -5.0515012095173062e-016
		9.1290500549637277e-016 -1.8650688055647346 6.75
		-1.7247555922535185e-015 -3.7301376111294697 -6.75
		6.75 -3.7301376111294697 -3.2145916787837403e-016
		9.1290500549637277e-016 -3.7301376111294697 6.75
		-6.75 -3.7301376111294697 1.2545506625737113e-015
		-1.7247555922535185e-015 -3.7301376111294697 -6.75
		6.75 -3.7301376111294697 -3.2145916787837403e-016
		9.1290500549637277e-016 -3.7301376111294697 6.75
		-1.7247555922535185e-015 -5.5952064166942046 -6.75
		6.75 -5.5952064166942046 -1.3776821480501744e-016
		9.1290500549637277e-016 -5.5952064166942046 6.75
		-6.75 -5.5952064166942046 1.4382416156470679e-015
		-1.7247555922535185e-015 -5.5952064166942046 -6.75
		6.75 -5.5952064166942046 -1.3776821480501744e-016
		9.1290500549637277e-016 -5.5952064166942046 6.75
		
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
	setAttr ".rst" -type "double3" 3.6024390744837964 70.175510565769414 -3.7279222064829174 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".rp" -type "double3" 3.2968800606214543e-010 -5.5952064166942073 -5.0888737668230988e-011 ;
	setAttr ".sp" -type "double3" 3.2968800606214543e-010 -5.5952064166942073 -5.0888737668230988e-011 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "left clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to left clavicle^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
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
		-1.7247555922535185e-015 -4.0405995422164764 -6.75
		6.75 -4.0405995422164764 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.0405995422164755 6.75
		-6.75 -4.0405995422164764 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.0405995422164764 -6.75
		6.75 -4.0405995422164764 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.0405995422164755 6.75
		-1.7247555922535185e-015 -8.0811990844329529 -6.75
		6.75 -8.0811990844329529 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.0811990844329529 6.75
		-6.75 -8.0811990844329529 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.0811990844329529 -6.75
		6.75 -8.0811990844329529 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.0811990844329529 6.75
		-1.7247555922535185e-015 -12.121798626649429 -6.75
		6.75 -12.121798626649429 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.121798626649429 6.75
		-6.75 -12.121798626649429 1.4382416156470679e-015
		-1.7247555922535185e-015 -12.121798626649429 -6.75
		6.75 -12.121798626649429 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.121798626649429 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -22.816889009529568 0 0 ;
	setAttr ".rp" -type "double3" 1.6042722705833512e-014 -12.121798626649424 2.2204460492503131e-016 ;
	setAttr ".sp" -type "double3" 1.6042722705833512e-014 -12.121798626649424 2.2204460492503131e-016 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.6042722705833512e-014 -12.121798626649424 2.2204460492503131e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
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
		-1.7247555922535185e-015 -4.7310895771375323 -6.75
		6.75 -4.7310895771375314 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.7310895771375305 6.75
		-6.75 -4.7310895771375314 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.7310895771375323 -6.75
		6.75 -4.7310895771375314 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.7310895771375305 6.75
		-1.7247555922535185e-015 -9.4621791542750628 -6.75
		6.75 -9.4621791542750628 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.4621791542750628 6.75
		-6.75 -9.4621791542750628 1.2545506625737113e-015
		-1.7247555922535185e-015 -9.4621791542750628 -6.75
		6.75 -9.4621791542750628 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.4621791542750628 6.75
		-1.7247555922535185e-015 -14.193268731412594 -6.75
		6.75 -14.193268731412594 -1.3776821480501744e-016
		9.1290500549637277e-016 -14.193268731412594 6.75
		-6.75 -14.193268731412594 1.4382416156470679e-015
		-1.7247555922535185e-015 -14.193268731412594 -6.75
		6.75 -14.193268731412594 -1.3776821480501744e-016
		9.1290500549637277e-016 -14.193268731412594 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" -2.3854160110976364e-015 -1.5902773407317584e-015 
		3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" -7.0221606307541151e-015 -14.19326873141258 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -7.0221606307541151e-015 -14.19326873141258 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.0221606307541151e-015 -14.19326873141258 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".rst" -type "double3" 3.2969360574952589e-010 -5.5952064166942144 -5.0890958114280238e-011 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.297235656022905e-010 -5.5952064166941868 
		-5.0889179975996288e-011 ;
	setAttr ".tg[0].tor" -type "double3" 0.27735168638102059 -4.4105336436788427 -45.354348425022735 ;
	setAttr ".tg[1].tot" -type "double3" 8.9431370465380517 2.2050275201484149 -0.42619401267789092 ;
	setAttr ".tg[1].tor" -type "double3" 174.6076593183453 -5.1552927911185202 -24.263794248420027 ;
	setAttr ".tg[2].tot" -type "double3" 8.8814904675418962 20.677057243788941 -1.9084062214394129 ;
	setAttr ".tg[2].tor" -type "double3" 0.39714254323698567 -5.4982437446117682 25.299352498868807 ;
	setAttr ".tg[3].tot" -type "double3" 8.8814904675418962 68.322564145478495 -3.6605367599942711 ;
	setAttr ".tg[3].tor" -type "double3" 0.39714254323698567 -5.4982437446117682 25.299352498868807 ;
	setAttr ".lr" -type "double3" 0.27735168638102087 -4.4105336436788427 -45.354348425022735 ;
	setAttr ".rst" -type "double3" 2.4695523404005826e-014 1.5987211554602254e-014 -1.9428902930940239e-016 ;
	setAttr ".rsrr" -type "double3" 0.27735168638101998 -4.41053364367884 -45.354348425022735 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -166.95452539521233 -4.0569792061482648 -70.189819592389171 ;
	setAttr ".rp" -type "double3" -3.761823978033056 70.119872639088243 -4.6697920727000701 ;
	setAttr ".sp" -type "double3" -3.761823978033056 70.119872639088243 -4.6697920727000701 ;
createNode transform -n "rShoulderControl" -p "rShoulderControlZeroGroup";
	addAttr -ci true -sn "rFKshoulderControl" -ln "rFKshoulderControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
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
		-1.7247555922535185e-015 1.8650694237451018 -6.75
		6.75 1.8650694237451013 -5.0515012095173062e-016
		9.1290500549637277e-016 1.8650694237451011 6.75
		-6.75 1.8650694237451013 1.0708597095003547e-015
		-1.7247555922535185e-015 1.8650694237451018 -6.75
		6.75 1.8650694237451013 -5.0515012095173062e-016
		9.1290500549637277e-016 1.8650694237451011 6.75
		-1.7247555922535185e-015 3.7301388474902026 -6.75
		6.75 3.7301388474902026 -3.2145916787837403e-016
		9.1290500549637277e-016 3.7301388474902026 6.75
		-6.75 3.7301388474902026 1.2545506625737113e-015
		-1.7247555922535185e-015 3.7301388474902026 -6.75
		6.75 3.7301388474902026 -3.2145916787837403e-016
		9.1290500549637277e-016 3.7301388474902026 6.75
		-1.7247555922535185e-015 5.595208271235304 -6.75
		6.75 5.595208271235304 -1.3776821480501744e-016
		9.1290500549637277e-016 5.595208271235304 6.75
		-6.75 5.595208271235304 1.4382416156470679e-015
		-1.7247555922535185e-015 5.595208271235304 -6.75
		6.75 5.595208271235304 -1.3776821480501744e-016
		9.1290500549637277e-016 5.595208271235304 6.75
		
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
	setAttr ".rst" -type "double3" -3.7618239780330471 70.119872639088243 -4.6697920727000719 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".rp" -type "double3" 4.9891353448572318e-007 5.5952082712352365 5.7872920988799592e-007 ;
	setAttr ".sp" -type "double3" 4.9891353448572318e-007 5.5952082712352365 5.7872920988799592e-007 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "right clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999911 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to right clavicle^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
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
		-1.7247555922535185e-015 4.0405969706041667 -6.75
		6.75 4.0405969706041667 -5.0515012095173062e-016
		9.1290500549637277e-016 4.0405969706041658 6.75
		-6.75 4.0405969706041667 1.0708597095003547e-015
		-1.7247555922535185e-015 4.0405969706041667 -6.75
		6.75 4.0405969706041667 -5.0515012095173062e-016
		9.1290500549637277e-016 4.0405969706041658 6.75
		-1.7247555922535185e-015 8.0811939412083333 -6.75
		6.75 8.0811939412083333 -3.2145916787837403e-016
		9.1290500549637277e-016 8.0811939412083333 6.75
		-6.75 8.0811939412083333 1.2545506625737113e-015
		-1.7247555922535185e-015 8.0811939412083333 -6.75
		6.75 8.0811939412083333 -3.2145916787837403e-016
		9.1290500549637277e-016 8.0811939412083333 6.75
		-1.7247555922535185e-015 12.1217909118125 -6.75
		6.75 12.1217909118125 -1.3776821480501744e-016
		9.1290500549637277e-016 12.1217909118125 6.75
		-6.75 12.1217909118125 1.4382416156470679e-015
		-1.7247555922535185e-015 12.1217909118125 -6.75
		6.75 12.1217909118125 -1.3776821480501744e-016
		9.1290500549637277e-016 12.1217909118125 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -22.816889009529746 0 0 ;
	setAttr ".rp" -type "double3" 2.256307556081083e-005 12.121790911788995 7.8092565387599677e-006 ;
	setAttr ".sp" -type "double3" 2.256307556081083e-005 12.121790911788995 7.8092565387599677e-006 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.256307556081083e-005 12.121790911788995 7.8092565387599677e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
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
		-1.7247555922535185e-015 4.7311057385518493 -6.75
		6.75 4.7311057385518485 -5.0515012095173062e-016
		9.1290500549637277e-016 4.7311057385518485 6.75
		-6.75 4.7311057385518485 1.0708597095003547e-015
		-1.7247555922535185e-015 4.7311057385518493 -6.75
		6.75 4.7311057385518485 -5.0515012095173062e-016
		9.1290500549637277e-016 4.7311057385518485 6.75
		-1.7247555922535185e-015 9.4622114771036969 -6.75
		6.75 9.4622114771036969 -3.2145916787837403e-016
		9.1290500549637277e-016 9.4622114771036969 6.75
		-6.75 9.4622114771036969 1.2545506625737113e-015
		-1.7247555922535185e-015 9.4622114771036969 -6.75
		6.75 9.4622114771036969 -3.2145916787837403e-016
		9.1290500549637277e-016 9.4622114771036969 6.75
		-1.7247555922535185e-015 14.193317215655547 -6.75
		6.75 14.193317215655547 -1.3776821480501744e-016
		9.1290500549637277e-016 14.193317215655547 6.75
		-6.75 14.193317215655547 1.4382416156470679e-015
		-1.7247555922535185e-015 14.193317215655547 -6.75
		6.75 14.193317215655547 -1.3776821480501744e-016
		9.1290500549637277e-016 14.193317215655547 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 1.7486838727187112e-015 -1.4225527774514564e-015 0 ;
	setAttr ".rp" -type "double3" 2.5042564156696479e-005 14.193317215627419 1.307523542581554e-005 ;
	setAttr ".sp" -type "double3" 2.5042564156696479e-005 14.193317215627419 1.307523542581554e-005 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.5042564156696479e-005 14.193317215627419 1.307523542581554e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999967 ;
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
	setAttr ".rst" -type "double3" 4.9891351228126268e-007 5.5952082712352382 5.7872921099821895e-007 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.9891350515967044e-007 5.5952082712352471 
		5.7872920649798372e-007 ;
	setAttr ".tg[0].tor" -type "double3" 0.27735168638112567 -4.4105336436789031 -45.3543484250227 ;
	setAttr ".tg[1].tot" -type "double3" -8.9431399999999943 2.205011459010386 -0.42619371523623661 ;
	setAttr ".tg[1].tor" -type "double3" -5.3923406816545532 5.1552927911185087 24.263794248420012 ;
	setAttr ".tg[2].tot" -type "double3" -8.859768644571929 20.542994808199531 -4.1774718806863973 ;
	setAttr ".tg[2].tor" -type "double3" -173.4719752470655 -7.7330484731412801 -24.553826745412913 ;
	setAttr ".tg[3].tot" -type "double3" -8.859768644571929 68.188501709889096 -5.929602419241256 ;
	setAttr ".tg[3].tor" -type "double3" -173.4719752470655 -7.7330484731412801 -24.553826745412913 ;
	setAttr ".lr" -type "double3" 0.27735168638112578 -4.4105336436789031 -45.3543484250227 ;
	setAttr ".rst" -type "double3" -1.4654943925052066e-014 -1.7763568394002505e-015 
		-8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 0.27735168638113039 -4.4105336436789049 -45.3543484250227 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" -1.7034164583982998 146.10726603758692 4.6484925177945051 ;
	setAttr ".sp" -type "double3" -1.7034164583982998 146.10726603758692 4.6484925177945051 ;
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
	setAttr ".lr" -type "double3" -169.47773232379305 -7.2882294261019203 0.43300057803259057 ;
	setAttr ".rsrr" -type "double3" -169.47773232379305 -7.2882294261019185 0.43300057803259046 ;
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
	setAttr ".o" -type "double3" -1.7034164583982998 75.60643696595676 9.4913054387070535 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.1430118386509515e-015 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other ) #;";
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
	setAttr ".rst" -type "double3" -0.08122705085946888 73.275650900229365 -4.3716826317779391 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0.16609359629015513 -78.431264670985001 8.2000118074220403 ;
	setAttr ".r" -type "double3" -3.2713685029636208 7.9513867036587919e-016 -1.987846675914698e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -0.16609359629015591 76.002178302149886 -3.8692423738682797 ;
	setAttr ".rpt" -type "double3" 0 -0.34464761565668606 -4.3307694335537557 ;
	setAttr ".sp" -type "double3" -0.16609359629015591 76.002178302149872 -3.8692423738682806 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 8.8817841970012513e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0.16609359629015513 -78.431264670985001 8.2000118074220403 ;
	setAttr ".sp" -type "double3" 0.16609359629015513 -78.431264670985001 8.2000118074220403 ;
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
	setAttr ".lr" -type "double3" -172.74910082675666 -7.2882294261019167 0.43300057803259073 ;
	setAttr ".rsrr" -type "double3" -172.74910082675666 -7.2882294261019158 0.43300057803259073 ;
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
	setAttr ".o" -type "double3" 0.24732064714962382 -151.70691557121438 12.571694439199984 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.733289179382711e-016 1.5902773407317584e-015 3.975693351829396e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999933 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other ) #;";
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
	setAttr ".rst" -type "double3" -0.16609359629015508 76.002178302149829 -3.8692423738682789 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_hatControlGroup" -p "headControl";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Ref:prp_hatControl" -p "Ref:prp_hatControlGroup";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 4 -en "head:root:left hand:right hand:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooCmd4" -ln "zooCmd4" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to head^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
	setAttr ".zooCmd1" -type "string" "parent to root^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 1\" #;";
	setAttr ".zooCmd2" -type "string" "parent to left hand^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 2\" #;";
	setAttr ".zooCmd3" -type "string" "parent to right hand^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 3\" #;";
	setAttr ".zooCmd4" -type "string" "parent to world^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 4\" #;";
createNode nurbsSurface -n "Ref:prp_hatControlShape" -p "Ref:prp_hatControl";
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
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769207 -1.0749292546260911 -0.72568138668350135
		-0.091037963476769304 -1.0749292546260909 -1.5598608884347889
		0.66905180176510592 -1.0749292546260909 -0.72568138668350091
		-0.091037963476768999 -1.0749292546260909 0.1084981150677857
		-0.85112772871864451 -1.0749292546260909 -0.72568138668350091
		-0.091037963476769304 -1.0749292546260909 -1.5598608884347889
		0.66905180176510592 -1.0749292546260909 -0.72568138668350091
		-0.091037963476768999 -1.0749292546260909 0.1084981150677857
		-0.091037963476770789 -1.00724421209316e-013 -12.905641883975475
		11.007128912604321 -1.0140396549292749e-013 -0.72568138668350179
		-0.091037963476769179 -1.0208350977653905e-013 11.454279110608459
		-11.189204839557858 -1.0140396549292749e-013 -0.72568138668350179
		-0.091037963476770789 -1.00724421209316e-013 -12.905641883975475
		11.007128912604321 -1.0140396549292749e-013 -0.72568138668350179
		-0.091037963476769179 -1.0208350977653905e-013 11.454279110608459
		-0.09103796347676911 1.0749292546259921 -1.5598608884347884
		0.6690518017651057 1.0749292546259921 -0.72568138668350068
		-0.091037963476769193 1.0749292546259921 0.1084981150677857
		-0.85112772871864428 1.0749292546259921 -0.72568138668350091
		-0.09103796347676911 1.0749292546259921 -1.5598608884347884
		0.6690518017651057 1.0749292546259921 -0.72568138668350068
		-0.091037963476769193 1.0749292546259921 0.1084981150677857
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		-0.091037963476769013 1.0749292546259921 -0.72568138668350068
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_hatControlGroup_parentConstraint1" -p "Ref:prp_hatControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "headControlW0" -bt "W000" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "UpperbodyControlW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w2" -ln "lHandControlW2" -bt "W002" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w3" -ln "rHandControlW3" -bt "W003" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w4" -ln "mainW4" -bt "W004" -dv 1 -min 0 -at "double";
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
	setAttr -s 5 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.3306690738754696e-016 -7.7323005724970173 
		4.4339532045967189e-015 ;
	setAttr ".tg[0].tor" -type "double3" 172.72152388534658 -7.9513867036587919e-016 
		0 ;
	setAttr ".tg[1].tot" -type "double3" -0.34786454125904104 36.025981850030988 -1.1490680888285894 ;
	setAttr ".tg[1].tor" -type "double3" -0.027576941410072997 -7.2882294261019158 0.43300057803259107 ;
	setAttr ".tg[2].tot" -type "double3" -2.094437971097999 41.516938988978936 12.192306337695136 ;
	setAttr ".tg[2].tor" -type "double3" 20.1049491974467 2.5585312167587682 -24.557926959095791 ;
	setAttr ".tg[3].tot" -type "double3" 1.1419146545171481 -41.455796463210227 -12.522401785425696 ;
	setAttr ".tg[3].tor" -type "double3" -164.63271843599827 13.219120788867006 -23.045858667376208 ;
	setAttr ".tg[4].tot" -type "double3" -0.34786454125904104 83.671488751720545 -2.9011986273834478 ;
	setAttr ".tg[4].tor" -type "double3" -0.027576941410072997 -7.2882294261019158 0.43300057803259107 ;
	setAttr ".lr" -type "double3" 172.72152388534658 0 0 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-016 -7.7323005724970173 8.7430063189231078e-016 ;
	setAttr ".rsrr" -type "double3" 172.72152388534658 -5.2712810963049626e-016 -4.3954100026589632e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
	setAttr -k on ".w4";
createNode transform -n "Ref:prp_sunglassesControlGroup" -p "headControl";
	setAttr ".t" -type "double3" -1.0269562977782698e-015 -4.5124754510240432 -4.8354632444408621 ;
	setAttr ".r" -type "double3" 172.72152388534658 7.9513867036587919e-015 -1.987846675914698e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "Ref:prp_sunglassesControl" -p "Ref:prp_sunglassesControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_sunglassesControlShape" -p "Ref:prp_sunglassesControl";
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
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.04494700778745063 4.8490818739628994 -1.061505289595255 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.39714254323698789 -5.49824374461177 25.299352498868814 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -12.121798626649429 0 ;
	setAttr ".r" -type "double3" -5.3800894921746999e-011 -1.9083942909385895e-041 -6.0993044676609409e-026 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -22.816889009529568 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 0 -14.193268731412619 6.2172489379008766e-015 ;
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
	setAttr ".rst" -type "double3" 8.8814904675419051 68.322564145478481 -3.6605367599942711 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 13.712928362373065 3.0195940718841214 3.9084599746054045 ;
	setAttr ".sp" -type "double3" 13.71292836237305 3.0195940718841356 3.9084599746054045 ;
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
	setAttr ".rst" -type "double3" 5.4940215922236302 42.263811915708189 -2.2643798439050946 ;
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
	setAttr ".rst" -type "double3" 5.1873760113385678 -10.955461531100759 -0.083634338645147466 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 19.206949954596695 45.28340598759231 1.6440801307003117 ;
	setAttr ".sp" -type "double3" 19.206949954596695 45.28340598759231 1.6440801307003117 ;
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
	setAttr ".tg[0].tot" -type "double3" 19.206949954596695 -2.3621009140972538 3.3962106692551708 ;
	setAttr ".rst" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".t" -type "double3" -14.148786347152814 39.700638401274162 -14.674723872764533 ;
	setAttr ".rp" -type "double3" 33.355736301749509 5.5827675863181518 16.318804003464844 ;
	setAttr ".sp" -type "double3" 33.355736301749509 5.5827675863181518 16.318804003464844 ;
createNode transform -n "likHandControl" -p "likHandControlWeaponGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -4.4461147449521974 -21.635342540092175 0.43197541934422645 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 36.705118232934431 30.975620876014133 10.744393455351371 ;
	setAttr ".rpt" -type "double3" 1.0967328137672774 -3.7575107496038012 5.1424351287692476 ;
	setAttr ".sp" -type "double3" 36.705118232934439 30.97562087601414 10.744393455351373 ;
	setAttr ".spt" -type "double3" -7.1054273576010011e-015 -7.1054273576010011e-015 
		-1.7763568394002503e-015 ;
	setAttr ".hdl" -type "double3" 36.705118232934439 30.97562087601414 10.744393455351373 ;
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\"-objs %1\" ) #;";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\"-objs %1\" ) #;";
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
		32.705118232934431 30.975620876014137 10.744393455351375
		32.705118232934431 30.975620876014137 10.744393455351375
		32.705118232934431 30.975620876014137 10.744393455351375
		32.705118232934431 30.975620876014137 10.744393455351375
		32.705118232934431 30.975620876014137 10.744393455351375
		34.705118232934431 28.526131133230958 8.2949037125681979
		34.705118232934431 28.526131133230958 13.193883198134554
		34.705118232934431 33.425110618797312 13.193883198134554
		34.705118232934431 33.425110618797312 8.2949037125681979
		34.705118232934431 28.526131133230958 8.2949037125681961
		38.705118232934431 28.526131133230958 8.2949037125681979
		38.705118232934431 28.526131133230958 13.193883198134554
		38.705118232934431 33.425110618797319 13.193883198134554
		38.705118232934431 33.425110618797319 8.2949037125681961
		38.705118232934431 28.526131133230958 8.2949037125681961
		40.705118232934431 30.975620876014137 10.744393455351375
		40.705118232934431 30.975620876014137 10.744393455351375
		40.705118232934431 30.975620876014137 10.744393455351375
		40.705118232934431 30.975620876014137 10.744393455351375
		40.705118232934431 30.975620876014137 10.744393455351375
		
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
	setAttr ".lr" -type "double3" -22.364851776222118 -0.6410411796788843 24.275184579462845 ;
	setAttr ".rsrr" -type "double3" -22.41974646629258 -5.4982437446117682 25.299352498868789 ;
	setAttr -k on ".w0";
createNode transform -n "lElbowControl" -p "main";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 14.068866478880473 57.367102614377721 -3.7441710986394185 ;
	setAttr ".sp" -type "double3" 14.068866478880473 57.367102614377721 -3.7441710986394185 ;
	setAttr ".hdl" -type "double3" 14.068866478880473 57.367102614377721 -3.7441710986394185 ;
	setAttr ".dh" yes;
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
		13.068866478880473 57.367102614377721 -3.744171098639419
		13.068866478880473 57.367102614377721 -3.744171098639419
		13.068866478880473 57.367102614377721 -3.744171098639419
		13.068866478880473 57.367102614377721 -3.744171098639419
		13.068866478880473 57.367102614377721 -3.744171098639419
		14.068866478880473 57.367102614377721 -4.7441710986394181
		14.068866478880473 56.367102614377721 -3.7441710986394185
		14.068866478880473 57.367102614377721 -2.7441710986394185
		14.068866478880473 58.367102614377721 -3.7441710986394185
		14.068866478880473 57.367102614377721 -4.7441710986394181
		15.068866478880473 57.367102614377721 -3.7441710986394185
		15.068866478880473 57.367102614377721 -3.7441710986394185
		15.068866478880473 57.367102614377721 -3.7441710986394185
		15.068866478880473 57.367102614377721 -3.7441710986394185
		15.068866478880473 57.367102614377721 -3.7441710986394185
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" -22.41974646629258 -5.4982437446117682 25.299352498868792 ;
	setAttr ".rp" -type "double3" 19.206949954596695 45.283405987592303 1.6440801307003046 ;
	setAttr ".sp" -type "double3" 19.206949954596695 45.283405987592303 1.6440801307003046 ;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 19.206949954596684 42.41032353661717 1.6440801307003032 ;
	setAttr ".rpt" -type "double3" -17.674593840511204 2.3714177003624819 -14.391354546782772 ;
	setAttr ".sp" -type "double3" 19.206949954596688 42.410323536617177 1.6440801307003037 ;
	setAttr ".spt" -type "double3" -3.5527136788005005e-015 -7.1054273576010011e-015 
		-4.4408920985006257e-016 ;
createNode transform -n "lHandControl" -p "lHandControlGroup";
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
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587939e-016 3.1805546814635168e-015 -3.1805546814635168e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -0.98869870998178522 -3.6930071965993636 1.8396121076862049 ;
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
		-1.1498370615023457e-015 -4.2530163849587514e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.2530163849587514e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -4.2530163849587514e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.2530163849587514e-016 4.5
		-1.1498370615023457e-015 -1.9153883006500847 -4.5
		4.5 -1.9153883006500847 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.9153883006500845 4.5
		-4.5 -1.9153883006500847 7.1390647300023646e-016
		-1.1498370615023457e-015 -1.9153883006500847 -4.5
		4.5 -1.9153883006500847 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.9153883006500845 4.5
		-1.1498370615023457e-015 -3.8307766013001694 -4.5
		4.5 -3.8307766013001694 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.8307766013001694 4.5
		-4.5 -3.8307766013001694 8.3636710838247419e-016
		-1.1498370615023457e-015 -3.8307766013001694 -4.5
		4.5 -3.8307766013001694 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.8307766013001694 4.5
		-1.1498370615023457e-015 -5.7461649019502543 -4.5
		4.5 -5.7461649019502543 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.7461649019502543 4.5
		-4.5 -5.7461649019502543 9.5882774376471192e-016
		-1.1498370615023457e-015 -5.7461649019502543 -4.5
		4.5 -5.7461649019502543 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.7461649019502543 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -13.188589310154255 4.1494393139285153 -20.655288798880083 ;
	setAttr ".rp" -type "double3" -1.8598261096360913 -2.6483870293419924 2.2072421932056114 ;
	setAttr ".sp" -type "double3" -1.8598261096360913 -2.6483870293419924 2.2072421932056114 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.8598261096360931 -2.6483870293419964 2.207242193205607 ;
	setAttr ".sp" -type "double3" -1.8598261096360931 -2.6483870293419964 2.207242193205607 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.8598261096360931 -2.6483870293419964 2.207242193205607 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.0623909262615004e-015 1.5902773407317588e-015 -1.391492673140289e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.5173032572770995e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.5173032572770995e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.5173032572770995e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.5173032572770995e-016 2.25
		-5.7491853075117283e-016 -0.68333263840811853 -2.25
		2.25 -0.68333263840811853 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.68333263840811842 2.25
		-2.25 -0.68333263840811853 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.68333263840811853 -2.25
		2.25 -0.68333263840811853 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.68333263840811842 2.25
		-5.7491853075117283e-016 -1.3666652768162371 -2.25
		2.25 -1.3666652768162371 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3666652768162371 2.25
		-2.25 -1.3666652768162371 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3666652768162371 -2.25
		2.25 -1.3666652768162371 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3666652768162371 2.25
		-5.7491853075117283e-016 -2.0499979152243557 -2.25
		2.25 -2.0499979152243557 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0499979152243557 2.25
		-2.25 -2.0499979152243557 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.0499979152243557 -2.25
		2.25 -2.0499979152243557 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0499979152243557 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 6.3106687532497521 1.590277340731758e-015 5.963540027744092e-016 ;
	setAttr ".rp" -type "double3" 1.2212453270876722e-015 -2.0499979152243419 -3.9968028886505635e-015 ;
	setAttr ".sp" -type "double3" 1.2212453270876722e-015 -2.0499979152243419 -3.9968028886505635e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.7747582837255322e-015 -2.0499979152243433 4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" 3.7747582837255322e-015 -2.0499979152243433 4.4408920985006262e-016 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.7747582837255322e-015 -2.0499979152243433 4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1735661579935042e-015 3.1805546814635152e-015 4.0378135604517284e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
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
		-5.7491853075117283e-016 -9.5582970337043361e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.5582970337043361e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -9.5582970337043361e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.5582970337043361e-017 2.25
		-5.7491853075117283e-016 -0.43046742959287365 -2.25
		2.25 -0.43046742959287365 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.4304674295928736 2.25
		-2.25 -0.43046742959287365 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.43046742959287365 -2.25
		2.25 -0.43046742959287365 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.4304674295928736 2.25
		-5.7491853075117283e-016 -0.8609348591857473 -2.25
		2.25 -0.8609348591857473 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.8609348591857473 2.25
		-2.25 -0.8609348591857473 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.8609348591857473 -2.25
		2.25 -0.8609348591857473 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.8609348591857473 2.25
		-5.7491853075117283e-016 -1.291402288778621 -2.25
		2.25 -1.291402288778621 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.291402288778621 2.25
		-2.25 -1.291402288778621 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.291402288778621 -2.25
		2.25 -1.291402288778621 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.291402288778621 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -4.3432862014436733 1.5902773407317584e-015 -3.7893327259623928e-016 ;
	setAttr ".rp" -type "double3" 1.5543122344752192e-015 -1.291402288778623 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 1.5543122344752192e-015 -1.291402288778623 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 5.2180482157382357e-015 -1.2914022887786272 3.1086244689504383e-015 ;
	setAttr ".sp" -type "double3" 5.2180482157382357e-015 -1.2914022887786272 3.1086244689504383e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.2180482157382357e-015 -1.2914022887786272 3.1086244689504383e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -2.2363275104040355e-016 0 3.975693351829396e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.0100910974596116e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0100910974596116e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0100910974596116e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0100910974596116e-016 2.25
		-5.7491853075117283e-016 -0.45490458901293623 -2.25
		2.25 -0.45490458901293623 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45490458901293618 2.25
		-2.25 -0.45490458901293623 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.45490458901293623 -2.25
		2.25 -0.45490458901293623 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45490458901293618 2.25
		-5.7491853075117283e-016 -0.90980917802587247 -2.25
		2.25 -0.90980917802587247 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.90980917802587247 2.25
		-2.25 -0.90980917802587247 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.90980917802587247 -2.25
		2.25 -0.90980917802587247 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.90980917802587247 2.25
		-5.7491853075117283e-016 -1.3647137670388088 -2.25
		2.25 -1.3647137670388088 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3647137670388088 2.25
		-2.25 -1.3647137670388088 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3647137670388088 -2.25
		2.25 -1.3647137670388088 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3647137670388088 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 68.419080652840108 85.664217446763487 47.273414519607087 ;
	setAttr ".rp" -type "double3" 0.23758305569734955 -5.3616372155311165 1.5056047439304141 ;
	setAttr ".sp" -type "double3" 0.23758305569734955 -5.3616372155311165 1.5056047439304141 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.23758305569734794 -5.3616372155311103 1.5056047439304159 ;
	setAttr ".sp" -type "double3" 0.23758305569734794 -5.3616372155311103 1.5056047439304159 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.2375830556973475 -9.0000940540471923 0.37627870949906628 ;
	setAttr ".sp" -type "double3" 0.2375830556973475 -9.0000940540471923 0.37627870949906628 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.23758305569734617 -5.3616372155311032 1.5056047439304194 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587959e-016 0 -1.1927080055488192e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
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
		-5.7491853075117283e-016 -2.0645355919328057e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0645355919328057e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0645355919328057e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0645355919328057e-016 2.25
		-5.7491853075117283e-016 -0.92978417225217103 -2.25
		2.25 -0.92978417225217103 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.92978417225217092 2.25
		-2.25 -0.92978417225217103 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.92978417225217103 -2.25
		2.25 -0.92978417225217103 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.92978417225217092 2.25
		-5.7491853075117283e-016 -1.8595683445043421 -2.25
		2.25 -1.8595683445043421 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8595683445043421 2.25
		-2.25 -1.8595683445043421 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8595683445043421 -2.25
		2.25 -1.8595683445043421 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8595683445043421 2.25
		-5.7491853075117283e-016 -2.7893525167565132 -2.25
		2.25 -2.7893525167565132 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7893525167565132 2.25
		-2.25 -2.7893525167565132 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7893525167565132 -2.25
		2.25 -2.7893525167565132 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7893525167565132 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 40.26011732502478 0 9.9392333795734899e-017 ;
	setAttr ".rp" -type "double3" 0 -2.7893525167565043 0 ;
	setAttr ".sp" -type "double3" 0 -2.7893525167565043 0 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -2.789352516756507 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -2.789352516756507 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.789352516756507 -7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635168e-015 1.5902773407317584e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-5.7491853075117283e-016 -1.3357515481945383e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3357515481945383e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3357515481945383e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3357515481945383e-016 2.25
		-5.7491853075117283e-016 -0.60156901747084857 -2.25
		2.25 -0.60156901747084857 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60156901747084845 2.25
		-2.25 -0.60156901747084857 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.60156901747084857 -2.25
		2.25 -0.60156901747084857 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60156901747084845 2.25
		-5.7491853075117283e-016 -1.2031380349416971 -2.25
		2.25 -1.2031380349416971 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2031380349416971 2.25
		-2.25 -1.2031380349416971 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2031380349416971 -2.25
		2.25 -1.2031380349416971 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2031380349416971 2.25
		-5.7491853075117283e-016 -1.8047070524125457 -2.25
		2.25 -1.8047070524125457 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8047070524125457 2.25
		-2.25 -1.8047070524125457 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8047070524125457 -2.25
		2.25 -1.8047070524125457 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8047070524125457 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" 10.686288132589224 1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" 0 -1.8047070524125424 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 0 -1.8047070524125424 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -1.8047070524125477 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -1.8047070524125477 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -1.8047070524125477 -1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -1.5902773407317588e-015 -1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
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
		-5.7491853075117283e-016 -1.3205164919575056e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3205164919575056e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3205164919575056e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3205164919575056e-016 2.25
		-5.7491853075117283e-016 -0.59470775811164167 -2.25
		2.25 -0.59470775811164167 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59470775811164156 2.25
		-2.25 -0.59470775811164167 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.59470775811164167 -2.25
		2.25 -0.59470775811164167 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59470775811164156 2.25
		-5.7491853075117283e-016 -1.1894155162232833 -2.25
		2.25 -1.1894155162232833 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1894155162232833 2.25
		-2.25 -1.1894155162232833 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1894155162232833 -2.25
		2.25 -1.1894155162232833 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1894155162232833 2.25
		-5.7491853075117283e-016 -1.7841232743349251 -2.25
		2.25 -1.7841232743349251 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7841232743349251 2.25
		-2.25 -1.7841232743349251 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7841232743349251 -2.25
		2.25 -1.7841232743349251 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7841232743349251 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 145.76917746376816 76.379855051880597 123.30244086070864 ;
	setAttr ".rp" -type "double3" 0.17925003102962439 -5.7394825998835852 -0.21123444892927967 ;
	setAttr ".sp" -type "double3" 0.17925003102962439 -5.7394825998835852 -0.21123444892927967 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.17925003102962567 -5.7394825998835968 -0.21123444892928234 ;
	setAttr ".sp" -type "double3" 0.17925003102962567 -5.7394825998835968 -0.21123444892928234 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.17925003102963033 -9.9269001255394524 -1.6642474634443718 ;
	setAttr ".sp" -type "double3" 0.17925003102963033 -9.9269001255394524 -1.6642474634443718 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.17925003102962833 -5.739482599883611 -0.21123444892928589 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -9.9392333795734899e-017 3.9756933518293915e-016 1.0063473796818149e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000011 1 1.0000000000000009 ;
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
		-5.7491853075117283e-016 -2.0800318262264447e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0800318262264447e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0800318262264447e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0800318262264447e-016 2.25
		-5.7491853075117283e-016 -0.93676305575121888 -2.25
		2.25 -0.93676305575121888 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.93676305575121877 2.25
		-2.25 -0.93676305575121888 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.93676305575121888 -2.25
		2.25 -0.93676305575121888 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.93676305575121877 2.25
		-5.7491853075117283e-016 -1.8735261115024378 -2.25
		2.25 -1.8735261115024378 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8735261115024378 2.25
		-2.25 -1.8735261115024378 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8735261115024378 -2.25
		2.25 -1.8735261115024378 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8735261115024378 2.25
		-5.7491853075117283e-016 -2.8102891672536567 -2.25
		2.25 -2.8102891672536567 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.8102891672536567 2.25
		-2.25 -2.8102891672536567 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.8102891672536567 -2.25
		2.25 -2.8102891672536567 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.8102891672536567 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 32.543818762132503 3.9756933518293969e-016 1.0125594005440495e-015 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -2.8102891672536652 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -2.8102891672536652 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -2.8102891672536625 0 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -2.8102891672536625 0 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -2.8102891672536625 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635168e-015 0 3.9756933518293969e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
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
		-5.7491853075117283e-016 -1.8506054084548228e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.8506054084548228e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.8506054084548228e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.8506054084548228e-016 2.25
		-5.7491853075117283e-016 -0.83343858279269645 -2.25
		2.25 -0.83343858279269645 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.83343858279269634 2.25
		-2.25 -0.83343858279269645 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.83343858279269645 -2.25
		2.25 -0.83343858279269645 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.83343858279269634 2.25
		-5.7491853075117283e-016 -1.6668771655853929 -2.25
		2.25 -1.6668771655853929 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6668771655853929 2.25
		-2.25 -1.6668771655853929 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.6668771655853929 -2.25
		2.25 -1.6668771655853929 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6668771655853929 2.25
		-5.7491853075117283e-016 -2.5003157483780893 -2.25
		2.25 -2.5003157483780893 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.5003157483780893 2.25
		-2.25 -2.5003157483780893 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.5003157483780893 -2.25
		2.25 -2.5003157483780893 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.5003157483780893 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 21.736725451536042 -3.9756933518293969e-016 -1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-015 -2.500315748378096 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-015 -2.500315748378096 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 6.2172489379008766e-015 -2.5003157483781067 0 ;
	setAttr ".sp" -type "double3" 6.2172489379008766e-015 -2.5003157483781067 0 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.2172489379008766e-015 -2.5003157483781067 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.9878466759146985e-016 -3.9756933518293969e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.4594483547212298e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4594483547212298e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4594483547212298e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4594483547212298e-016 2.25
		-5.7491853075117283e-016 -0.65727710664890138 -2.25
		2.25 -0.65727710664890138 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.65727710664890127 2.25
		-2.25 -0.65727710664890138 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.65727710664890138 -2.25
		2.25 -0.65727710664890138 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.65727710664890127 2.25
		-5.7491853075117283e-016 -1.3145542132978028 -2.25
		2.25 -1.3145542132978028 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3145542132978028 2.25
		-2.25 -1.3145542132978028 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3145542132978028 -2.25
		2.25 -1.3145542132978028 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3145542132978028 2.25
		-5.7491853075117283e-016 -1.9718313199467041 -2.25
		2.25 -1.9718313199467041 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9718313199467041 2.25
		-2.25 -1.9718313199467041 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.9718313199467041 -2.25
		2.25 -1.9718313199467041 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9718313199467041 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 153.53655490967171 75.231037847131063 130.66084227884903 ;
	setAttr ".rp" -type "double3" -0.3944172994845237 -5.3524067323208291 -1.8964145827076684 ;
	setAttr ".sp" -type "double3" -0.3944172994845237 -5.3524067323208291 -1.8964145827076684 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.39441729948452431 -5.3524067323208335 -1.8964145827076671 ;
	setAttr ".sp" -type "double3" -0.39441729948452431 -5.3524067323208335 -1.8964145827076671 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.39441729948452575 -9.0990188795100515 -3.2312794718379676 ;
	setAttr ".sp" -type "double3" -0.39441729948452575 -9.0990188795100515 -3.2312794718379676 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.39441729948452608 -5.3524067323208335 -1.8964145827076635 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -9.9392333795734899e-017 5.553934902140577e-016 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.7595355326608704e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7595355326608704e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7595355326608704e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7595355326608704e-016 2.25
		-5.7491853075117283e-016 -0.79242435692366431 -2.25
		2.25 -0.79242435692366431 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.7924243569236642 2.25
		-2.25 -0.79242435692366431 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.79242435692366431 -2.25
		2.25 -0.79242435692366431 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.7924243569236642 2.25
		-5.7491853075117283e-016 -1.5848487138473286 -2.25
		2.25 -1.5848487138473286 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5848487138473286 2.25
		-2.25 -1.5848487138473286 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5848487138473286 -2.25
		2.25 -1.5848487138473286 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5848487138473286 2.25
		-5.7491853075117283e-016 -2.3772730707709928 -2.25
		2.25 -2.3772730707709928 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3772730707709928 2.25
		-2.25 -2.3772730707709928 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3772730707709928 -2.25
		2.25 -2.3772730707709928 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3772730707709928 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 34.597447667306234 -9.9392333795734899e-017 5.5519936456211292e-016 ;
	setAttr ".rp" -type "double3" 0 -2.3772730707709853 0 ;
	setAttr ".sp" -type "double3" 0 -2.3772730707709853 0 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -2.3772730707709808 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -2.3772730707709808 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -2.3772730707709808 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 9.9392333795734899e-017 -1.4908850069360234e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.6031500353354357e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6031500353354357e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6031500353354357e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6031500353354357e-016 2.25
		-5.7491853075117283e-016 -0.72199459017556655 -2.25
		2.25 -0.72199459017556655 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.72199459017556644 2.25
		-2.25 -0.72199459017556655 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.72199459017556655 -2.25
		2.25 -0.72199459017556655 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.72199459017556644 2.25
		-5.7491853075117283e-016 -1.4439891803511331 -2.25
		2.25 -1.4439891803511331 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4439891803511331 2.25
		-2.25 -1.4439891803511331 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4439891803511331 -2.25
		2.25 -1.4439891803511331 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4439891803511331 2.25
		-5.7491853075117283e-016 -2.1659837705266995 -2.25
		2.25 -2.1659837705266995 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1659837705266995 2.25
		-2.25 -2.1659837705266995 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.1659837705266995 -2.25
		2.25 -2.1659837705266995 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1659837705266995 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 24.9787199650726 -9.9392333795734879e-016 3.975693351829395e-016 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-016 -2.1659837705266956 7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-016 -2.1659837705266956 7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.1659837705267009 7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.1659837705267009 7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.1659837705267009 7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 -1.689669674527493e-015 -9.9392333795734879e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
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
		-5.7491853075117283e-016 -1.2630468134321316e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2630468134321316e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2630468134321316e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2630468134321316e-016 2.25
		-5.7491853075117283e-016 -0.56882571583244401 -2.25
		2.25 -0.56882571583244401 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.5688257158324439 2.25
		-2.25 -0.56882571583244401 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.56882571583244401 -2.25
		2.25 -0.56882571583244401 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.5688257158324439 2.25
		-5.7491853075117283e-016 -1.137651431664888 -2.25
		2.25 -1.137651431664888 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.137651431664888 2.25
		-2.25 -1.137651431664888 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.137651431664888 -2.25
		2.25 -1.137651431664888 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.137651431664888 2.25
		-5.7491853075117283e-016 -1.7064771474973321 -2.25
		2.25 -1.7064771474973321 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7064771474973321 2.25
		-2.25 -1.7064771474973321 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7064771474973321 -2.25
		2.25 -1.7064771474973321 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7064771474973321 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 131.97614941129842 71.565378549932547 104.54421824319783 ;
	setAttr ".rp" -type "double3" -0.22806874992986037 -4.5036248813108024 -3.2207629530830051 ;
	setAttr ".sp" -type "double3" -0.22806874992986037 -4.5036248813108024 -3.2207629530830051 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.22806874992986048 -4.5036248813108006 -3.2207629530830033 ;
	setAttr ".sp" -type "double3" -0.22806874992986048 -4.5036248813108006 -3.2207629530830033 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.22806874992986037 -7.9426443836820777 -4.2365029594101493 ;
	setAttr ".sp" -type "double3" -0.22806874992986037 -7.9426443836820777 -4.2365029594101493 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.22806874992986104 -4.5036248813107935 -3.2207629530830033 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829395e-016 5.2180975242760815e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000004 ;
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
		-5.7491853075117283e-016 -1.7317907296313161e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7317907296313161e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7317907296313161e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7317907296313161e-016 2.25
		-5.7491853075117283e-016 -0.77992920846512748 -2.25
		2.25 -0.77992920846512748 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.77992920846512737 2.25
		-2.25 -0.77992920846512748 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.77992920846512748 -2.25
		2.25 -0.77992920846512748 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.77992920846512737 2.25
		-5.7491853075117283e-016 -1.559858416930255 -2.25
		2.25 -1.559858416930255 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.559858416930255 2.25
		-2.25 -1.559858416930255 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.559858416930255 -2.25
		2.25 -1.559858416930255 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.559858416930255 2.25
		-5.7491853075117283e-016 -2.3397876253953824 -2.25
		2.25 -2.3397876253953824 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3397876253953824 2.25
		-2.25 -2.3397876253953824 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3397876253953824 -2.25
		2.25 -2.3397876253953824 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3397876253953824 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 30.524438114765584 0 9.1937908761054794e-016 ;
	setAttr ".rp" -type "double3" 0 -2.3397876253953744 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 0 -2.3397876253953744 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.3306690738754696e-016 -2.3397876253953758 -1.4210854715202004e-014 ;
	setAttr ".sp" -type "double3" 3.3306690738754696e-016 -2.3397876253953758 -1.4210854715202004e-014 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.3306690738754696e-016 -2.3397876253953758 -1.4210854715202004e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -7.9513867036587919e-016 3.975693351829396e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
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
		-5.7491853075117283e-016 -1.2242320553750701e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2242320553750701e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2242320553750701e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2242320553750701e-016 2.25
		-5.7491853075117283e-016 -0.5513451028402182 -2.25
		2.25 -0.5513451028402182 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55134510284021809 2.25
		-2.25 -0.5513451028402182 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.5513451028402182 -2.25
		2.25 -0.5513451028402182 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55134510284021809 2.25
		-5.7491853075117283e-016 -1.1026902056804364 -2.25
		2.25 -1.1026902056804364 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1026902056804364 2.25
		-2.25 -1.1026902056804364 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1026902056804364 -2.25
		2.25 -1.1026902056804364 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1026902056804364 2.25
		-5.7491853075117283e-016 -1.6540353085206547 -2.25
		2.25 -1.6540353085206547 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6540353085206547 2.25
		-2.25 -1.6540353085206547 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6540353085206547 -2.25
		2.25 -1.6540353085206547 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6540353085206547 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 16.552765612357977 -7.9513867036587939e-016 3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" 7.7715611723760958e-016 -1.6540353085206476 0 ;
	setAttr ".sp" -type "double3" 7.7715611723760958e-016 -1.6540353085206476 0 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.3322676295501878e-015 -1.6540353085206565 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 1.3322676295501878e-015 -1.6540353085206565 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -1.6540353085206565 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 1.391492673140289e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.271482762510334e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.271482762510334e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.271482762510334e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.271482762510334e-016 2.25
		-5.7491853075117283e-016 -0.57262492954495492 -2.25
		2.25 -0.57262492954495492 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.57262492954495481 2.25
		-2.25 -0.57262492954495492 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.57262492954495492 -2.25
		2.25 -0.57262492954495492 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.57262492954495481 2.25
		-5.7491853075117283e-016 -1.1452498590899098 -2.25
		2.25 -1.1452498590899098 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1452498590899098 2.25
		-2.25 -1.1452498590899098 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1452498590899098 -2.25
		2.25 -1.1452498590899098 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1452498590899098 2.25
		-5.7491853075117283e-016 -1.7178747886348646 -2.25
		2.25 -1.7178747886348646 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7178747886348646 2.25
		-2.25 -1.7178747886348646 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7178747886348646 -2.25
		2.25 -1.7178747886348646 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7178747886348646 2.25
		
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
	setAttr ".rst" -type "double3" 19.206949954596688 45.283405987592296 1.6440801307003055 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.1974423109204508e-014 -2.8730824509751396 
		-1.4668615781433504e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1131941385122306e-014 2.2263882770244605e-014 
		-1.9083328088781091e-014 ;
	setAttr ".tg[1].tot" -type "double3" -1.4210854715202004e-014 -2.8730824509751534 
		-8.491624563457252e-015 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587919e-016 4.7708320221952736e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" -22.364851776222125 -0.64104117967888352 24.275184579462849 ;
	setAttr ".rst" -type "double3" 18.714674018310845 -1.9443860766000967 15.482075108861526 ;
	setAttr ".rsrr" -type "double3" -22.41974646629258 -5.4982437446117673 25.299352498868792 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lkneeControl" -p "main";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.9041487141075173 24.014066857740904 -1.4395967486975205 ;
	setAttr ".sp" -type "double3" 6.9041487141075173 24.014066857740904 -1.4395967486975205 ;
	setAttr ".hdl" -type "double3" 6.9041487141075173 24.014066857740904 -1.4395967486975205 ;
	setAttr ".dh" yes;
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
		5.9041487141075173 24.014066857740904 -1.4395967486975207
		5.9041487141075173 24.014066857740904 -1.4395967486975207
		5.9041487141075173 24.014066857740904 -1.4395967486975207
		5.9041487141075173 24.014066857740904 -1.4395967486975207
		5.9041487141075173 24.014066857740904 -1.4395967486975207
		6.9041487141075173 24.014066857740904 -2.4395967486975207
		6.9041487141075173 23.014066857740904 -1.4395967486975205
		6.9041487141075173 24.014066857740904 -0.43959674869752052
		6.9041487141075173 25.014066857740904 -1.4395967486975203
		6.9041487141075173 24.014066857740904 -2.4395967486975207
		7.9041487141075173 24.014066857740904 -1.4395967486975203
		7.9041487141075173 24.014066857740904 -1.4395967486975203
		7.9041487141075173 24.014066857740904 -1.4395967486975203
		7.9041487141075173 24.014066857740904 -1.4395967486975203
		7.9041487141075173 24.014066857740904 -1.4395967486975203
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "ankleLift" -ln "ankleLift" -min 0 -max 55 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "lFootControl" -ln "lFootControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 16.289133985840113 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 8.8536865513905276 5.9939167534093967 -2.9394909472982111 ;
	setAttr ".rpt" -type "double3" -1.1798824111524573 0 -2.3653278617457563 ;
	setAttr ".sp" -type "double3" 8.8536865513905276 5.9939167534093967 -2.9394909472982111 ;
	setAttr ".hdl" -type "double3" 8.8536865513905276 5.9939167534093967 -2.9394909472982111 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".ankleLift";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
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
		6.0137753604797997 5.9939167534093967 -2.9394909472982111
		6.0137753604797997 5.9939167534093967 -2.9394909472982111
		6.0137753604797997 5.9939167534093967 -2.9394909472982111
		6.0137753604797997 5.9939167534093967 -2.9394909472982111
		6.0137753604797997 5.9939167534093967 -2.9394909472982111
		7.4337309559351636 1.2020222276765322 -5.9963559137618567
		7.4337309559351645 1.2020222276765322 2.2138541772080966
		7.4337309559351636 10.785811279142262 2.2138541772080966
		7.4337309559351636 10.785811279142262 -5.9963559137618567
		7.4337309559351636 1.2020222276765331 -5.9963559137618576
		10.273642146845891 1.2020222276765322 -5.9963559137618567
		10.273642146845892 1.2020222276765322 2.2138541772080966
		10.273642146845891 10.785811279142262 2.2138541772080966
		10.273642146845891 10.785811279142262 -5.9963559137618576
		10.273642146845891 1.2020222276765322 -5.9963559137618576
		11.693597742301256 5.9939167534093967 -2.9394909472982111
		11.693597742301256 5.9939167534093967 -2.9394909472982111
		11.693597742301256 5.9939167534093967 -2.9394909472982111
		11.693597742301256 5.9939167534093967 -2.9394909472982111
		11.693597742301256 5.9939167534093967 -2.9394909472982111
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 7.6738041402380697 5.9939167534093896 -5.3048188090439714 ;
	setAttr ".sp" -type "double3" 7.6738041402380697 5.9939167534093896 -5.3048188090439714 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 7.6738041402380697 5.9939167534093896 -5.3048188090439714 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 51.738783294331292 -2.0387731742536963 1.960571187922254 ;
	setAttr ".rp" -type "double3" 0.52583551790474781 -9.0507645156967591 -0.60243759536830566 ;
	setAttr ".sp" -type "double3" 0.52583551790474781 -9.0507645156967591 -0.60243759536830566 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" 0.52583551790474781 -9.0507645156967591 -0.60243759536830566 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr ".rp" -type "double3" -2.5275419817066624 0.22446216007886427 -0.07242093820595219 ;
	setAttr ".sp" -type "double3" -2.5275419817066624 0.22446216007886427 -0.07242093820595219 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.5275419817066624 0.22446216007886427 -0.07242093820595219 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" 9.9392333795734924e-017 3.1805546814635168e-015 -3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" 5.660277397935908 -0.3930024931949529 0.25921247616275966 ;
	setAttr ".sp" -type "double3" 5.660277397935908 -0.3930024931949529 0.25921247616275966 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 5.660277397935908 -0.3930024931949529 0.25921247616275966 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" 0 -3.1805546814635168e-015 -7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -3.1327354162292469 0.16854033311609279 -9.5872450071788187 ;
	setAttr ".sp" -type "double3" -3.1327354162292469 0.16854033311609279 -9.5872450071788187 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -3.1327354162292469 0.16854033311609279 -9.5872450071788187 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" 1.987846675914698e-016 0 0 ;
	setAttr ".rp" -type "double3" 6.2172489379008766e-015 0.68598267023185044 15.757882323204507 ;
	setAttr ".sp" -type "double3" 6.2172489379008766e-015 0.68598267023185044 15.757882323204507 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 6.2172489379008766e-015 0.68598267023185044 15.757882323204507 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -89.319129970725967 -0.27763254337855681 -2.8145683571642008 ;
	setAttr ".rp" -type "double3" -0.48568296828506047 0.13933322553332755 -6.4025252075287931 ;
	setAttr ".sp" -type "double3" -0.48568296828506047 0.13933322553332755 -6.4025252075287931 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -0.48568296828506047 0.13933322553332755 -6.4025252075287931 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 37.55227831521993 -5.649800061504203e-030 0 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-015 6.7561893153675303 5.1940074281084776 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-015 6.7561893153675303 5.1940074281084776 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 4.4408920985006262e-015 6.7561893153675303 5.1940074281084776 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.1390442449492983 -2.5232255673966395 1.6549481152379024 ;
	setAttr ".r" -type "double3" 53.575724484851726 -9.8431295734407147 -13.043446391922028 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 6.9683318872190565 0.22582944535295379 -5.1711617186579417 ;
	setAttr ".rpt" -type "double3" 1.1707123577302279 2.2973961220436925 3.5162136034200415 ;
	setAttr ".sp" -type "double3" 6.9683318846098485 0.22582944568911145 -5.1711617179225886 ;
	setAttr ".spt" -type "double3" 0 1.110223024625157e-016 -2.6645352591003769e-015 ;
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
	setAttr ".rst" -type "double3" 1.7613772845327809 -11.318788054580001 -14.654786662265703 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.2285973430783228 1.1124583459720654 -10.925222542185223 ;
	setAttr ".r" -type "double3" 0.71034711135911588 -16.565582706496276 -3.0138074751213662 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
	setAttr ".rp" -type "double3" 7.792622256942602 -0.58745103787163888 2.4080277376801558 ;
	setAttr ".rpt" -type "double3" -1.0497078821493531 -0.38567408256709496 2.1146695969762725 ;
	setAttr ".sp" -type "double3" 7.7926222635438025 -0.58745104249045976 2.4080277420104554 ;
	setAttr ".spt" -type "double3" -3.5527136788004997e-015 0 0 ;
	setAttr ".pv" -type "double3" 0.071151606287064129 1.5693973452477674 1.2377113644351967 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -89.319129970725967 -0.27763254337855348 -2.8145683571642004 ;
	setAttr ".rp" -type "double3" -0.4856829682850573 0.8253158957651785 9.3553571156757123 ;
	setAttr ".sp" -type "double3" -0.4856829682850573 0.8253158957651785 9.3553571156757123 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -0.4856829682850573 0.8253158957651785 9.3553571156757123 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 89.318317643970104 -2.8110703394280154 0.31108529979810029 ;
	setAttr ".rp" -type "double3" 0.52295705459121322 -6.4009847422909907 -0.039255247707328744 ;
	setAttr ".sp" -type "double3" 0.52295705459121322 -6.4009847422909907 -0.039255247707328744 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 0.52295705459121322 -6.4009847422909907 -0.039255247707328744 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.1748094858108775 -0.0659523781483419 -8.8863261624048633 ;
	setAttr ".r" -type "double3" 0.71034711135906148 -16.565582706496279 -3.0138074751213524 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 7.8853835108758616 0.51354950726219883 6.7194407799588305 ;
	setAttr ".rpt" -type "double3" -2.2299390999959092 -0.38050434268837752 1.9749331540864585 ;
	setAttr ".sp" -type "double3" 7.8853835108758652 0.51354950726219739 6.7194407799588269 ;
	setAttr ".spt" -type "double3" -3.5527136788004997e-015 -1.1102230246251564e-016 
		1.7763568394002509e-015 ;
	setAttr ".pv" -type "double3" -1.9975639168333617 0.098206310960442716 -0.0096911636503296261 ;
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
	setAttr ".lr" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000028 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" -0.48568296828506391 0.82531589576518072 9.3553571156757087 ;
	setAttr ".r" -type "double3" 0.68087002927406237 -0.2776325433785567 -2.8145683571642226 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "lToeControl" -p "lToeControlZeroGroup";
	addAttr -ci true -sn "lToeControl" -ln "lToeControl" -at "message";
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
		-2.839911190910728 -3.6887356137831889e-016 -6.1478926896386464e-016
		-2.839911190910728 -3.6887356137831889e-016 -6.1478926896386464e-016
		-2.839911190910728 -3.6887356137831889e-016 -6.1478926896386464e-016
		-2.839911190910728 -3.6887356137831889e-016 -6.1478926896386464e-016
		-2.839911190910728 -3.6887356137831889e-016 -6.1478926896386464e-016
		-1.4199555954553635 -0.49899079282884506 -0.31912773768238289
		-1.4199555954553638 -0.49899079282884506 4.9362490254857221
		-1.419955595455364 0.49899079282884484 4.9362490254857221
		-1.4199555954553638 0.49899079282884506 -0.31912773768238289
		-1.4199555954553635 -0.49899079282884462 -0.31912773768238334
		1.4199555954553642 -0.49899079282884551 -0.31912773768238289
		1.419955595455364 -0.49899079282884484 4.9362490254857221
		1.4199555954553638 0.49899079282884529 4.9362490254857221
		1.419955595455364 0.49899079282884529 -0.31912773768238312
		1.4199555954553642 -0.49899079282884506 -0.31912773768238334
		2.839911190910728 -4.3440753922980117e-016 -1.884918316442552e-016
		2.839911190910728 -4.3440753922980117e-016 -1.884918316442552e-016
		2.839911190910728 -4.3440753922980117e-016 -1.884918316442552e-016
		2.839911190910728 -4.3440753922980117e-016 -1.884918316442552e-016
		2.839911190910728 -4.3440753922980117e-016 -1.884918316442552e-016
		
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -6.9989319320640498e-015 
		-3.018086930439165e-015 ;
	setAttr ".tg[0].tor" -type "double3" -52.447721684780142 1.5902773407317584e-014 
		7.9513867036587939e-016 ;
	setAttr ".lr" -type "double3" -52.447721684780149 16.289133985840117 0 ;
	setAttr ".rst" -type "double3" 2.6645352591003757e-015 0 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -52.447721684780149 16.289133985840117 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.086607260791935717 -6.721062852083092 1.474629549067537 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -173.4719752470655 -7.7330484731412925 -24.553826745412895 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" 2.2563075582127112e-005 12.121790911788976 7.8092565298781835e-006 ;
	setAttr ".r" -type "double3" -5.1331624246683192e-010 9.056903795498778e-016 3.1112353648248931e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -22.816889009529714 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" 2.5042564136157353e-005 14.193317215627447 1.3075235451253525e-005 ;
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
	setAttr ".rst" -type "double3" -8.8597686445719308 68.188501709889096 -5.9296024192412577 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -14.362396532765951 2.7990028213643399 0.3182733379991376 ;
	setAttr ".sp" -type "double3" -14.362396532765946 2.7990028213643328 0.31827333799913848 ;
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
	setAttr ".rst" -type "double3" -5.4816700534644252 42.189235724890025 -3.6687328207718668 ;
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
	setAttr ".rst" -type "double3" -4.8358366478084278 -11.031213338593624 -1.3655881896997384 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -19.844066586230383 44.988238546254365 -3.3504594827727305 ;
	setAttr ".sp" -type "double3" -19.844066586230383 44.988238546254365 -3.3504594827727305 ;
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
	setAttr ".tg[0].tot" -type "double3" -19.844066586230383 -2.6572683554351997 -1.5983289442178719 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" -8.6488572269578903 20.242326733021113 -2.230615247937346 ;
	setAttr ".rp" -type "double3" -11.195209359272493 24.745911813233253 -1.1198442348353845 ;
	setAttr ".sp" -type "double3" -11.195209359272493 24.745911813233253 -1.1198442348353845 ;
createNode transform -n "rikHandControl" -p "rikHandControlWeaponGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 8.6488572269578832 -20.242326733021113 2.2306152479373447 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -36.861033373496113 -30.906749427405856 -10.723396075343263 ;
	setAttr ".rpt" -type "double3" 17.016966787265737 75.894987973660221 7.3729365925705341 ;
	setAttr ".sp" -type "double3" -36.861033373496113 -30.906749427405856 -10.723396075343263 ;
	setAttr ".hdl" -type "double3" -36.861033373496113 -30.906749427405856 -10.723396075343263 ;
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\" -objs %1\" ) #;";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim  \"+ $other +\" -objs %1\" ) #;";
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
		-40.86103337349612 -30.906749427405849 -10.72339607534326
		-40.86103337349612 -30.906749427405849 -10.72339607534326
		-40.86103337349612 -30.906749427405849 -10.72339607534326
		-40.86103337349612 -30.906749427405849 -10.72339607534326
		-40.86103337349612 -30.906749427405849 -10.72339607534326
		-38.86103337349612 -33.356239170189028 -13.172885818126437
		-38.86103337349612 -33.356239170189028 -8.273906332560081
		-38.86103337349612 -28.45725968462267 -8.273906332560081
		-38.86103337349612 -28.45725968462267 -13.172885818126437
		-38.86103337349612 -33.356239170189028 -13.172885818126439
		-34.86103337349612 -33.356239170189028 -13.172885818126437
		-34.86103337349612 -33.356239170189028 -8.273906332560081
		-34.86103337349612 -28.45725968462267 -8.273906332560081
		-34.86103337349612 -28.45725968462267 -13.172885818126439
		-34.86103337349612 -33.356239170189028 -13.172885818126439
		-32.86103337349612 -30.906749427405849 -10.72339607534326
		-32.86103337349612 -30.906749427405849 -10.72339607534326
		-32.86103337349612 -30.906749427405849 -10.72339607534326
		-32.86103337349612 -30.906749427405849 -10.72339607534326
		-32.86103337349612 -30.906749427405849 -10.72339607534326
		
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
	setAttr ".lr" -type "double3" 163.76326948359826 -0.88754951250240344 -25.246405347552241 ;
	setAttr ".rsrr" -type "double3" 163.71113623031999 -7.7330131136858533 -24.553830364037367 ;
	setAttr -k on ".w0";
createNode transform -n "rElbowControl" -p "main";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -13.695605292380359 57.157288371295472 -7.2951906089409961 ;
	setAttr ".sp" -type "double3" -13.695605292380359 57.157288371295472 -7.2951906089409961 ;
	setAttr ".hdl" -type "double3" -13.695605292380359 57.157288371295472 -7.2951906089409961 ;
	setAttr ".dh" yes;
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
		-14.695605292380359 57.157288371295472 -7.2951906089409961
		-14.695605292380359 57.157288371295472 -7.2951906089409961
		-14.695605292380359 57.157288371295472 -7.2951906089409961
		-14.695605292380359 57.157288371295472 -7.2951906089409961
		-14.695605292380359 57.157288371295472 -7.2951906089409961
		-13.695605292380359 57.157288371295472 -8.2951906089409952
		-13.695605292380359 56.157288371295472 -7.2951906089409961
		-13.695605292380359 57.157288371295472 -6.2951906089409961
		-13.695605292380359 58.157288371295472 -7.2951906089409961
		-13.695605292380359 57.157288371295472 -8.2951906089409952
		-12.695605292380359 57.157288371295472 -7.2951906089409961
		-12.695605292380359 57.157288371295472 -7.2951906089409961
		-12.695605292380359 57.157288371295472 -7.2951906089409961
		-12.695605292380359 57.157288371295472 -7.2951906089409961
		-12.695605292380359 57.157288371295472 -7.2951906089409961
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" 163.71113574340475 -7.7330484731412845 -24.553826745412898 ;
	setAttr ".rp" -type "double3" -19.844066586232827 44.988238546258863 -3.350459482742596 ;
	setAttr ".sp" -type "double3" -19.844066586232827 44.988238546258863 -3.350459482742596 ;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -19.844066586232827 47.861277926827988 -3.3504594827425933 ;
	setAttr ".rpt" -type "double3" -18.777774900969064 -79.690728471136666 17.169067241785243 ;
	setAttr ".sp" -type "double3" -19.844066586232827 47.861277926827988 -3.3504594827425933 ;
createNode transform -n "rHandControl" -p "rHandControlGroup";
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
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.5157330903849571e-015 1.826334133496629e-015 3.1805546814635176e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.6389797902578698 3.4059216933858831 -1.9270294926777094 ;
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
		-1.1498370615023457e-015 4.2529526279501785e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.2529526279501785e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 4.2529526279501785e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.2529526279501785e-016 4.5
		-1.1498370615023457e-015 1.9153595870460796 -4.5
		4.5 1.9153595870460796 -3.3676674730115375e-016
		6.0860333699758185e-016 1.9153595870460793 4.5
		-4.5 1.9153595870460796 7.1390647300023646e-016
		-1.1498370615023457e-015 1.9153595870460796 -4.5
		4.5 1.9153595870460796 -3.3676674730115375e-016
		6.0860333699758185e-016 1.9153595870460793 4.5
		-1.1498370615023457e-015 3.8307191740921591 -4.5
		4.5 3.8307191740921591 -2.1430611191891602e-016
		6.0860333699758185e-016 3.8307191740921591 4.5
		-4.5 3.8307191740921591 8.3636710838247419e-016
		-1.1498370615023457e-015 3.8307191740921591 -4.5
		4.5 3.8307191740921591 -2.1430611191891602e-016
		6.0860333699758185e-016 3.8307191740921591 4.5
		-1.1498370615023457e-015 5.7460787611382385 -4.5
		4.5 5.7460787611382385 -9.1845476536678294e-017
		6.0860333699758185e-016 5.7460787611382385 4.5
		-4.5 5.7460787611382385 9.5882774376471192e-016
		-1.1498370615023457e-015 5.7460787611382385 -4.5
		4.5 5.7460787611382385 -9.1845476536678294e-017
		6.0860333699758185e-016 5.7460787611382385 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -13.188589310154216 4.1494393139285268 -20.655288798880076 ;
	setAttr ".rp" -type "double3" 1.8598139432145817 2.6483159305954889 -2.2072715510654426 ;
	setAttr ".sp" -type "double3" 1.8598139432145817 2.6483159305954889 -2.2072715510654426 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.8598139432145904 2.6483159305954942 -2.2072715510654342 ;
	setAttr ".sp" -type "double3" 1.8598139432145904 2.6483159305954942 -2.2072715510654342 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.8598139432145904 2.6483159305954942 -2.2072715510654342 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -4.5720473546038059e-015 7.9513867036587919e-016 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999956 ;
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
		-5.7491853075117283e-016 1.5172967385279704e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.5172967385279704e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.5172967385279704e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.5172967385279704e-016 2.25
		-5.7491853075117283e-016 0.68332970262450365 -2.25
		2.25 0.68332970262450365 -1.6838337365057687e-016
		3.0430166849879092e-016 0.68332970262450354 2.25
		-2.25 0.68332970262450365 3.5695323650011823e-016
		-5.7491853075117283e-016 0.68332970262450365 -2.25
		2.25 0.68332970262450365 -1.6838337365057687e-016
		3.0430166849879092e-016 0.68332970262450354 2.25
		-5.7491853075117283e-016 1.3666594052490073 -2.25
		2.25 1.3666594052490073 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3666594052490073 2.25
		-2.25 1.3666594052490073 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3666594052490073 -2.25
		2.25 1.3666594052490073 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3666594052490073 2.25
		-5.7491853075117283e-016 2.0499891078735111 -2.25
		2.25 2.0499891078735111 -4.5922738268339147e-017
		3.0430166849879092e-016 2.0499891078735111 2.25
		-2.25 2.0499891078735111 4.7941387188235596e-016
		-5.7491853075117283e-016 2.0499891078735111 -2.25
		2.25 2.0499891078735111 -4.5922738268339147e-017
		3.0430166849879092e-016 2.0499891078735111 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 6.3106687532497263 7.9513867036587919e-016 0 ;
	setAttr ".rp" -type "double3" -2.1316217215933131e-005 2.0499891077622547 -1.3490876440425126e-006 ;
	setAttr ".sp" -type "double3" -2.1316217215933131e-005 2.0499891077622547 -1.3490876440425126e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -2.13162172195136e-005 2.0499891077622561 -1.3490876422661557e-006 ;
	setAttr ".sp" -type "double3" -2.13162172195136e-005 2.0499891077622561 -1.3490876422661557e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.13162172195136e-005 2.0499891077622561 -1.3490876422661557e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.3417965062424211e-015 0 -7.9513867036587899e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
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
		-5.7491853075117283e-016 9.5585494649203528e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.5585494649203528e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 9.5585494649203528e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.5585494649203528e-017 2.25
		-5.7491853075117283e-016 0.43047879808417755 -2.25
		2.25 0.43047879808417755 -1.6838337365057687e-016
		3.0430166849879092e-016 0.43047879808417749 2.25
		-2.25 0.43047879808417755 3.5695323650011823e-016
		-5.7491853075117283e-016 0.43047879808417755 -2.25
		2.25 0.43047879808417755 -1.6838337365057687e-016
		3.0430166849879092e-016 0.43047879808417749 2.25
		-5.7491853075117283e-016 0.8609575961683551 -2.25
		2.25 0.8609575961683551 -1.0715305595945801e-016
		3.0430166849879092e-016 0.8609575961683551 2.25
		-2.25 0.8609575961683551 4.1818355419123709e-016
		-5.7491853075117283e-016 0.8609575961683551 -2.25
		2.25 0.8609575961683551 -1.0715305595945801e-016
		3.0430166849879092e-016 0.8609575961683551 2.25
		-5.7491853075117283e-016 1.2914363942525326 -2.25
		2.25 1.2914363942525326 -4.5922738268339147e-017
		3.0430166849879092e-016 1.2914363942525326 2.25
		-2.25 1.2914363942525326 4.7941387188235596e-016
		-5.7491853075117283e-016 1.2914363942525326 -2.25
		2.25 1.2914363942525326 -4.5922738268339147e-017
		3.0430166849879092e-016 1.2914363942525326 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -4.3432862014433882 3.975693351829395e-016 -7.9513867036587899e-016 ;
	setAttr ".rp" -type "double3" 2.6814927528151511e-005 1.2914363938790696 1.5668413444691609e-005 ;
	setAttr ".sp" -type "double3" 2.6814927528151511e-005 1.2914363938790696 1.5668413444691609e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6814927527624155e-005 1.2914363938790674 1.5668413442471163e-005 ;
	setAttr ".sp" -type "double3" 2.6814927527624155e-005 1.2914363938790674 1.5668413442471163e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6814927527624155e-005 1.2914363938790674 1.5668413442471163e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.4544250346801159e-016 1.1927080055488184e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
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
		-5.7491853075117283e-016 1.0100620296600308e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0100620296600308e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0100620296600308e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0100620296600308e-016 2.25
		-5.7491853075117283e-016 0.45489149803980017 -2.25
		2.25 0.45489149803980017 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45489149803980011 2.25
		-2.25 0.45489149803980017 3.5695323650011823e-016
		-5.7491853075117283e-016 0.45489149803980017 -2.25
		2.25 0.45489149803980017 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45489149803980011 2.25
		-5.7491853075117283e-016 0.90978299607960034 -2.25
		2.25 0.90978299607960034 -1.0715305595945801e-016
		3.0430166849879092e-016 0.90978299607960034 2.25
		-2.25 0.90978299607960034 4.1818355419123709e-016
		-5.7491853075117283e-016 0.90978299607960034 -2.25
		2.25 0.90978299607960034 -1.0715305595945801e-016
		3.0430166849879092e-016 0.90978299607960034 2.25
		-5.7491853075117283e-016 1.3646744941194004 -2.25
		2.25 1.3646744941194004 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3646744941194004 2.25
		-2.25 1.3646744941194004 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3646744941194004 -2.25
		2.25 1.3646744941194004 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3646744941194004 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 68.419080652840719 85.664217446763487 47.273414519607456 ;
	setAttr ".rp" -type "double3" -0.23762997622438983 5.3616086246367463 -1.505615197234853 ;
	setAttr ".sp" -type "double3" -0.23762997622438983 5.3616086246367463 -1.505615197234853 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -0.23762997622439053 5.3616086246367471 -1.505615197234853 ;
	setAttr ".sp" -type "double3" -0.23762997622439053 5.3616086246367471 -1.505615197234853 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -0.23762671287977799 9.0000558718860741 -0.37627638971185773 ;
	setAttr ".sp" -type "double3" -0.23762671287977799 9.0000558718860741 -0.37627638971185773 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.23762997622439092 5.3616086246367471 -1.505615197234853 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587919e-016 -3.9756933518293979e-016 6.3362612794781022e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
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
		-5.7491853075117283e-016 2.0645238258005037e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0645238258005037e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0645238258005037e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0645238258005037e-016 2.25
		-5.7491853075117283e-016 0.92977887325726594 -2.25
		2.25 0.92977887325726594 -1.6838337365057687e-016
		3.0430166849879092e-016 0.92977887325726583 2.25
		-2.25 0.92977887325726594 3.5695323650011823e-016
		-5.7491853075117283e-016 0.92977887325726594 -2.25
		2.25 0.92977887325726594 -1.6838337365057687e-016
		3.0430166849879092e-016 0.92977887325726583 2.25
		-5.7491853075117283e-016 1.8595577465145319 -2.25
		2.25 1.8595577465145319 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8595577465145319 2.25
		-2.25 1.8595577465145319 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8595577465145319 -2.25
		2.25 1.8595577465145319 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8595577465145319 2.25
		-5.7491853075117283e-016 2.7893366197717979 -2.25
		2.25 2.7893366197717979 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7893366197717979 2.25
		-2.25 2.7893366197717979 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7893366197717979 -2.25
		2.25 2.7893366197717979 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7893366197717979 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 40.260117325024751 0 6.0877804449887607e-016 ;
	setAttr ".rp" -type "double3" 6.5266892236570673e-006 2.7893366197044136 1.8256505299518722e-005 ;
	setAttr ".sp" -type "double3" 6.5266892236570673e-006 2.7893366197044136 1.8256505299518722e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.5266892245174901e-006 2.7893366197044092 1.8256505299518722e-005 ;
	setAttr ".sp" -type "double3" 6.5266892245174901e-006 2.7893366197044092 1.8256505299518722e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.5266892245174901e-006 2.7893366197044092 1.8256505299518722e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 2.7829853462805756e-015 -5.963540027744091e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000007 ;
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
		-5.7491853075117283e-016 1.3357539477855603e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3357539477855603e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3357539477855603e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3357539477855603e-016 2.25
		-5.7491853075117283e-016 0.60157009815057183 -2.25
		2.25 0.60157009815057183 -1.6838337365057687e-016
		3.0430166849879092e-016 0.60157009815057172 2.25
		-2.25 0.60157009815057183 3.5695323650011823e-016
		-5.7491853075117283e-016 0.60157009815057183 -2.25
		2.25 0.60157009815057183 -1.6838337365057687e-016
		3.0430166849879092e-016 0.60157009815057172 2.25
		-5.7491853075117283e-016 1.2031401963011437 -2.25
		2.25 1.2031401963011437 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2031401963011437 2.25
		-2.25 1.2031401963011437 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2031401963011437 -2.25
		2.25 1.2031401963011437 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2031401963011437 2.25
		-5.7491853075117283e-016 1.8047102944517155 -2.25
		2.25 1.8047102944517155 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8047102944517155 2.25
		-2.25 1.8047102944517155 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8047102944517155 -2.25
		2.25 1.8047102944517155 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8047102944517155 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" 10.686288132589121 -1.391492673140289e-015 -9.9392333795734919e-016 ;
	setAttr ".rp" -type "double3" -1.937387728023765e-007 1.8047102943924571 1.4622738081726538e-005 ;
	setAttr ".sp" -type "double3" -1.937387728023765e-007 1.8047102943924571 1.4622738081726538e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.9373877235828729e-007 1.8047102943924553 1.4622738078173825e-005 ;
	setAttr ".sp" -type "double3" -1.9373877235828729e-007 1.8047102943924553 1.4622738078173825e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.9373877235828729e-007 1.8047102943924553 1.4622738078173825e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270375e-015 4.9696166897867469e-016 -7.9513867036587959e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999956 ;
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
		-5.7491853075117283e-016 1.3205108072320749e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3205108072320749e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3205108072320749e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3205108072320749e-016 2.25
		-5.7491853075117283e-016 0.59470519793890853 -2.25
		2.25 0.59470519793890853 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59470519793890841 2.25
		-2.25 0.59470519793890853 3.5695323650011823e-016
		-5.7491853075117283e-016 0.59470519793890853 -2.25
		2.25 0.59470519793890853 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59470519793890841 2.25
		-5.7491853075117283e-016 1.1894103958778171 -2.25
		2.25 1.1894103958778171 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1894103958778171 2.25
		-2.25 1.1894103958778171 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1894103958778171 -2.25
		2.25 1.1894103958778171 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1894103958778171 2.25
		-5.7491853075117283e-016 1.7841155938167255 -2.25
		2.25 1.7841155938167255 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7841155938167255 2.25
		-2.25 1.7841155938167255 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7841155938167255 -2.25
		2.25 1.7841155938167255 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7841155938167255 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 145.76917746376807 76.379855051880583 123.30244086070851 ;
	setAttr ".rp" -type "double3" -0.17926834147125731 5.7393969016516344 0.21120415777576076 ;
	setAttr ".sp" -type "double3" -0.17926834147125731 5.7393969016516344 0.21120415777576076 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -0.17926834147125859 5.7393969016516362 0.2112041577757573 ;
	setAttr ".sp" -type "double3" -0.17926834147125859 5.7393969016516362 0.2112041577757573 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -0.17927247992335449 9.9268263216185808 1.6641976298589327 ;
	setAttr ".sp" -type "double3" -0.17927247992335449 9.9268263216185808 1.6641976298589327 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.17926834147126036 5.7393969016516442 0.21120415777575374 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 -9.9392333795734899e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
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
		-5.7491853075117283e-016 2.0800763128029259e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0800763128029259e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0800763128029259e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0800763128029259e-016 2.25
		-5.7491853075117283e-016 0.93678309072414523 -2.25
		2.25 0.93678309072414523 -1.6838337365057687e-016
		3.0430166849879092e-016 0.93678309072414512 2.25
		-2.25 0.93678309072414523 3.5695323650011823e-016
		-5.7491853075117283e-016 0.93678309072414523 -2.25
		2.25 0.93678309072414523 -1.6838337365057687e-016
		3.0430166849879092e-016 0.93678309072414512 2.25
		-5.7491853075117283e-016 1.8735661814482905 -2.25
		2.25 1.8735661814482905 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8735661814482905 2.25
		-2.25 1.8735661814482905 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8735661814482905 -2.25
		2.25 1.8735661814482905 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8735661814482905 2.25
		-5.7491853075117283e-016 2.8103492721724357 -2.25
		2.25 2.8103492721724357 -4.5922738268339147e-017
		3.0430166849879092e-016 2.8103492721724357 2.25
		-2.25 2.8103492721724357 4.7941387188235596e-016
		-5.7491853075117283e-016 2.8103492721724357 -2.25
		2.25 2.8103492721724357 -4.5922738268339147e-017
		3.0430166849879092e-016 2.8103492721724357 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 32.54381876213256 1.5902773407317584e-015 -1.0933156717530838e-015 ;
	setAttr ".rp" -type "double3" -4.4702558450460117e-006 2.8103492720865368 -2.1513227590475026e-005 ;
	setAttr ".sp" -type "double3" -4.4702558450460117e-006 2.8103492720865368 -2.1513227590475026e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -4.4702558450460117e-006 2.8103492720865386 -2.151322759402774e-005 ;
	setAttr ".sp" -type "double3" -4.4702558450460117e-006 2.8103492720865386 -2.151322759402774e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.4702558450460117e-006 2.8103492720865386 -2.151322759402774e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 1.5902773407317584e-015 7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
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
		-5.7491853075117283e-016 1.8505967691503455e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8505967691503455e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.8505967691503455e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8505967691503455e-016 2.25
		-5.7491853075117283e-016 0.83343469199585396 -2.25
		2.25 0.83343469199585396 -1.6838337365057687e-016
		3.0430166849879092e-016 0.83343469199585385 2.25
		-2.25 0.83343469199585396 3.5695323650011823e-016
		-5.7491853075117283e-016 0.83343469199585396 -2.25
		2.25 0.83343469199585396 -1.6838337365057687e-016
		3.0430166849879092e-016 0.83343469199585385 2.25
		-5.7491853075117283e-016 1.6668693839917079 -2.25
		2.25 1.6668693839917079 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6668693839917079 2.25
		-2.25 1.6668693839917079 4.1818355419123709e-016
		-5.7491853075117283e-016 1.6668693839917079 -2.25
		2.25 1.6668693839917079 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6668693839917079 2.25
		-5.7491853075117283e-016 2.5003040759875619 -2.25
		2.25 2.5003040759875619 -4.5922738268339147e-017
		3.0430166849879092e-016 2.5003040759875619 2.25
		-2.25 2.5003040759875619 4.7941387188235596e-016
		-5.7491853075117283e-016 2.5003040759875619 -2.25
		2.25 2.5003040759875619 -4.5922738268339147e-017
		3.0430166849879092e-016 2.5003040759875619 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 21.736725451536056 1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -3.8066483407650509e-006 2.5003040759111705 1.9169333111079823e-005 ;
	setAttr ".sp" -type "double3" -3.8066483407650509e-006 2.5003040759111705 1.9169333111079823e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.8066483425414077e-006 2.5003040759111705 1.9169333109303466e-005 ;
	setAttr ".sp" -type "double3" -3.8066483425414077e-006 2.5003040759111705 1.9169333109303466e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8066483425414077e-006 2.5003040759111705 1.9169333109303466e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587899e-016 -1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
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
		-5.7491853075117283e-016 1.4594233284489424e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4594233284489424e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4594233284489424e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4594233284489424e-016 2.25
		-5.7491853075117283e-016 0.65726583581784659 -2.25
		2.25 0.65726583581784659 -1.6838337365057687e-016
		3.0430166849879092e-016 0.65726583581784648 2.25
		-2.25 0.65726583581784659 3.5695323650011823e-016
		-5.7491853075117283e-016 0.65726583581784659 -2.25
		2.25 0.65726583581784659 -1.6838337365057687e-016
		3.0430166849879092e-016 0.65726583581784648 2.25
		-5.7491853075117283e-016 1.3145316716356932 -2.25
		2.25 1.3145316716356932 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3145316716356932 2.25
		-2.25 1.3145316716356932 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3145316716356932 -2.25
		2.25 1.3145316716356932 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3145316716356932 2.25
		-5.7491853075117283e-016 1.9717975074535397 -2.25
		2.25 1.9717975074535397 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9717975074535397 2.25
		-2.25 1.9717975074535397 4.7941387188235596e-016
		-5.7491853075117283e-016 1.9717975074535397 -2.25
		2.25 1.9717975074535397 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9717975074535397 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 153.53655490967165 75.23103784713102 130.66084227884895 ;
	setAttr ".rp" -type "double3" 0.39437431383446164 5.3523703013953927 1.896400265530551 ;
	setAttr ".sp" -type "double3" 0.39437431383446164 5.3523703013953927 1.896400265530551 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.39437431383446286 5.3523703013953918 1.8964002655305556 ;
	setAttr ".sp" -type "double3" 0.39437431383446286 5.3523703013953918 1.8964002655305556 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.3943722639931051 9.0989659616127518 3.2312565295903144 ;
	setAttr ".sp" -type "double3" 0.3943722639931051 9.0989659616127518 3.2312565295903144 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.39437431383446375 5.3523703013953918 1.8964002655305592 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 -8.9453100416161419e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
		-5.7491853075117283e-016 1.7595409477808742e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7595409477808742e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7595409477808742e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7595409477808742e-016 2.25
		-5.7491853075117283e-016 0.79242679567690744 -2.25
		2.25 0.79242679567690744 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79242679567690733 2.25
		-2.25 0.79242679567690744 3.5695323650011823e-016
		-5.7491853075117283e-016 0.79242679567690744 -2.25
		2.25 0.79242679567690744 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79242679567690733 2.25
		-5.7491853075117283e-016 1.5848535913538149 -2.25
		2.25 1.5848535913538149 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5848535913538149 2.25
		-2.25 1.5848535913538149 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5848535913538149 -2.25
		2.25 1.5848535913538149 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5848535913538149 2.25
		-5.7491853075117283e-016 2.3772803870307224 -2.25
		2.25 2.3772803870307224 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3772803870307224 2.25
		-2.25 2.3772803870307224 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3772803870307224 -2.25
		2.25 2.3772803870307224 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3772803870307224 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 34.597447667306135 0 2.087239009710433e-015 ;
	setAttr ".rp" -type "double3" -4.0996827177508521e-006 2.3772803869652779 1.7157868725803382e-005 ;
	setAttr ".sp" -type "double3" -4.0996827177508521e-006 2.3772803869652779 1.7157868725803382e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -4.0996827177508521e-006 2.3772803869652765 1.7157868722250669e-005 ;
	setAttr ".sp" -type "double3" -4.0996827177508521e-006 2.3772803869652765 1.7157868722250669e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.0996827177508521e-006 2.3772803869652765 1.7157868722250669e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 0 -1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
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
		-5.7491853075117283e-016 1.603149820892987e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.603149820892987e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.603149820892987e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.603149820892987e-016 2.25
		-5.7491853075117283e-016 0.72199449359927337 -2.25
		2.25 0.72199449359927337 -1.6838337365057687e-016
		3.0430166849879092e-016 0.72199449359927326 2.25
		-2.25 0.72199449359927337 3.5695323650011823e-016
		-5.7491853075117283e-016 0.72199449359927337 -2.25
		2.25 0.72199449359927337 -1.6838337365057687e-016
		3.0430166849879092e-016 0.72199449359927326 2.25
		-5.7491853075117283e-016 1.4439889871985467 -2.25
		2.25 1.4439889871985467 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4439889871985467 2.25
		-2.25 1.4439889871985467 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4439889871985467 -2.25
		2.25 1.4439889871985467 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4439889871985467 2.25
		-5.7491853075117283e-016 2.16598348079782 -2.25
		2.25 2.16598348079782 -4.5922738268339147e-017
		3.0430166849879092e-016 2.16598348079782 2.25
		-2.25 2.16598348079782 4.7941387188235596e-016
		-5.7491853075117283e-016 2.16598348079782 -2.25
		2.25 2.16598348079782 -4.5922738268339147e-017
		3.0430166849879092e-016 2.16598348079782 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 24.978719965072695 -1.5902773407317588e-015 -7.9513867036587939e-016 ;
	setAttr ".rp" -type "double3" 4.1796623406753497e-007 2.1659834807483698 1.4628849928755017e-005 ;
	setAttr ".sp" -type "double3" 4.1796623406753497e-007 2.1659834807483698 1.4628849928755017e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 4.1796623362344576e-007 2.1659834807483769 1.4628849934084087e-005 ;
	setAttr ".sp" -type "double3" 4.1796623362344576e-007 2.1659834807483769 1.4628849934084087e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.1796623362344576e-007 2.1659834807483769 1.4628849934084087e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 0 1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
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
		-5.7491853075117283e-016 1.2630070848694119e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2630070848694119e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2630070848694119e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2630070848694119e-016 2.25
		-5.7491853075117283e-016 0.56880782367841798 -2.25
		2.25 0.56880782367841798 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56880782367841787 2.25
		-2.25 0.56880782367841798 3.5695323650011823e-016
		-5.7491853075117283e-016 0.56880782367841798 -2.25
		2.25 0.56880782367841798 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56880782367841787 2.25
		-5.7491853075117283e-016 1.137615647356836 -2.25
		2.25 1.137615647356836 -1.0715305595945801e-016
		3.0430166849879092e-016 1.137615647356836 2.25
		-2.25 1.137615647356836 4.1818355419123709e-016
		-5.7491853075117283e-016 1.137615647356836 -2.25
		2.25 1.137615647356836 -1.0715305595945801e-016
		3.0430166849879092e-016 1.137615647356836 2.25
		-5.7491853075117283e-016 1.7064234710352539 -2.25
		2.25 1.7064234710352539 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7064234710352539 2.25
		-2.25 1.7064234710352539 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7064234710352539 -2.25
		2.25 1.7064234710352539 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7064234710352539 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 131.97614941129837 71.565378549932547 104.54421824319773 ;
	setAttr ".rp" -type "double3" 0.22800603972952715 4.50365400442608 3.2207687758682373 ;
	setAttr ".sp" -type "double3" 0.22800603972952715 4.50365400442608 3.2207687758682373 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.22800603972952871 4.5036540044260818 3.2207687758682368 ;
	setAttr ".sp" -type "double3" 0.22800603972952871 4.5036540044260818 3.2207687758682368 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.22800547025978934 7.9426274422184289 4.2365137239128972 ;
	setAttr ".sp" -type "double3" 0.22800547025978934 7.9426274422184289 4.2365137239128972 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.2280060397295296 4.5036540044260889 3.2207687758682368 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.951386703658788e-016 0 4.969616689786743e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000007 ;
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
		-5.7491853075117283e-016 1.7317422489965962e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7317422489965962e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7317422489965962e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7317422489965962e-016 2.25
		-5.7491853075117283e-016 0.77990737472828153 -2.25
		2.25 0.77990737472828153 -1.6838337365057687e-016
		3.0430166849879092e-016 0.77990737472828142 2.25
		-2.25 0.77990737472828153 3.5695323650011823e-016
		-5.7491853075117283e-016 0.77990737472828153 -2.25
		2.25 0.77990737472828153 -1.6838337365057687e-016
		3.0430166849879092e-016 0.77990737472828142 2.25
		-5.7491853075117283e-016 1.5598147494565631 -2.25
		2.25 1.5598147494565631 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5598147494565631 2.25
		-2.25 1.5598147494565631 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5598147494565631 -2.25
		2.25 1.5598147494565631 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5598147494565631 2.25
		-5.7491853075117283e-016 2.3397221241848447 -2.25
		2.25 2.3397221241848447 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3397221241848447 2.25
		-2.25 2.3397221241848447 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3397221241848447 -2.25
		2.25 2.3397221241848447 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3397221241848447 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 30.524438114765349 0 0 ;
	setAttr ".rp" -type "double3" -4.8841723838677353e-006 2.3397221229913541 7.4572262580119286e-005 ;
	setAttr ".sp" -type "double3" -4.8841723838677353e-006 2.3397221229913541 7.4572262580119286e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -4.8841723820913785e-006 2.3397221229913505 7.4572262580119286e-005 ;
	setAttr ".sp" -type "double3" -4.8841723820913785e-006 2.3397221229913505 7.4572262580119286e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.8841723820913785e-006 2.3397221229913505 7.4572262580119286e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 7.9513867036587939e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
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
		-5.7491853075117283e-016 1.2242137676617627e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2242137676617627e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2242137676617627e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2242137676617627e-016 2.25
		-5.7491853075117283e-016 0.55133686678633453 -2.25
		2.25 0.55133686678633453 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55133686678633442 2.25
		-2.25 0.55133686678633453 3.5695323650011823e-016
		-5.7491853075117283e-016 0.55133686678633453 -2.25
		2.25 0.55133686678633453 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55133686678633442 2.25
		-5.7491853075117283e-016 1.1026737335726691 -2.25
		2.25 1.1026737335726691 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1026737335726691 2.25
		-2.25 1.1026737335726691 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1026737335726691 -2.25
		2.25 1.1026737335726691 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1026737335726691 2.25
		-5.7491853075117283e-016 1.6540106003590036 -2.25
		2.25 1.6540106003590036 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6540106003590036 2.25
		-2.25 1.6540106003590036 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6540106003590036 -2.25
		2.25 1.6540106003590036 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6540106003590036 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 16.55276561235797 -1.5902773407317588e-015 7.9513867036587939e-016 ;
	setAttr ".rp" -type "double3" 8.6294052845659053e-006 1.6540105994211309 -5.5027563806930857e-005 ;
	setAttr ".sp" -type "double3" 8.6294052845659053e-006 1.6540105994211309 -5.5027563806930857e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 8.6294052845659053e-006 1.6540105994211309 -5.5027563810483571e-005 ;
	setAttr ".sp" -type "double3" 8.6294052845659053e-006 1.6540105994211309 -5.5027563810483571e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.6294052845659053e-006 1.6540105994211309 -5.5027563810483571e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635183e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999978 ;
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
		-5.7491853075117283e-016 1.2714779740565389e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2714779740565389e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2714779740565389e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2714779740565389e-016 2.25
		-5.7491853075117283e-016 0.5726227730170822 -2.25
		2.25 0.5726227730170822 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57262277301708209 2.25
		-2.25 0.5726227730170822 3.5695323650011823e-016
		-5.7491853075117283e-016 0.5726227730170822 -2.25
		2.25 0.5726227730170822 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57262277301708209 2.25
		-5.7491853075117283e-016 1.1452455460341644 -2.25
		2.25 1.1452455460341644 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1452455460341644 2.25
		-2.25 1.1452455460341644 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1452455460341644 -2.25
		2.25 1.1452455460341644 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1452455460341644 2.25
		-5.7491853075117283e-016 1.7178683190512465 -2.25
		2.25 1.7178683190512465 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7178683190512465 2.25
		-2.25 1.7178683190512465 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7178683190512465 -2.25
		2.25 1.7178683190512465 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7178683190512465 2.25
		
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
	setAttr ".rst" -type "double3" -19.844066586232827 44.988238546258863 -3.3504594827425955 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.4868995751603507e-014 2.8730393805691539 
		2.0122399114274587e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.0905202623650788e-014 -1.1088457239086671e-014 
		2.2263882770244611e-014 ;
	setAttr ".tg[1].tot" -type "double3" 1.4210854715202004e-014 2.8730393805747303 
		-3.0036463127463732e-011 ;
	setAttr ".tg[1].tor" -type "double3" -1.7890620083232284e-015 -8.5353166647087342e-015 
		2.5444437451708134e-014 ;
	setAttr ".lr" -type "double3" 163.76326948359826 -0.88754951250240344 -25.246405347552241 ;
	setAttr ".rst" -type "double3" 17.533186617593891 74.35440882884825 -16.370565119427077 ;
	setAttr ".rsrr" -type "double3" 163.71113574340475 -7.7330484731412863 -24.553826745412909 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rkneeControl" -p "main";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -6.9041500000000013 24.014100000000013 -1.4395999999999984 ;
	setAttr ".sp" -type "double3" -6.9041500000000013 24.014100000000013 -1.4395999999999984 ;
	setAttr ".hdl" -type "double3" -6.9041500000000013 24.014100000000013 -1.4395999999999984 ;
	setAttr ".dh" yes;
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
		-7.9041500000000013 24.014100000000013 -1.4395999999999987
		-7.9041500000000013 24.014100000000013 -1.4395999999999987
		-7.9041500000000013 24.014100000000013 -1.4395999999999987
		-7.9041500000000013 24.014100000000013 -1.4395999999999987
		-7.9041500000000013 24.014100000000013 -1.4395999999999987
		-6.9041500000000013 24.014100000000013 -2.4395999999999987
		-6.9041500000000013 23.014100000000013 -1.4395999999999984
		-6.9041500000000013 24.014100000000013 -0.43959999999999844
		-6.9041500000000013 25.014100000000013 -1.4395999999999982
		-6.9041500000000013 24.014100000000013 -2.4395999999999987
		-5.9041500000000013 24.014100000000013 -1.4395999999999982
		-5.9041500000000013 24.014100000000013 -1.4395999999999982
		-5.9041500000000013 24.014100000000013 -1.4395999999999982
		-5.9041500000000013 24.014100000000013 -1.4395999999999982
		-5.9041500000000013 24.014100000000013 -1.4395999999999982
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "ankleLift" -ln "ankleLift" -min 0 -max 55 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "rFootControl" -ln "rFootControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 0 -16.289133985840134 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8536829113927347 5.9939200000000046 -2.9394932517208261 ;
	setAttr ".rpt" -type "double3" 1.1798829113927329 0 -2.3653267482791729 ;
	setAttr ".sp" -type "double3" -8.8536829113927347 5.9939200000000046 -2.9394932517208261 ;
	setAttr ".hdl" -type "double3" -8.8536829113927347 5.9939200000000046 -2.9394932517208261 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".ankleLift";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
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
		-11.702636768013587 5.9939200000000046 -2.9394932517208265
		-11.702636768013587 5.9939200000000046 -2.9394932517208265
		-11.702636768013587 5.9939200000000046 -2.9394932517208265
		-11.702636768013587 5.9939200000000046 -2.9394932517208265
		-11.702636768013587 5.9939200000000046 -2.9394932517208265
		-10.278159839703161 1.3353145657733272 -6.2223385028311906
		-10.278159839703161 1.3353145657733272 2.2969148763643394
		-10.278159839703161 10.652525434226682 2.2969148763643394
		-10.278159839703161 10.652525434226682 -6.2223385028311906
		-10.278159839703161 1.3353145657733272 -6.2223385028311906
		-7.4292059830823085 1.3353145657733263 -6.2223385028311906
		-7.4292059830823085 1.3353145657733272 2.2969148763643394
		-7.4292059830823085 10.652525434226682 2.2969148763643394
		-7.4292059830823085 10.652525434226682 -6.2223385028311906
		-7.4292059830823085 1.3353145657733272 -6.2223385028311906
		-6.0047290547718823 5.9939200000000046 -2.9394932517208261
		-6.0047290547718823 5.9939200000000046 -2.9394932517208261
		-6.0047290547718823 5.9939200000000046 -2.9394932517208261
		-6.0047290547718823 5.9939200000000046 -2.9394932517208261
		-6.0047290547718823 5.9939200000000046 -2.9394932517208261
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -7.6738 5.9939199999999966 -5.30482 ;
	setAttr ".sp" -type "double3" -7.6738 5.9939199999999966 -5.30482 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -7.6738 5.9939199999999966 -5.30482 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -127.52984512741547 -1.4054403976936916 -1.8288266487062461 ;
	setAttr ".rp" -type "double3" -0.70976369818705809 9.0599523702183902 0.38605528211874729 ;
	setAttr ".sp" -type "double3" -0.70976369818705809 9.0599523702183902 0.38605528211874729 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" -0.70976369818705809 9.0599523702183902 0.38605528211874729 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" 0 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" -2.9999999999999982 6.8832066097850483e-016 -1.3322676295501878e-015 ;
	setAttr ".sp" -type "double3" -2.9999999999999982 6.8832066097850483e-016 -1.3322676295501878e-015 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.9999999999999982 6.8832066097850483e-016 -1.3322676295501878e-015 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" 0 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" 5.6979077132417038 5.2642523402196939e-016 0 ;
	setAttr ".sp" -type "double3" 5.6979077132417038 5.2642523402196939e-016 0 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 5.6979077132417038 5.2642523402196939e-016 0 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" 1.0593375115320381e-030 0 0 ;
	setAttr ".rp" -type "double3" -2.6979077132417091 3.7889107258583096e-016 -9.8264468372498115 ;
	setAttr ".sp" -type "double3" -2.6979077132417091 3.7889107258583096e-016 -9.8264468372498115 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -2.6979077132417091 3.7889107258583096e-016 -9.8264468372498115 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 1.0593375115320381e-030 0 0 ;
	setAttr ".rp" -type "double3" 5.9952043329758453e-015 0.46758417848521472 16.064540334679336 ;
	setAttr ".sp" -type "double3" 5.9952043329758453e-015 0.46758417848521472 16.064540334679336 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 5.9952043329758453e-015 0.46758417848521472 16.064540334679336 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 89.999999999999901 -2.3063388159571296 1.4135950993719111e-030 ;
	setAttr ".rp" -type "double3" 0.71688273663700686 0.16637406524046239 -6.4005952308174798 ;
	setAttr ".sp" -type "double3" 0.71688273663700686 0.16637406524046239 -6.4005952308174798 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.71688273663700686 0.16637406524046239 -6.4005952308174798 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 37.552278315219986 0 0 ;
	setAttr ".rp" -type "double3" 1.1224784191021797e-006 -6.7561940617627751 -5.1940110000000042 ;
	setAttr ".sp" -type "double3" 1.1224784191021797e-006 -6.7561940617627751 -5.1940110000000042 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 1.1224784191021797e-006 -6.7561940617627751 -5.1940110000000042 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.139040113888699 2.5232266939769561 -1.6549506397789249 ;
	setAttr ".r" -type "double3" -126.42427551514827 -9.843129573440736 -13.043446391922037 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -6.9683272398971381 0.22582813053685241 -5.171162894161986 ;
	setAttr ".rpt" -type "double3" -1.1707128739915644 -2.7490548245138124 6.8261135339409105 ;
	setAttr ".sp" -type "double3" -6.9683272592642123 0.22582812804165808 -5.1711628996201817 ;
	setAttr ".spt" -type "double3" 0 5.5511151231257839e-017 -8.8817841970012543e-016 ;
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
	setAttr ".rst" -type "double3" -1.7613776047937302 11.318778388243514 14.654779920219298 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.6967470163114626 0.75382275370635965 -10.620205637024217 ;
	setAttr ".r" -type "double3" -6.7650574334924765e-015 13.982795169883023 8.959382272190933e-015 ;
	setAttr ".rp" -type "double3" -7.7926258951488148 -0.58744868846589537 2.408028031626662 ;
	setAttr ".rpt" -type "double3" 0.8127616154743561 0 1.8115823745800754 ;
	setAttr ".sp" -type "double3" -7.792625895148813 -0.58744868846589537 2.4080280316266593 ;
	setAttr ".pv" -type "double3" 1.9983798904012331 -1.6817077746295006e-007 0.080484865906153225 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 89.999999999999901 -2.3063388159571296 1.4135950993719111e-030 ;
	setAttr ".rp" -type "double3" 0.71688273663701219 0.63395824372567711 9.6639451038618578 ;
	setAttr ".sp" -type "double3" 0.71688273663701219 0.63395824372567711 9.6639451038618578 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 0.71688273663701219 0.63395824372567711 9.6639451038618578 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -89.999999999999901 5.649800061504203e-030 -2.306338815957127 ;
	setAttr ".rp" -type "double3" -0.45872711888249995 6.4242594590546709 0.16637406524047443 ;
	setAttr ".sp" -type "double3" -0.45872711888249995 6.4242594590546709 0.16637406524047443 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -0.45872711888249995 6.4242594590546709 0.16637406524047443 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.495029625345615 -0.34717457340169233 -8.6202227207256108 ;
	setAttr ".r" -type "double3" -6.839661278163943e-015 13.982795169883026 1.3289329924859319e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -7.8853504820365838 0.51354863864215239 6.7194395571325174 ;
	setAttr ".rpt" -type "double3" 1.8572778235699814 0 1.7062331288172055 ;
	setAttr ".sp" -type "double3" -7.8853504820365838 0.51354863864215239 6.7194395571325094 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-015 2.2204460492503141e-016 
		1.7763568394002509e-015 ;
	setAttr ".pv" -type "double3" 1.9983801891128765 3.0630044108478377e-009 0.080477448774083638 ;
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
	setAttr ".lr" -type "double3" -89.999999999999901 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999901 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" 0.71688273663700874 0.63395824372567522 9.6639451038618596 ;
	setAttr ".r" -type "double3" -6.5699194334303271e-015 -2.3063388159571345 8.0207854050924197e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rToeControl" -p "rToeControlZeroGroup";
	addAttr -ci true -sn "rToeControl" -ln "rToeControl" -at "message";
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
		-2.8489538566208523 -3.7004810525684676e-016 -6.1674684209474439e-016
		-2.8489538566208523 -3.7004810525684676e-016 -6.1674684209474439e-016
		-2.8489538566208523 -3.7004810525684676e-016 -6.1674684209474439e-016
		-2.8489538566208523 -3.7004810525684676e-016 -6.1674684209474439e-016
		-2.8489538566208523 -3.7004810525684676e-016 -6.1674684209474439e-016
		-1.4244769283104257 -0.1635834431943366 -0.32014388405341232
		-1.4244769283104259 -0.1635834431943366 4.8724173789040215
		-1.4244769283104262 0.16358344319433638 4.8724173789040215
		-1.4244769283104259 0.1635834431943366 -0.32014388405341232
		-1.4244769283104257 -0.16358344319433615 -0.32014388405341276
		1.4244769283104264 -0.16358344319433726 -0.32014388405341232
		1.4244769283104262 -0.16358344319433638 4.8724173789040224
		1.4244769283104259 0.16358344319433704 4.8724173789040215
		1.4244769283104262 0.16358344319433682 -0.32014388405341276
		1.4244769283104264 -0.16358344319433682 -0.32014388405341276
		2.8489538566208523 -4.3579075225835829e-016 -1.8909201542046034e-016
		2.8489538566208523 -4.3579075225835829e-016 -1.8909201542046034e-016
		2.8489538566208523 -4.3579075225835829e-016 -1.8909201542046034e-016
		2.8489538566208523 -4.3579075225835829e-016 -1.8909201542046034e-016
		2.8489538566208523 -4.3579075225835829e-016 -1.8909201542046034e-016
		
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -9.479123504751954e-015 
		-7.4331651944703479e-016 ;
	setAttr ".tg[0].tor" -type "double3" 127.55227831521987 -2.2263882770244617e-014 
		1.5902773407317588e-015 ;
	setAttr ".lr" -type "double3" 127.55227831521987 -16.289133985840134 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -1.7763568394002505e-015 
		8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 127.55227831521987 -16.289133985840134 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_gunPackControlGroup" -p "main";
createNode transform -n "Ref:prp_gunPackControl" -p "Ref:prp_gunPackControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_gunPackControlShape" -p "Ref:prp_gunPackControl";
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
createNode parentConstraint -n "Ref:prp_gunPackControlGroup_parentConstraint1" -p
		 "Ref:prp_gunPackControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -2.4377867960235391 -4.3542274411783808 5.7247488219410254 ;
	setAttr ".tg[0].tor" -type "double3" -176.61834766712909 1.5902773407317584e-015 
		-1.6670644476831255e-015 ;
	setAttr ".tg[1].tot" -type "double3" -2.4381875665856061 -4.3496814138814131 5.7278768875518971 ;
	setAttr ".tg[1].tor" -type "double3" -176.49188041520199 -1.7882300421692734e-005 
		0.016203084284265989 ;
	setAttr ".lr" -type "double3" -0.027576941410071321 -7.2882294261019185 0.43300057803258868 ;
	setAttr ".rst" -type "double3" -1.6905085182383264 68.703106012381539 -10.735163910874924 ;
	setAttr ".rsrr" -type "double3" -0.027576941161296251 -7.2882294260985168 0.43300057806706638 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bulletsControlGroup" -p "main";
createNode transform -n "Ref:prp_bulletsControl" -p "Ref:prp_bulletsControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bulletsControlShape" -p "Ref:prp_bulletsControl";
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
createNode parentConstraint -n "Ref:prp_bulletsControlGroup_parentConstraint1" -p
		 "Ref:prp_bulletsControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -6.0943877171467129 0.62916319598980408 -6.4633644572819948 ;
	setAttr ".tg[0].tor" -type "double3" -177.78811699990825 3.0860845001058914 0.42515570252688001 ;
	setAttr ".tg[1].tot" -type "double3" -6.0962014342237021 0.65956523966819702 -6.4492081629994793 ;
	setAttr ".tg[1].tor" -type "double3" -177.66146980989055 3.0851206696649309 0.44817596101864249 ;
	setAttr ".lr" -type "double3" -1.1712277485010665 -10.394064719409501 0.18863796960913812 ;
	setAttr ".rst" -type "double3" -6.8663536658353967 64.414089836047935 1.1631546717396519 ;
	setAttr ".rsrr" -type "double3" -1.1712277482602895 -10.394064719399832 0.18863796970915003 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "RefRNfosterParent1";
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
	setAttr ".rst" -type "double3" 0 47.645506901689565 -1.7521305385548587 ;
	setAttr -k on ".w0";
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
	setAttr ".lr" -type "double3" -169.19215179536397 0 0 ;
	setAttr ".o" -type "double3" 169.19215179536397 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_vest_front_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_vest_front_R_ctrlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 0 2.3363355694527854e-010 -2.6793145480041858e-010 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902771511559272e-015 5.2277931392936673e-015 
		7.4323645277861852e-014 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" -10.1079 0.60522246970866433 1.6784776488455462 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_vest_back_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_vest_back_R_ctrlW0" -bt "W000" -dv 1 
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 0 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902771511559272e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" -7.4472499999999995 2.973167071548211 6.4164125072069718 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_vest_back_M_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_vest_back_M_ctrlW0" -bt "W000" -dv 1 
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
	setAttr ".tg[0].tot" -type "double3" 0 1.8573516058495443e-009 -3.2145504036407146e-009 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 2.3653837304870393 8.9642568899024972 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_vest_back_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_vest_back_L_ctrlW0" -bt "W000" -dv 1 
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
	setAttr ".tg[0].tot" -type "double3" -1.1861711612937142e-010 -2.0766393049598264e-009 
		1.5200285474747943e-011 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" 7.4472466508813833 2.9732098376628073 6.416416904518055 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_vest_front_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_vest_front_L_ctrlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 3.8619045739096691e-009 3.1891289609120577e-009 
		-4.5965586892293686e-010 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" 10.107890503861904 0.605266226817335 1.6784855183171894 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pouch_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pouchControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".lr" -type "double3" 1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.9680576324462891 3.9457527562272929 0.17062332090550925 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 0.15237981604672143 -13.309462351432867 -1.3060190213786147 ;
	setAttr ".rsrr" -type "double3" -10.847641949423179 -14.530217246934473 -5.4251644252345637 ;
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
	setAttr ".rsrr" -type "double3" 12.245633744043849 14.483649859009654 5.5505779373070228 ;
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
	setAttr ".lr" -type "double3" -0.59942797315415408 7.1647509633859299 11.24488134170651 ;
	setAttr ".rsrr" -type "double3" -3.0066180973209805e-015 1.1927080055488188e-015 
		-1.1927080055488188e-015 ;
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
	setAttr ".lr" -type "double3" 0.15237896423223812 -13.309313044482618 -1.3060037096724624 ;
	setAttr ".rsrr" -type "double3" 1.9878466759146985e-016 6.3611093629270335e-015 
		7.9513867036587919e-016 ;
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
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -0.59943180291740539 7.1646719590266752 11.244754107541564 ;
	setAttr ".rsrr" -type "double3" 1.5753684906623981e-014 -1.1927080055488194e-015 
		2.3854160110976376e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.7493050748049344e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587935e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.5505204072134644e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.7271556449509617 1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 3.975693351829396e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1131941385122315e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -7.1054273576010019e-015 2.6645352591003757e-015 ;
	setAttr ".tg[1].tor" -type "double3" 1.0336802714756432e-014 0 0 ;
	setAttr ".lr" -type "double3" -1.1131941385122309e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.3892318165218569 0 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
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
	setAttr ".tg[0].tot" -type "double3" 1.1102230246251565e-016 1.4210854715202004e-014 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.0336802714756432e-014 -1.5902773407317584e-015 
		-1.3688874462959205e-015 ;
	setAttr ".tg[1].tot" -type "double3" -1.1102230246251565e-016 1.4210854715202004e-014 
		-1.4693364898271951e-017 ;
	setAttr ".tg[1].tor" -type "double3" 9.541664044390555e-015 -1.1131941385122309e-014 
		1.2559859274230982e-015 ;
	setAttr ".lr" -type "double3" 1.2640856574759266e-014 7.3010112540042433 1.4413971712401527e-015 ;
	setAttr ".rst" -type "double3" -1.7161573859753877e-016 -6.2016065699538103 -2.6645352591003757e-015 ;
	setAttr ".rsrr" -type "double3" 6.8128592518683612e-015 7.3010112540042478 6.3384716716816009e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullets_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bulletsControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -1.3475913723874779 11.44694632573141 -1.1195187276575125 ;
	setAttr ".rst" -type "double3" -6.0943877171467111 0.62916319598980408 -6.4633644572819939 ;
	setAttr ".rsrr" -type "double3" -1.3475913723874777 11.446946325731405 -1.1195187276575118 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_gunPack_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_gunPackControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -2.4377867960235391 -4.3542274411783808 5.7247488219410299 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-016 1.4207580662401419e-014 
		-1.7904033523109024e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.2835388689570095e-014 2.3854160110976376e-015 
		-2.1866313435061676e-015 ;
	setAttr ".tg[1].tot" -type "double3" -1.1102230246251565e-016 1.4134011506982331e-018 
		6.0638476898306169e-018 ;
	setAttr ".tg[1].tor" -type "double3" 1.3517357396219949e-014 -5.5659706925611543e-015 
		2.9817700138720468e-015 ;
	setAttr ".lr" -type "double3" -2.7034714792439894e-014 0 0 ;
	setAttr ".rst" -type "double3" -7.6735341486683026e-017 -5.8012498666159757 1.780749715487662e-015 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -1.033680271475643e-013 1.1529510720305263e-014 1.5703988739726101e-014 ;
	setAttr ".rsrr" -type "double3" -2.4649298781342248e-014 1.3914926731402897e-014 
		4.9547078397173843e-014 ;
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
	setAttr ".lr" -type "double3" -0.086607260792230301 -6.721062852083084 1.4746295490675421 ;
	setAttr ".rsrr" -type "double3" 1.5703988739726114e-014 3.8763010180336649e-015 
		-3.2849166319490382e-014 ;
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
	setAttr ".lr" -type "double3" 2.7988881196878945e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -4.4408920985006262e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.9756933518293952e-015 3.0215269473903408e-014 
		9.9392333795734899e-016 ;
	setAttr ".lr" -type "double3" 1.6538884343610271e-013 -1.8327946351933529e-013 9.8597195125368764e-014 ;
	setAttr ".rst" -type "double3" 0.22800603972950739 4.5036540044260853 3.2207687758682448 ;
	setAttr ".rsrr" -type "double3" -5.5659706925611528e-015 -2.7432284127622831e-014 
		-6.361109362927032e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-015 -3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.6791648310733881e-014 3.8166656177562208e-014 
		5.1684013573782161e-014 ;
	setAttr ".lr" -type "double3" 8.2694421718051442e-014 0 0 ;
	setAttr ".rst" -type "double3" -4.8841723829795569e-006 2.339722122991351 7.4572262580119286e-005 ;
	setAttr ".rsrr" -type "double3" -5.0888874903416268e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-015 3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.0430538947806815e-014 3.816665617756222e-014 
		5.7249984266343321e-014 ;
	setAttr ".lr" -type "double3" 6.6791648310733855e-014 0 0 ;
	setAttr ".rst" -type "double3" 8.6294052854540837e-006 1.6540105994211487 -5.5027563810483571e-005 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -7.2164496600635175e-015 0 ;
	setAttr ".tg[0].tor" -type "double3" -4.7310750886769802e-014 1.7493050748049347e-014 
		-4.6714396883995417e-015 ;
	setAttr ".lr" -type "double3" 8.2694421718051341e-014 -1.0813885916975966e-013 1.0813885916975953e-013 ;
	setAttr ".rst" -type "double3" 0.39437431383445087 5.3523703013953821 1.8964002655305534 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635174e-014 -1.5902773407317587e-014 
		3.1805546814635132e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.3322676295501878e-015 -1.0658141036401503e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270367e-015 7.9513867036587967e-015 
		-5.5659706925611575e-015 ;
	setAttr ".lr" -type "double3" 5.7249984266343308e-014 0 0 ;
	setAttr ".rst" -type "double3" -4.0996827177508521e-006 2.377280386965269 1.7157868718697955e-005 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.1086244689504383e-015 -1.7763568394002505e-014 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463518e-014 1.749305074804935e-014 
		9.5416640443905566e-015 ;
	setAttr ".lr" -type "double3" 8.587497639951495e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.1796623495571339e-007 2.1659834807483751 1.4628849921649589e-005 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.5543122344752192e-015 -5.3290705182007514e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.9878466759146974e-014 6.3611093629270335e-015 
		3.0811623476677822e-015 ;
	setAttr ".lr" -type "double3" 1.1290969119195473e-013 -1.4292617599826681e-013 7.9513867036587771e-014 ;
	setAttr ".rst" -type "double3" -0.17926834147126769 5.7393969016516291 0.21120415777575963 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-014 3.5781240166464568e-015 
		-6.3611093629270335e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 8.8817841970012523e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244617e-014 -9.5416640443905535e-015 
		3.4986101496098688e-014 ;
	setAttr ".lr" -type "double3" 8.2694421718051442e-014 0 0 ;
	setAttr ".rst" -type "double3" -4.4702558481546362e-006 2.8103492720865377 -2.1513227590475026e-005 ;
	setAttr ".rsrr" -type "double3" -1.9083328088781097e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.1102230246251565e-015 -3.5527136788005009e-015 
		1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-014 -8.7465253740246719e-015 
		-2.8624992133171654e-014 ;
	setAttr ".lr" -type "double3" 1.526666247102488e-013 0 0 ;
	setAttr ".rst" -type "double3" -3.8066483387666494e-006 2.5003040759111723 1.916933311818525e-005 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635155e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.5543122344752192e-015 -5.1070259132757201e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416268e-014 6.9574633657014475e-015 
		-9.032278333687414e-015 ;
	setAttr ".lr" -type "double3" 4.325554366790382e-013 -1.618107194194566e-013 4.6118042881220383e-014 ;
	setAttr ".rst" -type "double3" -0.23762997622439741 5.3616086246367374 -1.5056151972348548 ;
	setAttr ".rsrr" -type "double3" 3.0215269473903427e-014 -1.3517357396219952e-014 
		4.7708320221952736e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.3037127760971998e-015 -1.2434497875801753e-014 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -4.4527765540489247e-014 -2.3257806108201989e-014 
		-4.3136272867348989e-014 ;
	setAttr ".lr" -type "double3" 1.3358329662146771e-013 0 0 ;
	setAttr ".rst" -type "double3" 6.5266892213533545e-006 2.7893366197044074 1.8256505295966008e-005 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.6637359812630166e-015 -1.7763568394002505e-014 
		5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708147e-014 4.6714396883995425e-015 
		-7.7526020360673251e-015 ;
	setAttr ".lr" -type "double3" 7.9513867036587922e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.9373877524486716e-007 1.8047102943924518 1.4622738074621111e-005 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.2439329000766293e-015 4.6629367034256575e-015 
		-2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 8.4483483726374699e-016 4.3732626870123336e-015 
		-1.0336802714756426e-014 ;
	setAttr ".lr" -type "double3" 1.4869093135841961e-013 -1.1489753786786933e-013 -1.6588580510508173e-013 ;
	setAttr ".rst" -type "double3" 1.8598139432145793 2.648315930595496 -2.2072715510654399 ;
	setAttr ".rsrr" -type "double3" -8.1501713712502619e-015 1.1927080055488182e-015 
		-8.5477407064332035e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 9.96425164601078e-015 1.3766765505351941e-014 
		-4.6629367034256575e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.5753684906623984e-014 2.3059021440610504e-014 
		-3.5781240166464568e-014 ;
	setAttr ".lr" -type "double3" -4.3732626870123355e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.1316217207356658e-005 2.0499891077622485 -1.3490876517030514e-006 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.2823075934420558e-014 2.708944180085382e-014 
		1.1768364061026659e-014 ;
	setAttr ".tg[0].tor" -type "double3" -2.6090487621380421e-014 1.1529510720305252e-014 
		-7.9513867036587919e-016 ;
	setAttr ".lr" -type "double3" 4.9298597562684508e-013 0 0 ;
	setAttr ".rst" -type "double3" 2.6814927526430665e-005 1.29143639387909 1.5668413451352947e-005 ;
	setAttr ".rsrr" -type "double3" 3.3395824155366928e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -1.2722218725854067e-014 3.1805546814635231e-015 5.7249984266343308e-014 ;
	setAttr ".rsrr" -type "double3" -1.1927080055488186e-014 7.9513867036587982e-015 
		5.7249984266343308e-014 ;
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
	setAttr ".lr" -type "double3" -0.044947007787449221 4.8490818739629011 -1.0615052895952704 ;
	setAttr ".rsrr" -type "double3" -1.9878466759147036e-016 5.1684013573782151e-015 
		-1.3014183706379039e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.7715611723760958e-016 -1.9984014443252818e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.6973948172013381e-014 -2.3059021440610507e-014 
		7.1313999498439813e-015 ;
	setAttr ".lr" -type "double3" 2.3854160110976411e-015 -1.9083328088781101e-014 -2.2263882770244617e-014 ;
	setAttr ".rst" -type "double3" -0.22806874992987147 -4.5036248813108015 -3.2207629530829971 ;
	setAttr ".rsrr" -type "double3" -3.0215269473903408e-014 1.6300342742500521e-014 
		-1.2722218725854073e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.3306690738754696e-016 -7.1054273576010019e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.8597195125369029e-014 4.5322904210855146e-014 
		2.3635496976625776e-013 ;
	setAttr ".lr" -type "double3" 1.3358329662146771e-013 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -2.33978762539539 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 1.3358329662146771e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 3.5527136788005009e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.6220828875463949e-013 1.5306419404543186e-014 
		1.1648781520860139e-013 ;
	setAttr ".lr" -type "double3" 1.9401383556927451e-013 0 0 ;
	setAttr ".rst" -type "double3" -6.6613381477509392e-016 -1.6540353085206441 0 ;
	setAttr ".rsrr" -type "double3" 4.7708320221952748e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.4424906541753444e-015 9.1732177409653559e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.2120208622334314e-016 1.1927080055488192e-015 
		1.3051649957204389e-014 ;
	setAttr ".lr" -type "double3" -2.8624992133171648e-014 -1.510763473695171e-014 -2.5444437451708131e-014 ;
	setAttr ".rst" -type "double3" -0.3944172994845303 -5.3524067323208167 -1.8964145827076582 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952759e-015 3.9756933518293952e-015 
		-1.5902773407317584e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 1.0658141036401503e-014 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416294e-014 -1.3219180394832747e-014 
		5.1684013573782167e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.8318679906315083e-015 -2.3772730707709839 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 5.0888874903416268e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 1.0658141036401503e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270367e-015 8.8459177078204116e-015 
		-9.4422717105948232e-015 ;
	setAttr ".rst" -type "double3" -3.8857805861880479e-016 -2.1659837705266973 0 ;
	setAttr ".rsrr" -type "double3" -7.6333312355124402e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -3.0253577421035516e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.6002165741113322e-014 -3.1010408144269313e-014 
		4.8826483977154802e-015 ;
	setAttr ".lr" -type "double3" -1.2483677124744303e-013 1.4312496066585754e-014 -6.3611093629270348e-014 ;
	setAttr ".rst" -type "double3" 0.17925003102961412 -5.7394825998835808 -0.21123444892927701 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 1.0535587382347899e-014 
		-6.3611093629270327e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 -1.7763568394002505e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 5.4069429584879807e-014 -2.9817700138720499e-014 
		4.3533842202531929e-014 ;
	setAttr ".lr" -type "double3" -9.5416640443905484e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.1102230246251565e-015 -2.8102891672536576 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -6.361109362927031e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 7.1054273576010019e-015 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 4.4527765540489247e-014 -2.5046868116525216e-014 
		3.5781240166464591e-015 ;
	setAttr ".lr" -type "double3" -4.1347210859025721e-014 0 0 ;
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 -2.5003157483780889 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 4.4527765540489235e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 5.5511151231257827e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.669791207768347e-014 -3.4986101496098688e-014 
		1.8884543421189634e-015 ;
	setAttr ".lr" -type "double3" -2.3218049174683685e-013 -1.9083328088781173e-014 
		-3.1805546814635142e-014 ;
	setAttr ".rst" -type "double3" 0.23758305569734262 -5.3616372155311058 1.5056047439304203 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 3.2203116149818095e-014 
		-1.5902773407317544e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-015 1.7763568394002505e-014 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.544443745170814e-014 -5.8840261607075068e-014 
		-2.544443745170814e-014 ;
	setAttr ".lr" -type "double3" -2.4808326515415425e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.7893525167565056 1.0658141036401503e-014 ;
	setAttr ".rsrr" -type "double3" -1.9083328088781097e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 1.5987211554602254e-014 
		5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-015 -2.5444437451708147e-014 
		1.2722218725854073e-014 ;
	setAttr ".lr" -type "double3" -2.3536104642830022e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -1.8047070524125495 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 4.9960036108132044e-016 
		2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" 4.2987184366655347e-015 -3.1805546814635168e-015 
		8.7465253740246703e-015 ;
	setAttr ".lr" -type "double3" -3.2401900817409578e-014 -1.2722218725854067e-014 
		4.9696166897867814e-016 ;
	setAttr ".rst" -type "double3" -1.8598261096361028 -2.6483870293419871 2.2072421932056203 ;
	setAttr ".rsrr" -type "double3" -1.172829538789672e-014 5.9635400277440935e-015 
		-6.0629323615398293e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 9.5479180117763462e-015 6.7047062346503594e-015 
		8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" 5.277888225075082e-015 -1.9083328088781094e-014 
		1.2790550955338632e-014 ;
	setAttr ".lr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr ".rst" -type "double3" 7.1054273576010019e-015 -2.0499979152243442 4.8849813083506888e-015 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587888e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7319479184152442e-014 1.6486811915683575e-014 
		4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 4.4478069373591372e-015 3.180554681463516e-015 
		-5.2677936911739486e-015 ;
	setAttr ".lr" -type "double3" -3.3395824155366928e-014 0 0 ;
	setAttr ".rst" -type "double3" 7.1054273576010019e-015 -1.2914022887786183 -1.3322676295501878e-015 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976376e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -6.5598940305185035e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -4.7708320221952752e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -5.1684013573782151e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_hat_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_hatControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -2.7755575615628914e-016 -7.7323005724970173 2.5604518505417673e-015 ;
	setAttr -k on ".w0";
createNode lightLinker -n "lightLinker1";
	setAttr -s 2 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 675 ".phl";
	setAttr ".phl[7838]" 0;
	setAttr ".phl[7839]" 0;
	setAttr ".phl[7843]" 0;
	setAttr ".phl[7844]" 0;
	setAttr ".phl[7845]" 0;
	setAttr ".phl[9132]" 0;
	setAttr ".phl[9133]" 0;
	setAttr ".phl[9134]" 0;
	setAttr ".phl[9135]" 0;
	setAttr ".phl[9136]" 0;
	setAttr ".phl[9137]" 0;
	setAttr ".phl[9138]" 0;
	setAttr ".phl[9139]" 0;
	setAttr ".phl[9140]" 0;
	setAttr ".phl[9141]" 0;
	setAttr ".phl[9142]" 0;
	setAttr ".phl[9143]" 0;
	setAttr ".phl[9144]" 0;
	setAttr ".phl[9145]" 0;
	setAttr ".phl[9146]" 0;
	setAttr ".phl[9147]" 0;
	setAttr ".phl[9148]" 0;
	setAttr ".phl[9149]" 0;
	setAttr ".phl[9150]" 0;
	setAttr ".phl[9151]" 0;
	setAttr ".phl[9152]" 0;
	setAttr ".phl[9153]" 0;
	setAttr ".phl[9154]" 0;
	setAttr ".phl[9155]" 0;
	setAttr ".phl[9156]" 0;
	setAttr ".phl[9157]" 0;
	setAttr ".phl[9158]" 0;
	setAttr ".phl[9159]" 0;
	setAttr ".phl[9160]" 0;
	setAttr ".phl[9161]" 0;
	setAttr ".phl[9162]" 0;
	setAttr ".phl[9163]" 0;
	setAttr ".phl[9164]" 0;
	setAttr ".phl[9165]" 0;
	setAttr ".phl[9166]" 0;
	setAttr ".phl[9167]" 0;
	setAttr ".phl[9168]" 0;
	setAttr ".phl[9169]" 0;
	setAttr ".phl[9170]" 0;
	setAttr ".phl[9171]" 0;
	setAttr ".phl[9172]" 0;
	setAttr ".phl[9173]" 0;
	setAttr ".phl[9174]" 0;
	setAttr ".phl[9175]" 0;
	setAttr ".phl[9176]" 0;
	setAttr ".phl[9177]" 0;
	setAttr ".phl[9178]" 0;
	setAttr ".phl[9179]" 0;
	setAttr ".phl[9180]" 0;
	setAttr ".phl[9181]" 0;
	setAttr ".phl[9182]" 0;
	setAttr ".phl[9183]" 0;
	setAttr ".phl[9184]" 0;
	setAttr ".phl[9185]" 0;
	setAttr ".phl[9186]" 0;
	setAttr ".phl[9187]" 0;
	setAttr ".phl[9188]" 0;
	setAttr ".phl[9189]" 0;
	setAttr ".phl[9190]" 0;
	setAttr ".phl[9191]" 0;
	setAttr ".phl[9192]" 0;
	setAttr ".phl[9193]" 0;
	setAttr ".phl[9194]" 0;
	setAttr ".phl[9195]" 0;
	setAttr ".phl[9196]" 0;
	setAttr ".phl[9197]" 0;
	setAttr ".phl[9198]" 0;
	setAttr ".phl[9199]" 0;
	setAttr ".phl[9200]" 0;
	setAttr ".phl[9201]" 0;
	setAttr ".phl[9202]" 0;
	setAttr ".phl[9203]" 0;
	setAttr ".phl[9204]" 0;
	setAttr ".phl[9205]" 0;
	setAttr ".phl[9206]" 0;
	setAttr ".phl[9207]" 0;
	setAttr ".phl[9208]" 0;
	setAttr ".phl[9209]" 0;
	setAttr ".phl[9210]" 0;
	setAttr ".phl[9211]" 0;
	setAttr ".phl[9212]" 0;
	setAttr ".phl[9213]" 0;
	setAttr ".phl[9214]" 0;
	setAttr ".phl[9215]" 0;
	setAttr ".phl[9216]" 0;
	setAttr ".phl[9217]" 0;
	setAttr ".phl[9218]" 0;
	setAttr ".phl[9219]" 0;
	setAttr ".phl[9220]" 0;
	setAttr ".phl[9221]" 0;
	setAttr ".phl[9222]" 0;
	setAttr ".phl[9223]" 0;
	setAttr ".phl[9224]" 0;
	setAttr ".phl[9225]" 0;
	setAttr ".phl[9226]" 0;
	setAttr ".phl[9227]" 0;
	setAttr ".phl[9228]" 0;
	setAttr ".phl[9229]" 0;
	setAttr ".phl[9230]" 0;
	setAttr ".phl[9231]" 0;
	setAttr ".phl[9232]" 0;
	setAttr ".phl[9233]" 0;
	setAttr ".phl[9234]" 0;
	setAttr ".phl[9235]" 0;
	setAttr ".phl[9236]" 0;
	setAttr ".phl[9237]" 0;
	setAttr ".phl[9238]" 0;
	setAttr ".phl[9239]" 0;
	setAttr ".phl[9240]" 0;
	setAttr ".phl[9241]" 0;
	setAttr ".phl[9242]" 0;
	setAttr ".phl[9243]" 0;
	setAttr ".phl[9244]" 0;
	setAttr ".phl[9245]" 0;
	setAttr ".phl[9246]" 0;
	setAttr ".phl[9247]" 0;
	setAttr ".phl[9248]" 0;
	setAttr ".phl[9249]" 0;
	setAttr ".phl[9250]" 0;
	setAttr ".phl[9251]" 0;
	setAttr ".phl[9252]" 0;
	setAttr ".phl[9253]" 0;
	setAttr ".phl[9254]" 0;
	setAttr ".phl[9255]" 0;
	setAttr ".phl[9256]" 0;
	setAttr ".phl[9257]" 0;
	setAttr ".phl[9258]" 0;
	setAttr ".phl[9259]" 0;
	setAttr ".phl[9260]" 0;
	setAttr ".phl[9261]" 0;
	setAttr ".phl[9262]" 0;
	setAttr ".phl[9263]" 0;
	setAttr ".phl[9264]" 0;
	setAttr ".phl[9265]" 0;
	setAttr ".phl[9266]" 0;
	setAttr ".phl[9267]" 0;
	setAttr ".phl[9268]" 0;
	setAttr ".phl[9269]" 0;
	setAttr ".phl[9270]" 0;
	setAttr ".phl[9271]" 0;
	setAttr ".phl[9272]" 0;
	setAttr ".phl[9273]" 0;
	setAttr ".phl[9274]" 0;
	setAttr ".phl[9275]" 0;
	setAttr ".phl[9276]" 0;
	setAttr ".phl[9277]" 0;
	setAttr ".phl[9278]" 0;
	setAttr ".phl[9279]" 0;
	setAttr ".phl[9280]" 0;
	setAttr ".phl[9281]" 0;
	setAttr ".phl[9282]" 0;
	setAttr ".phl[9283]" 0;
	setAttr ".phl[9284]" 0;
	setAttr ".phl[9285]" 0;
	setAttr ".phl[9286]" 0;
	setAttr ".phl[9287]" 0;
	setAttr ".phl[9288]" 0;
	setAttr ".phl[9289]" 0;
	setAttr ".phl[9290]" 0;
	setAttr ".phl[9291]" 0;
	setAttr ".phl[9292]" 0;
	setAttr ".phl[9293]" 0;
	setAttr ".phl[9294]" 0;
	setAttr ".phl[9295]" 0;
	setAttr ".phl[9296]" 0;
	setAttr ".phl[9297]" 0;
	setAttr ".phl[9298]" 0;
	setAttr ".phl[9299]" 0;
	setAttr ".phl[9300]" 0;
	setAttr ".phl[9301]" 0;
	setAttr ".phl[9302]" 0;
	setAttr ".phl[9303]" 0;
	setAttr ".phl[9304]" 0;
	setAttr ".phl[9305]" 0;
	setAttr ".phl[9306]" 0;
	setAttr ".phl[9307]" 0;
	setAttr ".phl[9308]" 0;
	setAttr ".phl[9309]" 0;
	setAttr ".phl[9310]" 0;
	setAttr ".phl[9311]" 0;
	setAttr ".phl[9312]" 0;
	setAttr ".phl[9313]" 0;
	setAttr ".phl[9314]" 0;
	setAttr ".phl[9315]" 0;
	setAttr ".phl[9316]" 0;
	setAttr ".phl[9317]" 0;
	setAttr ".phl[9318]" 0;
	setAttr ".phl[9319]" 0;
	setAttr ".phl[9320]" 0;
	setAttr ".phl[9321]" 0;
	setAttr ".phl[9322]" 0;
	setAttr ".phl[9323]" 0;
	setAttr ".phl[9324]" 0;
	setAttr ".phl[9325]" 0;
	setAttr ".phl[9326]" 0;
	setAttr ".phl[9327]" 0;
	setAttr ".phl[9328]" 0;
	setAttr ".phl[9329]" 0;
	setAttr ".phl[9330]" 0;
	setAttr ".phl[9331]" 0;
	setAttr ".phl[9332]" 0;
	setAttr ".phl[9333]" 0;
	setAttr ".phl[9334]" 0;
	setAttr ".phl[9335]" 0;
	setAttr ".phl[9336]" 0;
	setAttr ".phl[9337]" 0;
	setAttr ".phl[9338]" 0;
	setAttr ".phl[9339]" 0;
	setAttr ".phl[9340]" 0;
	setAttr ".phl[9341]" 0;
	setAttr ".phl[9342]" 0;
	setAttr ".phl[9343]" 0;
	setAttr ".phl[9344]" 0;
	setAttr ".phl[9345]" 0;
	setAttr ".phl[9346]" 0;
	setAttr ".phl[9347]" 0;
	setAttr ".phl[9348]" 0;
	setAttr ".phl[9349]" 0;
	setAttr ".phl[9350]" 0;
	setAttr ".phl[9351]" 0;
	setAttr ".phl[9352]" 0;
	setAttr ".phl[9353]" 0;
	setAttr ".phl[9354]" 0;
	setAttr ".phl[9355]" 0;
	setAttr ".phl[9356]" 0;
	setAttr ".phl[9357]" 0;
	setAttr ".phl[9358]" 0;
	setAttr ".phl[9359]" 0;
	setAttr ".phl[9360]" 0;
	setAttr ".phl[9361]" 0;
	setAttr ".phl[9362]" 0;
	setAttr ".phl[9363]" 0;
	setAttr ".phl[9364]" 0;
	setAttr ".phl[9365]" 0;
	setAttr ".phl[9366]" 0;
	setAttr ".phl[9367]" 0;
	setAttr ".phl[9368]" 0;
	setAttr ".phl[9369]" 0;
	setAttr ".phl[9370]" 0;
	setAttr ".phl[9371]" 0;
	setAttr ".phl[9372]" 0;
	setAttr ".phl[9373]" 0;
	setAttr ".phl[9374]" 0;
	setAttr ".phl[9375]" 0;
	setAttr ".phl[9376]" 0;
	setAttr ".phl[9377]" 0;
	setAttr ".phl[9378]" 0;
	setAttr ".phl[9379]" 0;
	setAttr ".phl[9380]" 0;
	setAttr ".phl[9381]" 0;
	setAttr ".phl[9382]" 0;
	setAttr ".phl[9383]" 0;
	setAttr ".phl[9384]" 0;
	setAttr ".phl[9385]" 0;
	setAttr ".phl[9386]" 0;
	setAttr ".phl[9387]" 0;
	setAttr ".phl[9388]" 0;
	setAttr ".phl[9389]" 0;
	setAttr ".phl[9390]" 0;
	setAttr ".phl[9391]" 0;
	setAttr ".phl[9392]" 0;
	setAttr ".phl[9393]" 0;
	setAttr ".phl[9394]" 0;
	setAttr ".phl[9395]" 0;
	setAttr ".phl[9396]" 0;
	setAttr ".phl[9397]" 0;
	setAttr ".phl[9398]" 0;
	setAttr ".phl[9399]" 0;
	setAttr ".phl[9400]" 0;
	setAttr ".phl[9401]" 0;
	setAttr ".phl[9402]" 0;
	setAttr ".phl[9403]" 0;
	setAttr ".phl[9404]" 0;
	setAttr ".phl[9405]" 0;
	setAttr ".phl[9406]" 0;
	setAttr ".phl[9407]" 0;
	setAttr ".phl[9408]" 0;
	setAttr ".phl[9409]" 0;
	setAttr ".phl[9410]" 0;
	setAttr ".phl[9411]" 0;
	setAttr ".phl[9412]" 0;
	setAttr ".phl[9413]" 0;
	setAttr ".phl[9414]" 0;
	setAttr ".phl[9415]" 0;
	setAttr ".phl[9416]" 0;
	setAttr ".phl[9417]" 0;
	setAttr ".phl[9418]" 0;
	setAttr ".phl[9419]" 0;
	setAttr ".phl[9420]" 0;
	setAttr ".phl[9421]" 0;
	setAttr ".phl[9422]" 0;
	setAttr ".phl[9423]" 0;
	setAttr ".phl[9424]" 0;
	setAttr ".phl[9425]" 0;
	setAttr ".phl[9426]" 0;
	setAttr ".phl[9427]" 0;
	setAttr ".phl[9428]" 0;
	setAttr ".phl[9429]" 0;
	setAttr ".phl[9430]" 0;
	setAttr ".phl[9431]" 0;
	setAttr ".phl[9432]" 0;
	setAttr ".phl[9433]" 0;
	setAttr ".phl[9434]" 0;
	setAttr ".phl[9435]" 0;
	setAttr ".phl[9436]" 0;
	setAttr ".phl[9437]" 0;
	setAttr ".phl[9438]" 0;
	setAttr ".phl[9439]" 0;
	setAttr ".phl[9440]" 0;
	setAttr ".phl[9441]" 0;
	setAttr ".phl[9442]" 0;
	setAttr ".phl[9443]" 0;
	setAttr ".phl[9444]" 0;
	setAttr ".phl[9445]" 0;
	setAttr ".phl[9446]" 0;
	setAttr ".phl[9447]" 0;
	setAttr ".phl[9448]" 0;
	setAttr ".phl[9449]" 0;
	setAttr ".phl[9450]" 0;
	setAttr ".phl[9451]" 0;
	setAttr ".phl[9452]" 0;
	setAttr ".phl[9453]" 0;
	setAttr ".phl[9454]" 0;
	setAttr ".phl[9455]" 0;
	setAttr ".phl[9456]" 0;
	setAttr ".phl[9457]" 0;
	setAttr ".phl[9458]" 0;
	setAttr ".phl[9459]" 0;
	setAttr ".phl[9460]" 0;
	setAttr ".phl[9461]" 0;
	setAttr ".phl[9462]" 0;
	setAttr ".phl[9463]" 0;
	setAttr ".phl[9464]" 0;
	setAttr ".phl[9465]" 0;
	setAttr ".phl[9466]" 0;
	setAttr ".phl[9467]" 0;
	setAttr ".phl[9468]" 0;
	setAttr ".phl[9469]" 0;
	setAttr ".phl[9470]" 0;
	setAttr ".phl[9471]" 0;
	setAttr ".phl[9472]" 0;
	setAttr ".phl[9473]" 0;
	setAttr ".phl[9474]" 0;
	setAttr ".phl[9475]" 0;
	setAttr ".phl[9476]" 0;
	setAttr ".phl[9477]" 0;
	setAttr ".phl[9478]" 0;
	setAttr ".phl[9479]" 0;
	setAttr ".phl[9480]" 0;
	setAttr ".phl[9481]" 0;
	setAttr ".phl[9482]" 0;
	setAttr ".phl[9483]" 0;
	setAttr ".phl[9484]" 0;
	setAttr ".phl[9485]" 0;
	setAttr ".phl[9486]" 0;
	setAttr ".phl[9487]" 0;
	setAttr ".phl[9488]" 0;
	setAttr ".phl[9489]" 0;
	setAttr ".phl[9490]" 0;
	setAttr ".phl[9491]" 0;
	setAttr ".phl[9492]" 0;
	setAttr ".phl[9493]" 0;
	setAttr ".phl[9494]" 0;
	setAttr ".phl[9495]" 0;
	setAttr ".phl[9496]" 0;
	setAttr ".phl[9497]" 0;
	setAttr ".phl[9498]" 0;
	setAttr ".phl[9499]" 0;
	setAttr ".phl[9500]" 0;
	setAttr ".phl[9501]" 0;
	setAttr ".phl[9502]" 0;
	setAttr ".phl[9503]" 0;
	setAttr ".phl[9504]" 0;
	setAttr ".phl[9505]" 0;
	setAttr ".phl[9506]" 0;
	setAttr ".phl[9507]" 0;
	setAttr ".phl[9508]" 0;
	setAttr ".phl[9509]" 0;
	setAttr ".phl[9510]" 0;
	setAttr ".phl[9511]" 0;
	setAttr ".phl[9512]" 0;
	setAttr ".phl[9513]" 0;
	setAttr ".phl[9514]" 0;
	setAttr ".phl[9515]" 0;
	setAttr ".phl[9516]" 0;
	setAttr ".phl[9517]" 0;
	setAttr ".phl[9518]" 0;
	setAttr ".phl[9519]" 0;
	setAttr ".phl[9520]" 0;
	setAttr ".phl[9521]" 0;
	setAttr ".phl[9522]" 0;
	setAttr ".phl[9523]" 0;
	setAttr ".phl[9524]" 0;
	setAttr ".phl[9525]" 0;
	setAttr ".phl[9526]" 0;
	setAttr ".phl[9527]" 0;
	setAttr ".phl[9528]" 0;
	setAttr ".phl[9529]" 0;
	setAttr ".phl[9530]" 0;
	setAttr ".phl[9531]" 0;
	setAttr ".phl[9532]" 0;
	setAttr ".phl[9533]" 0;
	setAttr ".phl[9534]" 0;
	setAttr ".phl[9535]" 0;
	setAttr ".phl[9536]" 0;
	setAttr ".phl[9537]" 0;
	setAttr ".phl[9538]" 0;
	setAttr ".phl[9539]" 0;
	setAttr ".phl[9540]" 0;
	setAttr ".phl[9541]" 0;
	setAttr ".phl[9542]" 0;
	setAttr ".phl[9543]" 0;
	setAttr ".phl[9544]" 0;
	setAttr ".phl[9545]" 0;
	setAttr ".phl[9546]" 0;
	setAttr ".phl[9547]" 0;
	setAttr ".phl[9548]" 0;
	setAttr ".phl[9549]" 0;
	setAttr ".phl[9550]" 0;
	setAttr ".phl[9551]" 0;
	setAttr ".phl[9552]" 0;
	setAttr ".phl[9553]" 0;
	setAttr ".phl[9554]" 0;
	setAttr ".phl[9555]" 0;
	setAttr ".phl[9556]" 0;
	setAttr ".phl[9557]" 0;
	setAttr ".phl[9558]" 0;
	setAttr ".phl[9559]" 0;
	setAttr ".phl[9560]" 0;
	setAttr ".phl[9561]" 0;
	setAttr ".phl[9562]" 0;
	setAttr ".phl[9563]" 0;
	setAttr ".phl[9564]" 0;
	setAttr ".phl[9565]" 0;
	setAttr ".phl[9566]" 0;
	setAttr ".phl[9567]" 0;
	setAttr ".phl[9568]" 0;
	setAttr ".phl[9569]" 0;
	setAttr ".phl[9570]" 0;
	setAttr ".phl[9571]" 0;
	setAttr ".phl[9572]" 0;
	setAttr ".phl[9573]" 0;
	setAttr ".phl[9574]" 0;
	setAttr ".phl[9575]" 0;
	setAttr ".phl[9576]" 0;
	setAttr ".phl[9577]" 0;
	setAttr ".phl[9578]" 0;
	setAttr ".phl[9579]" 0;
	setAttr ".phl[9580]" 0;
	setAttr ".phl[9581]" 0;
	setAttr ".phl[9582]" 0;
	setAttr ".phl[9583]" 0;
	setAttr ".phl[9584]" 0;
	setAttr ".phl[9585]" 0;
	setAttr ".phl[9586]" 0;
	setAttr ".phl[9587]" 0;
	setAttr ".phl[9588]" 0;
	setAttr ".phl[9589]" 0;
	setAttr ".phl[9590]" 0;
	setAttr ".phl[9591]" 0;
	setAttr ".phl[9592]" 0;
	setAttr ".phl[9593]" 0;
	setAttr ".phl[9594]" 0;
	setAttr ".phl[9595]" 0;
	setAttr ".phl[9596]" 0;
	setAttr ".phl[9597]" 0;
	setAttr ".phl[9598]" 0;
	setAttr ".phl[9599]" 0;
	setAttr ".phl[9600]" 0;
	setAttr ".phl[9601]" 0;
	setAttr ".phl[9602]" 0;
	setAttr ".phl[9603]" 0;
	setAttr ".phl[9604]" 0;
	setAttr ".phl[9605]" 0;
	setAttr ".phl[9606]" 0;
	setAttr ".phl[9607]" 0;
	setAttr ".phl[9608]" 0;
	setAttr ".phl[9609]" 0;
	setAttr ".phl[9610]" 0;
	setAttr ".phl[9611]" 0;
	setAttr ".phl[9612]" 0;
	setAttr ".phl[9613]" 0;
	setAttr ".phl[9614]" 0;
	setAttr ".phl[9615]" 0;
	setAttr ".phl[9616]" 0;
	setAttr ".phl[9617]" 0;
	setAttr ".phl[9618]" 0;
	setAttr ".phl[9619]" 0;
	setAttr ".phl[9620]" 0;
	setAttr ".phl[9621]" 0;
	setAttr ".phl[9622]" 0;
	setAttr ".phl[9623]" 0;
	setAttr ".phl[9624]" 0;
	setAttr ".phl[9625]" 0;
	setAttr ".phl[9626]" 0;
	setAttr ".phl[9627]" 0;
	setAttr ".phl[9628]" 0;
	setAttr ".phl[9629]" 0;
	setAttr ".phl[9630]" 0;
	setAttr ".phl[9631]" 0;
	setAttr ".phl[9632]" 0;
	setAttr ".phl[9633]" 0;
	setAttr ".phl[9634]" 0;
	setAttr ".phl[9635]" 0;
	setAttr ".phl[9636]" 0;
	setAttr ".phl[9637]" 0;
	setAttr ".phl[9638]" 0;
	setAttr ".phl[9639]" 0;
	setAttr ".phl[9640]" 0;
	setAttr ".phl[9641]" 0;
	setAttr ".phl[9642]" 0;
	setAttr ".phl[9643]" 0;
	setAttr ".phl[9644]" 0;
	setAttr ".phl[9645]" 0;
	setAttr ".phl[9646]" 0;
	setAttr ".phl[9647]" 0;
	setAttr ".phl[9648]" 0;
	setAttr ".phl[9649]" 0;
	setAttr ".phl[9650]" 0;
	setAttr ".phl[9651]" 0;
	setAttr ".phl[9652]" 0;
	setAttr ".phl[9653]" 0;
	setAttr ".phl[9654]" 0;
	setAttr ".phl[9655]" 0;
	setAttr ".phl[9656]" 0;
	setAttr ".phl[9657]" 0;
	setAttr ".phl[9658]" 0;
	setAttr ".phl[9659]" 0;
	setAttr ".phl[9660]" 0;
	setAttr ".phl[9661]" 0;
	setAttr ".phl[9662]" 0;
	setAttr ".phl[9663]" 0;
	setAttr ".phl[9664]" 0;
	setAttr ".phl[9665]" 0;
	setAttr ".phl[9666]" 0;
	setAttr ".phl[9667]" 0;
	setAttr ".phl[9668]" 0;
	setAttr ".phl[9669]" 0;
	setAttr ".phl[9670]" 0;
	setAttr ".phl[9671]" 0;
	setAttr ".phl[9672]" 0;
	setAttr ".phl[9673]" 0;
	setAttr ".phl[9674]" 0;
	setAttr ".phl[9675]" 0;
	setAttr ".phl[9676]" 0;
	setAttr ".phl[9677]" 0;
	setAttr ".phl[9678]" 0;
	setAttr ".phl[9679]" 0;
	setAttr ".phl[9680]" 0;
	setAttr ".phl[9681]" 0;
	setAttr ".phl[9682]" 0;
	setAttr ".phl[9683]" 0;
	setAttr ".phl[9684]" 0;
	setAttr ".phl[9685]" 0;
	setAttr ".phl[9686]" 0;
	setAttr ".phl[9687]" 0;
	setAttr ".phl[9688]" 0;
	setAttr ".phl[9689]" 0;
	setAttr ".phl[9690]" 0;
	setAttr ".phl[9691]" 0;
	setAttr ".phl[9692]" 0;
	setAttr ".phl[9693]" 0;
	setAttr ".phl[9694]" 0;
	setAttr ".phl[9695]" 0;
	setAttr ".phl[9696]" 0;
	setAttr ".phl[9697]" 0;
	setAttr ".phl[9698]" 0;
	setAttr ".phl[9699]" 0;
	setAttr ".phl[9700]" 0;
	setAttr ".phl[9701]" 0;
	setAttr ".phl[9702]" 0;
	setAttr ".phl[9703]" 0;
	setAttr ".phl[9704]" 0;
	setAttr ".phl[9705]" 0;
	setAttr ".phl[9706]" 0;
	setAttr ".phl[9707]" 0;
	setAttr ".phl[9708]" 0;
	setAttr ".phl[9709]" 0;
	setAttr ".phl[9710]" 0;
	setAttr ".phl[9711]" 0;
	setAttr ".phl[9712]" 0;
	setAttr ".phl[9713]" 0;
	setAttr ".phl[9714]" 0;
	setAttr ".phl[9715]" 0;
	setAttr ".phl[9716]" 0;
	setAttr ".phl[9717]" 0;
	setAttr ".phl[9718]" 0;
	setAttr ".phl[9719]" 0;
	setAttr ".phl[9720]" 0;
	setAttr ".phl[9721]" 0;
	setAttr ".phl[9722]" 0;
	setAttr ".phl[9723]" 0;
	setAttr ".phl[9724]" 0;
	setAttr ".phl[9725]" 0;
	setAttr ".phl[9726]" 0;
	setAttr ".phl[9727]" 0;
	setAttr ".phl[9728]" 0;
	setAttr ".phl[9729]" 0;
	setAttr ".phl[9730]" 0;
	setAttr ".phl[9731]" 0;
	setAttr ".phl[9732]" 0;
	setAttr ".phl[9733]" 0;
	setAttr ".phl[9734]" 0;
	setAttr ".phl[9735]" 0;
	setAttr ".phl[9736]" 0;
	setAttr ".phl[9737]" 0;
	setAttr ".phl[9738]" 0;
	setAttr ".phl[9739]" 0;
	setAttr ".phl[9740]" 0;
	setAttr ".phl[9741]" 0;
	setAttr ".phl[9742]" 0;
	setAttr ".phl[9743]" 0;
	setAttr ".phl[9744]" 0;
	setAttr ".phl[9745]" 0;
	setAttr ".phl[9746]" 0;
	setAttr ".phl[9747]" 0;
	setAttr ".phl[9748]" 0;
	setAttr ".phl[9749]" 0;
	setAttr ".phl[9750]" 0;
	setAttr ".phl[9751]" 0;
	setAttr ".phl[9752]" 0;
	setAttr ".phl[9753]" 0;
	setAttr ".phl[9754]" 0;
	setAttr ".phl[9755]" 0;
	setAttr ".phl[9756]" 0;
	setAttr ".phl[9757]" 0;
	setAttr ".phl[9758]" 0;
	setAttr ".phl[9759]" 0;
	setAttr ".phl[9760]" 0;
	setAttr ".phl[9761]" 0;
	setAttr ".phl[9762]" 0;
	setAttr ".phl[9763]" 0;
	setAttr ".phl[9764]" 0;
	setAttr ".phl[9765]" 0;
	setAttr ".phl[9766]" 0;
	setAttr ".phl[9767]" 0;
	setAttr ".phl[9768]" 0;
	setAttr ".phl[9769]" 0;
	setAttr ".phl[9770]" 0;
	setAttr ".phl[9771]" 0;
	setAttr ".phl[9772]" 0;
	setAttr ".phl[9773]" 0;
	setAttr ".phl[9774]" 0;
	setAttr ".phl[9775]" 0;
	setAttr ".phl[9776]" 0;
	setAttr ".phl[9777]" 0;
	setAttr ".phl[9778]" 0;
	setAttr ".phl[9779]" 0;
	setAttr ".phl[9780]" 0;
	setAttr ".phl[9781]" 0;
	setAttr ".phl[9782]" 0;
	setAttr ".phl[9783]" 0;
	setAttr ".phl[9784]" 0;
	setAttr ".phl[9785]" 0;
	setAttr ".phl[9786]" 0;
	setAttr ".phl[9787]" 0;
	setAttr ".phl[9788]" 0;
	setAttr ".phl[9789]" 0;
	setAttr ".phl[9790]" 0;
	setAttr ".phl[9791]" 0;
	setAttr ".phl[9792]" 0;
	setAttr ".phl[9793]" 0;
	setAttr ".phl[9794]" 0;
	setAttr ".phl[9795]" 0;
	setAttr ".phl[9796]" 0;
	setAttr ".phl[9797]" 0;
	setAttr ".phl[9798]" 0;
	setAttr ".phl[9799]" 0;
	setAttr ".phl[9800]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 12
		5 4 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.translateX" 
		"RefRN.placeHolderList[7835]" ""
		5 4 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.translateY" 
		"RefRN.placeHolderList[7836]" ""
		5 4 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.translateZ" 
		"RefRN.placeHolderList[7837]" ""
		5 3 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.rotatePivot" 
		"RefRN.placeHolderList[7838]" ""
		5 3 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.rotatePivotTranslate" 
		"RefRN.placeHolderList[7839]" ""
		5 4 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.rotateX" 
		"RefRN.placeHolderList[7840]" ""
		5 4 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.rotateY" 
		"RefRN.placeHolderList[7841]" ""
		5 4 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.rotateZ" 
		"RefRN.placeHolderList[7842]" ""
		5 3 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.rotateOrder" 
		"RefRN.placeHolderList[7843]" ""
		5 3 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.jointOrient" 
		"RefRN.placeHolderList[7844]" ""
		5 3 "RefRN" "|Ref:sniperInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_sunglasses.parentInverseMatrix" 
		"RefRN.placeHolderList[7845]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:body_mesh|Ref:body_meshShape.inMesh" "RefRN.placeHolderList[9131]" 
		""
		"Ref:HeadRN" 0
		"RefRN" 749
		0 "|RefRNfosterParent1|Ref:prp_hat_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_gunPack_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullets_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pouch_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_vest_front_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_vest_back_L_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_vest_back_M_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_vest_back_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_vest_front_R_parentConstraint1" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:sniper|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:sniper|Ref:bip_pelvis" 
		"-s -r "
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"translate" " -type \"double3\" 0 -2.773734 0"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"rotateX" " -av"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"rotateY" " -av"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"rotateZ" " -av"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" "rotateX" " -av 0"
		
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" "rotateY" " -av 0"
		
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" "rotateZ" " -av 0"
		
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"rotateX" " -av -0.599428"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"rotateY" " -av 7.164751"
		2 "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"rotateZ" " -av 11.244881"
		2 "|Ref:sniper|Ref:body_mesh|Ref:body_meshShape" "instObjGroups.objectGroups" 
		" -s 5"
		2 "|Ref:sniper|Ref:body_mesh|Ref:body_meshShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:mesh_layer" "visibility" " 1"
		2 "Ref:skeleton_layer" "displayType" " 0"
		2 "Ref:skeleton_layer" "visibility" " 1"
		3 "Ref:skinCluster32.outputGeometry[0]" "|Ref:sniper|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[9132]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[9133]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[9134]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[9135]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis.rotatePivotTranslate" "RefRN.placeHolderList[9136]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[9137]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[9138]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[9139]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[9140]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[9141]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[9142]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[9143]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.translateX" 
		"RefRN.placeHolderList[9144]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.translateY" 
		"RefRN.placeHolderList[9145]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" 
		"RefRN.placeHolderList[9146]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[9147]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[9148]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" "RefRN.placeHolderList[9149]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" "RefRN.placeHolderList[9150]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" "RefRN.placeHolderList[9151]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[9152]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[9153]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[9154]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[9155]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[9156]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[9157]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[9158]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[9159]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[9160]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[9161]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[9162]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[9163]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[9164]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[9165]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[9166]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[9167]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[9168]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[9169]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[9170]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[9171]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[9172]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[9173]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[9174]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[9175]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[9176]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[9177]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[9178]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[9179]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[9180]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[9181]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[9182]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[9183]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[9184]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[9185]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[9186]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[9187]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[9188]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[9189]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[9190]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[9191]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[9192]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[9193]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[9194]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[9195]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[9196]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[9197]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[9198]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[9199]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[9200]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[9201]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[9202]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[9203]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[9204]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[9205]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[9206]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[9207]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[9208]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[9209]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[9210]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[9211]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[9212]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[9213]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[9214]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[9215]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.translateX" 
		"RefRN.placeHolderList[9216]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.translateY" 
		"RefRN.placeHolderList[9217]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.translateZ" 
		"RefRN.placeHolderList[9218]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.rotatePivot" 
		"RefRN.placeHolderList[9219]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.rotatePivotTranslate" 
		"RefRN.placeHolderList[9220]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.rotateX" 
		"RefRN.placeHolderList[9221]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.rotateY" 
		"RefRN.placeHolderList[9222]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.rotateZ" 
		"RefRN.placeHolderList[9223]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.rotateOrder" 
		"RefRN.placeHolderList[9224]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.jointOrient" 
		"RefRN.placeHolderList[9225]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_hat.parentInverseMatrix" 
		"RefRN.placeHolderList[9226]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[9227]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[9228]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9229]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[9230]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[9231]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[9232]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[9233]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[9234]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[9235]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9236]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[9237]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[9238]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[9239]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[9240]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9241]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9242]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[9243]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[9244]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[9245]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[9246]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[9247]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[9248]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[9249]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9250]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[9251]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[9252]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[9253]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[9254]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[9255]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[9256]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[9257]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[9258]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[9259]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9260]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[9261]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[9262]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[9263]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[9264]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9265]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[9266]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[9267]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[9268]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[9269]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9270]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[9271]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[9272]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[9273]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[9274]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[9275]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9276]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[9277]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[9278]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[9279]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[9280]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9281]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[9282]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[9283]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[9284]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[9285]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[9286]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9287]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[9288]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[9289]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[9290]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[9291]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9292]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[9293]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[9294]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[9295]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[9296]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[9297]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9298]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[9299]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[9300]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[9301]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[9302]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9303]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[9304]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[9305]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[9306]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[9307]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9308]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[9309]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[9310]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[9311]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[9312]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[9313]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9314]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[9315]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[9316]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[9317]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[9318]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[9319]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9320]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[9321]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[9322]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[9323]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[9324]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9325]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[9326]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[9327]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[9328]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[9329]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[9330]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9331]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[9332]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[9333]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[9334]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[9335]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9336]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[9337]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[9338]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[9339]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[9340]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9341]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[9342]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[9343]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[9344]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[9345]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[9346]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9347]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[9348]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[9349]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[9350]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[9351]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[9352]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9353]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[9354]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[9355]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[9356]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[9357]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9358]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[9359]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[9360]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[9361]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[9362]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[9363]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[9364]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[9365]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[9366]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9367]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[9368]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9369]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[9370]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[9371]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[9372]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[9373]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9374]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[9375]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[9376]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[9377]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[9378]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[9379]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9380]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[9381]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[9382]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[9383]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[9384]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[9385]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9386]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[9387]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[9388]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[9389]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[9390]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9391]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[9392]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[9393]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[9394]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[9395]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[9396]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9397]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[9398]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[9399]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[9400]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[9401]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9402]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[9403]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[9404]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[9405]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[9406]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9407]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[9408]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[9409]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[9410]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[9411]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[9412]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9413]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[9414]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[9415]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[9416]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[9417]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[9418]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9419]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[9420]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[9421]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[9422]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[9423]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9424]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[9425]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[9426]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[9427]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[9428]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[9429]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9430]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[9431]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[9432]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[9433]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[9434]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9435]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[9436]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[9437]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9438]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[9439]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[9440]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[9441]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[9442]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[9443]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[9444]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9445]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[9446]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[9447]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[9448]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[9449]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9450]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9451]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[9452]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[9453]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[9454]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[9455]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[9456]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[9457]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[9458]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9459]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[9460]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[9461]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[9462]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[9463]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[9464]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[9465]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[9466]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[9467]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[9468]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9469]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[9470]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[9471]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[9472]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[9473]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9474]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[9475]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[9476]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[9477]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[9478]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9479]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[9480]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[9481]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[9482]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[9483]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[9484]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9485]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[9486]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[9487]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[9488]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[9489]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9490]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[9491]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[9492]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[9493]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[9494]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[9495]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9496]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[9497]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[9498]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[9499]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[9500]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9501]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[9502]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[9503]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[9504]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[9505]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[9506]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9507]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[9508]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[9509]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[9510]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[9511]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9512]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[9513]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[9514]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[9515]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[9516]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9517]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[9518]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[9519]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[9520]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[9521]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[9522]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9523]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[9524]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[9525]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[9526]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[9527]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[9528]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9529]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[9530]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[9531]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[9532]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[9533]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9534]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[9535]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[9536]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[9537]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[9538]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[9539]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9540]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[9541]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[9542]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[9543]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[9544]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9545]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[9546]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[9547]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[9548]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[9549]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9550]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[9551]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[9552]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[9553]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[9554]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[9555]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9556]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[9557]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[9558]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[9559]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[9560]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[9561]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9562]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[9563]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[9564]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[9565]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[9566]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9567]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[9568]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[9569]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[9570]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[9571]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[9572]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9573]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[9574]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[9575]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[9576]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[9577]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9578]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[9579]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[9580]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[9581]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[9582]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9583]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[9584]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[9585]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[9586]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[9587]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[9588]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9589]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[9590]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[9591]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[9592]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[9593]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[9594]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9595]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[9596]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[9597]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[9598]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[9599]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9600]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[9601]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[9602]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[9603]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[9604]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[9605]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9606]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[9607]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[9608]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[9609]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[9610]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9611]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[9612]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[9613]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[9614]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[9615]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9616]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[9617]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[9618]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[9619]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[9620]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[9621]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9622]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[9623]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[9624]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[9625]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[9626]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[9627]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9628]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[9629]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[9630]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[9631]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[9632]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9633]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[9634]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[9635]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[9636]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[9637]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[9638]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9639]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[9640]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[9641]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[9642]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[9643]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9644]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.translateX" 
		"RefRN.placeHolderList[9645]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.translateY" 
		"RefRN.placeHolderList[9646]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.translateZ" 
		"RefRN.placeHolderList[9647]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.rotatePivot" 
		"RefRN.placeHolderList[9648]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.rotatePivotTranslate" 
		"RefRN.placeHolderList[9649]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.rotateX" 
		"RefRN.placeHolderList[9650]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.rotateY" 
		"RefRN.placeHolderList[9651]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.rotateZ" 
		"RefRN.placeHolderList[9652]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.rotateOrder" 
		"RefRN.placeHolderList[9653]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.jointOrient" 
		"RefRN.placeHolderList[9654]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_gunPack.parentInverseMatrix" 
		"RefRN.placeHolderList[9655]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.translateX" 
		"RefRN.placeHolderList[9656]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.translateY" 
		"RefRN.placeHolderList[9657]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.translateZ" 
		"RefRN.placeHolderList[9658]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.rotatePivot" 
		"RefRN.placeHolderList[9659]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.rotatePivotTranslate" 
		"RefRN.placeHolderList[9660]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.rotateX" 
		"RefRN.placeHolderList[9661]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.rotateY" 
		"RefRN.placeHolderList[9662]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.rotateZ" 
		"RefRN.placeHolderList[9663]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.rotateOrder" 
		"RefRN.placeHolderList[9664]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.jointOrient" 
		"RefRN.placeHolderList[9665]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullets.parentInverseMatrix" 
		"RefRN.placeHolderList[9666]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[9667]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[9668]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[9669]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[9670]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9671]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9672]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" "RefRN.placeHolderList[9673]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" "RefRN.placeHolderList[9674]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" "RefRN.placeHolderList[9675]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" "RefRN.placeHolderList[9676]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[9677]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[9678]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" "RefRN.placeHolderList[9679]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9680]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[9681]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[9682]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[9683]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[9684]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[9685]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9686]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[9687]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[9688]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[9689]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[9690]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[9691]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9692]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[9693]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[9694]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[9695]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[9696]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[9697]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9698]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[9699]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[9700]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[9701]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[9702]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9703]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9704]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" "RefRN.placeHolderList[9705]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" "RefRN.placeHolderList[9706]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" "RefRN.placeHolderList[9707]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" "RefRN.placeHolderList[9708]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[9709]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[9710]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" "RefRN.placeHolderList[9711]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9712]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[9713]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[9714]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[9715]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[9716]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[9717]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9718]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[9719]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[9720]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[9721]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[9722]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[9723]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9724]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[9725]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[9726]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[9727]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[9728]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[9729]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9730]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.translateX" "RefRN.placeHolderList[9731]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.translateY" "RefRN.placeHolderList[9732]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.translateZ" "RefRN.placeHolderList[9733]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.rotatePivot" "RefRN.placeHolderList[9734]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.rotatePivotTranslate" 
		"RefRN.placeHolderList[9735]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.rotateX" "RefRN.placeHolderList[9736]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.rotateY" "RefRN.placeHolderList[9737]" 
		""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.rotateZ" "RefRN.placeHolderList[9738]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.rotateOrder" "RefRN.placeHolderList[9739]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.jointOrient" "RefRN.placeHolderList[9740]" 
		""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_pouch.parentInverseMatrix" 
		"RefRN.placeHolderList[9741]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.translateX" 
		"RefRN.placeHolderList[9742]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.translateY" 
		"RefRN.placeHolderList[9743]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.translateZ" 
		"RefRN.placeHolderList[9744]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.rotatePivot" 
		"RefRN.placeHolderList[9745]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9746]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.rotateX" 
		"RefRN.placeHolderList[9747]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.rotateY" 
		"RefRN.placeHolderList[9748]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.rotateZ" 
		"RefRN.placeHolderList[9749]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.rotateOrder" 
		"RefRN.placeHolderList[9750]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.jointOrient" 
		"RefRN.placeHolderList[9751]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9752]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.translateX" 
		"RefRN.placeHolderList[9753]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.translateY" 
		"RefRN.placeHolderList[9754]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.translateZ" 
		"RefRN.placeHolderList[9755]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.rotatePivot" 
		"RefRN.placeHolderList[9756]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[9757]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.rotateX" 
		"RefRN.placeHolderList[9758]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.rotateY" 
		"RefRN.placeHolderList[9759]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.rotateZ" 
		"RefRN.placeHolderList[9760]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.rotateOrder" 
		"RefRN.placeHolderList[9761]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.jointOrient" 
		"RefRN.placeHolderList[9762]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_L.parentInverseMatrix" 
		"RefRN.placeHolderList[9763]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.translateX" 
		"RefRN.placeHolderList[9764]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.translateY" 
		"RefRN.placeHolderList[9765]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.translateZ" 
		"RefRN.placeHolderList[9766]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.rotatePivot" 
		"RefRN.placeHolderList[9767]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.rotatePivotTranslate" 
		"RefRN.placeHolderList[9768]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.rotateX" 
		"RefRN.placeHolderList[9769]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.rotateY" 
		"RefRN.placeHolderList[9770]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.rotateZ" 
		"RefRN.placeHolderList[9771]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.rotateOrder" 
		"RefRN.placeHolderList[9772]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.jointOrient" 
		"RefRN.placeHolderList[9773]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_M.parentInverseMatrix" 
		"RefRN.placeHolderList[9774]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.translateX" 
		"RefRN.placeHolderList[9775]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.translateY" 
		"RefRN.placeHolderList[9776]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.translateZ" 
		"RefRN.placeHolderList[9777]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.rotatePivot" 
		"RefRN.placeHolderList[9778]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9779]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.rotateX" 
		"RefRN.placeHolderList[9780]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.rotateY" 
		"RefRN.placeHolderList[9781]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.rotateZ" 
		"RefRN.placeHolderList[9782]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.rotateOrder" 
		"RefRN.placeHolderList[9783]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.jointOrient" 
		"RefRN.placeHolderList[9784]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_back_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9785]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.translateX" 
		"RefRN.placeHolderList[9786]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.translateY" 
		"RefRN.placeHolderList[9787]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.translateZ" 
		"RefRN.placeHolderList[9788]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.rotatePivot" 
		"RefRN.placeHolderList[9789]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[9790]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.rotateX" 
		"RefRN.placeHolderList[9791]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.rotateY" 
		"RefRN.placeHolderList[9792]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.rotateZ" 
		"RefRN.placeHolderList[9793]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.rotateOrder" 
		"RefRN.placeHolderList[9794]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.jointOrient" 
		"RefRN.placeHolderList[9795]" ""
		5 3 "RefRN" "|Ref:sniper|Ref:bip_pelvis|Ref:prp_vest_front_R.parentInverseMatrix" 
		"RefRN.placeHolderList[9796]" ""
		5 4 "RefRN" "|Ref:sniper|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[57].objectGroupId" 
		"RefRN.placeHolderList[9797]" ""
		5 0 "RefRN" "Ref:skinCluster32.outputGeometry[0]" "|Ref:sniper|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		"RefRN.placeHolderList[9798]" "RefRN.placeHolderList[9799]" "Ref:body_meshShape.i"
		
		5 3 "RefRN" "Ref:skinCluster32.outputGeometry[0]" "RefRN.placeHolderList[9800]" 
		"Ref:body_meshShape.i";
lockNode;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 43 ".dsm";
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
	setAttr ".txf" -type "matrix" 0.99189219978179544 0.0074961554954301353 0.12686083581948798 0
		 0.028847849790470732 -0.98548011357989873 -0.16732228572732591 0 0.12376455702056705 0.16962533239860958 -0.97770628566771745 0
		 2.417196771485087e-016 70.500829071630164 -4.8428129209125483 1;
createNode ikRPsolver -n "ikRPsolver";
createNode ikSplineSolver -n "ikSplineSolver";
createNode expression -n "SpineCurvevisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode cluster -n "ikChestClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2:3]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "ikPelvisClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode curveInfo -n "SpineCurveInfoNode";
createNode curveInfo -n "curveInfo1";
createNode expression -n "stretchyBack";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.3786983";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.3786983";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.3786983";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.3786983";
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
createNode condition -n "switch_prp_hatControl_to_space_0";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_prp_hatControl_to_space_1";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_prp_hatControl_to_space_2";
	setAttr ".st" 2;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_prp_hatControl_to_space_3";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_prp_hatControl_to_space_4";
	setAttr ".st" 4;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
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
createNode objectSet -n "hand_L";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "hand_R";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 31 "f[447:455]" "f[457:463]" "f[466:467]" "f[470:471]" "f[473]" "f[475:488]" "f[490:549]" "f[552]" "f[556]" "f[634]" "f[636]" "f[643]" "f[682]" "f[696]" "f[712]" "f[714]" "f[742]" "f[747]" "f[753]" "f[772]" "f[883:886]" "f[1120]" "f[1193]" "f[1199]" "f[1206]" "f[1269]" "f[1282]" "f[1336]" "f[1338]" "f[1353]" "f[1517]";
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 13 ".u";
select -ne :lightList1;
	setAttr -s 2 ".ln";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 78 ".dsm";
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
	setAttr -s 2 ".sol";
select -ne :hyperGraphLayout;
	setAttr ".hyp[0].isc" no;
	setAttr ".hyp[0].isf" no;
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[9132]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[9133]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[9134]";
connectAttr "RefRN.phl[9135]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[9136]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[9137]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[9138]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[9139]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[9140]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[9141]";
connectAttr "RefRN.phl[9142]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[9143]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[9144]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[9145]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[9146]";
connectAttr "RefRN.phl[9147]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[9148]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[9149]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[9150]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[9151]";
connectAttr "RefRN.phl[9152]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[9153]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[9154]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[9155]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[9156]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[9157]";
connectAttr "RefRN.phl[9158]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[9159]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[9160]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[9161]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[9162]";
connectAttr "RefRN.phl[9163]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[9164]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[9165]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[9166]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[9167]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[9168]";
connectAttr "RefRN.phl[9169]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[9170]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[9171]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[9172]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[9173]";
connectAttr "RefRN.phl[9174]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[9175]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[9176]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[9177]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[9178]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[9179]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[9180]";
connectAttr "RefRN.phl[9181]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[9182]" "neckControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[9183]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "RefRN.phl[9184]" "neckControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[9185]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[9186]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[9187]";
connectAttr "RefRN.phl[9188]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[9189]" "neckControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[9190]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[9191]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[9192]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9193]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9194]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9195]" "headControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[9196]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[9197]" "headControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[9198]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[9199]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[9200]";
connectAttr "RefRN.phl[9201]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[9202]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9203]" "headControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[9204]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[9205]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[9206]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9207]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9208]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[9209]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[9210]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[9211]";
connectAttr "RefRN.phl[9212]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[9213]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9214]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[9215]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "Ref:prp_hat_parentConstraint1.ctx" "RefRN.phl[9216]";
connectAttr "Ref:prp_hat_parentConstraint1.cty" "RefRN.phl[9217]";
connectAttr "Ref:prp_hat_parentConstraint1.ctz" "RefRN.phl[9218]";
connectAttr "RefRN.phl[9219]" "Ref:prp_hat_parentConstraint1.crp";
connectAttr "RefRN.phl[9220]" "Ref:prp_hat_parentConstraint1.crt";
connectAttr "Ref:prp_hat_parentConstraint1.crx" "RefRN.phl[9221]";
connectAttr "Ref:prp_hat_parentConstraint1.cry" "RefRN.phl[9222]";
connectAttr "Ref:prp_hat_parentConstraint1.crz" "RefRN.phl[9223]";
connectAttr "RefRN.phl[9224]" "Ref:prp_hat_parentConstraint1.cro";
connectAttr "RefRN.phl[9225]" "Ref:prp_hat_parentConstraint1.cjo";
connectAttr "RefRN.phl[9226]" "Ref:prp_hat_parentConstraint1.cpim";
connectAttr "RefRN.phl[9227]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9228]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9229]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[9230]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[9231]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[9232]";
connectAttr "RefRN.phl[9233]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9234]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9235]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9236]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[9237]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9238]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9239]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9240]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9241]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[9242]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[9243]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[9244]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[9245]";
connectAttr "RefRN.phl[9246]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9247]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9248]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9249]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9250]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[9251]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9252]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[9253]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[9254]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[9255]";
connectAttr "RefRN.phl[9256]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9257]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[9258]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9259]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[9260]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[9261]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9262]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9263]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9264]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9265]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[9266]";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[9267]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[9268]";
connectAttr "RefRN.phl[9269]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9270]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[9271]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[9272]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[9273]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[9274]";
connectAttr "RefRN.phl[9275]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9276]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[9277]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[9278]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[9279]";
connectAttr "RefRN.phl[9280]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9281]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9282]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[9283]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[9284]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[9285]";
connectAttr "RefRN.phl[9286]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9287]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[9288]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[9289]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[9290]";
connectAttr "RefRN.phl[9291]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9292]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9293]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[9294]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[9295]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[9296]";
connectAttr "RefRN.phl[9297]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9298]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[9299]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[9300]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[9301]";
connectAttr "RefRN.phl[9302]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9303]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[9304]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[9305]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[9306]";
connectAttr "RefRN.phl[9307]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9308]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[9309]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[9310]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[9311]";
connectAttr "RefRN.phl[9312]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9313]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[9314]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9315]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[9316]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[9317]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[9318]";
connectAttr "RefRN.phl[9319]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9320]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[9321]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[9322]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[9323]";
connectAttr "RefRN.phl[9324]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9325]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9326]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[9327]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[9328]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[9329]";
connectAttr "RefRN.phl[9330]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9331]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[9332]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[9333]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[9334]";
connectAttr "RefRN.phl[9335]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9336]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[9337]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[9338]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[9339]";
connectAttr "RefRN.phl[9340]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9341]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[9342]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[9343]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[9344]";
connectAttr "RefRN.phl[9345]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9346]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[9347]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9348]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[9349]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[9350]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[9351]";
connectAttr "RefRN.phl[9352]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9353]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[9354]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[9355]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[9356]";
connectAttr "RefRN.phl[9357]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9358]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[9359]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[9360]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[9361]";
connectAttr "RefRN.phl[9362]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[9363]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[9364]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[9365]";
connectAttr "RefRN.phl[9366]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9367]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[9368]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9369]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[9370]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[9371]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[9372]";
connectAttr "RefRN.phl[9373]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9374]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[9375]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[9376]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[9377]";
connectAttr "RefRN.phl[9378]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9379]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[9380]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9381]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[9382]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[9383]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[9384]";
connectAttr "RefRN.phl[9385]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9386]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[9387]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[9388]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[9389]";
connectAttr "RefRN.phl[9390]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9391]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9392]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[9393]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[9394]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[9395]";
connectAttr "RefRN.phl[9396]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9397]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[9398]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[9399]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[9400]";
connectAttr "RefRN.phl[9401]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9402]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[9403]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[9404]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[9405]";
connectAttr "RefRN.phl[9406]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9407]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[9408]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[9409]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[9410]";
connectAttr "RefRN.phl[9411]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9412]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[9413]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9414]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[9415]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[9416]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[9417]";
connectAttr "RefRN.phl[9418]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9419]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[9420]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[9421]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[9422]";
connectAttr "RefRN.phl[9423]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9424]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9425]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[9426]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[9427]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[9428]";
connectAttr "RefRN.phl[9429]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9430]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[9431]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[9432]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[9433]";
connectAttr "RefRN.phl[9434]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9435]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[9436]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9437]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9438]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[9439]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[9440]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[9441]";
connectAttr "RefRN.phl[9442]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9443]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9444]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9445]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[9446]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9447]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9448]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9449]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9450]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[9451]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[9452]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[9453]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[9454]";
connectAttr "RefRN.phl[9455]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9456]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9457]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9458]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9459]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[9460]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9461]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[9462]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[9463]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[9464]";
connectAttr "RefRN.phl[9465]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9466]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[9467]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9468]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[9469]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[9470]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9471]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9472]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9473]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9474]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[9475]";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[9476]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[9477]";
connectAttr "RefRN.phl[9478]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9479]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[9480]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[9481]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[9482]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[9483]";
connectAttr "RefRN.phl[9484]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9485]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[9486]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[9487]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[9488]";
connectAttr "RefRN.phl[9489]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9490]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9491]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[9492]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[9493]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[9494]";
connectAttr "RefRN.phl[9495]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9496]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[9497]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[9498]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[9499]";
connectAttr "RefRN.phl[9500]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9501]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9502]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[9503]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[9504]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[9505]";
connectAttr "RefRN.phl[9506]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9507]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[9508]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[9509]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[9510]";
connectAttr "RefRN.phl[9511]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9512]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[9513]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[9514]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[9515]";
connectAttr "RefRN.phl[9516]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9517]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[9518]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[9519]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[9520]";
connectAttr "RefRN.phl[9521]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9522]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[9523]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9524]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[9525]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[9526]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[9527]";
connectAttr "RefRN.phl[9528]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9529]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[9530]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[9531]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[9532]";
connectAttr "RefRN.phl[9533]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9534]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9535]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[9536]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[9537]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[9538]";
connectAttr "RefRN.phl[9539]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9540]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[9541]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[9542]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[9543]";
connectAttr "RefRN.phl[9544]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9545]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[9546]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[9547]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[9548]";
connectAttr "RefRN.phl[9549]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9550]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[9551]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[9552]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[9553]";
connectAttr "RefRN.phl[9554]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9555]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[9556]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9557]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[9558]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[9559]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[9560]";
connectAttr "RefRN.phl[9561]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9562]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[9563]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[9564]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[9565]";
connectAttr "RefRN.phl[9566]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9567]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9568]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[9569]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[9570]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[9571]";
connectAttr "RefRN.phl[9572]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9573]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[9574]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[9575]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[9576]";
connectAttr "RefRN.phl[9577]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9578]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[9579]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[9580]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[9581]";
connectAttr "RefRN.phl[9582]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9583]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[9584]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[9585]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[9586]";
connectAttr "RefRN.phl[9587]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9588]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[9589]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9590]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[9591]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[9592]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[9593]";
connectAttr "RefRN.phl[9594]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9595]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[9596]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[9597]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[9598]";
connectAttr "RefRN.phl[9599]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9600]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9601]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[9602]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[9603]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[9604]";
connectAttr "RefRN.phl[9605]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9606]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[9607]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[9608]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[9609]";
connectAttr "RefRN.phl[9610]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9611]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[9612]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[9613]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[9614]";
connectAttr "RefRN.phl[9615]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9616]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[9617]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[9618]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[9619]";
connectAttr "RefRN.phl[9620]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9621]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[9622]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9623]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[9624]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[9625]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[9626]";
connectAttr "RefRN.phl[9627]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9628]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[9629]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[9630]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[9631]";
connectAttr "RefRN.phl[9632]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9633]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[9634]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[9635]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[9636]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[9637]";
connectAttr "RefRN.phl[9638]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9639]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[9640]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[9641]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[9642]";
connectAttr "RefRN.phl[9643]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9644]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_gunPack_parentConstraint1.ctx" "RefRN.phl[9645]";
connectAttr "Ref:prp_gunPack_parentConstraint1.cty" "RefRN.phl[9646]";
connectAttr "Ref:prp_gunPack_parentConstraint1.ctz" "RefRN.phl[9647]";
connectAttr "RefRN.phl[9648]" "Ref:prp_gunPack_parentConstraint1.crp";
connectAttr "RefRN.phl[9649]" "Ref:prp_gunPack_parentConstraint1.crt";
connectAttr "Ref:prp_gunPack_parentConstraint1.crx" "RefRN.phl[9650]";
connectAttr "Ref:prp_gunPack_parentConstraint1.cry" "RefRN.phl[9651]";
connectAttr "Ref:prp_gunPack_parentConstraint1.crz" "RefRN.phl[9652]";
connectAttr "RefRN.phl[9653]" "Ref:prp_gunPack_parentConstraint1.cro";
connectAttr "RefRN.phl[9654]" "Ref:prp_gunPack_parentConstraint1.cjo";
connectAttr "RefRN.phl[9655]" "Ref:prp_gunPack_parentConstraint1.cpim";
connectAttr "Ref:prp_bullets_parentConstraint1.ctx" "RefRN.phl[9656]";
connectAttr "Ref:prp_bullets_parentConstraint1.cty" "RefRN.phl[9657]";
connectAttr "Ref:prp_bullets_parentConstraint1.ctz" "RefRN.phl[9658]";
connectAttr "RefRN.phl[9659]" "Ref:prp_bullets_parentConstraint1.crp";
connectAttr "RefRN.phl[9660]" "Ref:prp_bullets_parentConstraint1.crt";
connectAttr "Ref:prp_bullets_parentConstraint1.crx" "RefRN.phl[9661]";
connectAttr "Ref:prp_bullets_parentConstraint1.cry" "RefRN.phl[9662]";
connectAttr "Ref:prp_bullets_parentConstraint1.crz" "RefRN.phl[9663]";
connectAttr "RefRN.phl[9664]" "Ref:prp_bullets_parentConstraint1.cro";
connectAttr "RefRN.phl[9665]" "Ref:prp_bullets_parentConstraint1.cjo";
connectAttr "RefRN.phl[9666]" "Ref:prp_bullets_parentConstraint1.cpim";
connectAttr "RefRN.phl[9667]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9668]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9669]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9670]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9671]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[9672]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[9673]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[9674]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[9675]";
connectAttr "RefRN.phl[9676]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9677]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9678]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9679]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9680]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[9681]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[9682]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[9683]";
connectAttr "RefRN.phl[9684]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9685]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9686]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[9687]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[9688]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[9689]";
connectAttr "RefRN.phl[9690]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9691]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9692]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[9693]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[9694]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[9695]";
connectAttr "RefRN.phl[9696]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[9697]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[9698]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[9699]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9700]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[9701]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9702]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[9703]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[9704]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[9705]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[9706]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[9707]";
connectAttr "RefRN.phl[9708]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9709]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9710]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[9711]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9712]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[9713]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[9714]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[9715]";
connectAttr "RefRN.phl[9716]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9717]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9718]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[9719]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[9720]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[9721]";
connectAttr "RefRN.phl[9722]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9723]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9724]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[9725]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[9726]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[9727]";
connectAttr "RefRN.phl[9728]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[9729]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[9730]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_pouch_parentConstraint1.ctx" "RefRN.phl[9731]";
connectAttr "Ref:prp_pouch_parentConstraint1.cty" "RefRN.phl[9732]";
connectAttr "Ref:prp_pouch_parentConstraint1.ctz" "RefRN.phl[9733]";
connectAttr "RefRN.phl[9734]" "Ref:prp_pouch_parentConstraint1.crp";
connectAttr "RefRN.phl[9735]" "Ref:prp_pouch_parentConstraint1.crt";
connectAttr "Ref:prp_pouch_parentConstraint1.crx" "RefRN.phl[9736]";
connectAttr "Ref:prp_pouch_parentConstraint1.cry" "RefRN.phl[9737]";
connectAttr "Ref:prp_pouch_parentConstraint1.crz" "RefRN.phl[9738]";
connectAttr "RefRN.phl[9739]" "Ref:prp_pouch_parentConstraint1.cro";
connectAttr "RefRN.phl[9740]" "Ref:prp_pouch_parentConstraint1.cjo";
connectAttr "RefRN.phl[9741]" "Ref:prp_pouch_parentConstraint1.cpim";
connectAttr "Ref:prp_vest_front_L_parentConstraint1.ctx" "RefRN.phl[9742]";
connectAttr "Ref:prp_vest_front_L_parentConstraint1.cty" "RefRN.phl[9743]";
connectAttr "Ref:prp_vest_front_L_parentConstraint1.ctz" "RefRN.phl[9744]";
connectAttr "RefRN.phl[9745]" "Ref:prp_vest_front_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9746]" "Ref:prp_vest_front_L_parentConstraint1.crt";
connectAttr "Ref:prp_vest_front_L_parentConstraint1.crx" "RefRN.phl[9747]";
connectAttr "Ref:prp_vest_front_L_parentConstraint1.cry" "RefRN.phl[9748]";
connectAttr "Ref:prp_vest_front_L_parentConstraint1.crz" "RefRN.phl[9749]";
connectAttr "RefRN.phl[9750]" "Ref:prp_vest_front_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9751]" "Ref:prp_vest_front_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[9752]" "Ref:prp_vest_front_L_parentConstraint1.cpim";
connectAttr "Ref:prp_vest_back_L_parentConstraint1.ctx" "RefRN.phl[9753]";
connectAttr "Ref:prp_vest_back_L_parentConstraint1.cty" "RefRN.phl[9754]";
connectAttr "Ref:prp_vest_back_L_parentConstraint1.ctz" "RefRN.phl[9755]";
connectAttr "RefRN.phl[9756]" "Ref:prp_vest_back_L_parentConstraint1.crp";
connectAttr "RefRN.phl[9757]" "Ref:prp_vest_back_L_parentConstraint1.crt";
connectAttr "Ref:prp_vest_back_L_parentConstraint1.crx" "RefRN.phl[9758]";
connectAttr "Ref:prp_vest_back_L_parentConstraint1.cry" "RefRN.phl[9759]";
connectAttr "Ref:prp_vest_back_L_parentConstraint1.crz" "RefRN.phl[9760]";
connectAttr "RefRN.phl[9761]" "Ref:prp_vest_back_L_parentConstraint1.cro";
connectAttr "RefRN.phl[9762]" "Ref:prp_vest_back_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[9763]" "Ref:prp_vest_back_L_parentConstraint1.cpim";
connectAttr "Ref:prp_vest_back_M_parentConstraint1.ctx" "RefRN.phl[9764]";
connectAttr "Ref:prp_vest_back_M_parentConstraint1.cty" "RefRN.phl[9765]";
connectAttr "Ref:prp_vest_back_M_parentConstraint1.ctz" "RefRN.phl[9766]";
connectAttr "RefRN.phl[9767]" "Ref:prp_vest_back_M_parentConstraint1.crp";
connectAttr "RefRN.phl[9768]" "Ref:prp_vest_back_M_parentConstraint1.crt";
connectAttr "Ref:prp_vest_back_M_parentConstraint1.crx" "RefRN.phl[9769]";
connectAttr "Ref:prp_vest_back_M_parentConstraint1.cry" "RefRN.phl[9770]";
connectAttr "Ref:prp_vest_back_M_parentConstraint1.crz" "RefRN.phl[9771]";
connectAttr "RefRN.phl[9772]" "Ref:prp_vest_back_M_parentConstraint1.cro";
connectAttr "RefRN.phl[9773]" "Ref:prp_vest_back_M_parentConstraint1.cjo";
connectAttr "RefRN.phl[9774]" "Ref:prp_vest_back_M_parentConstraint1.cpim";
connectAttr "Ref:prp_vest_back_R_parentConstraint1.ctx" "RefRN.phl[9775]";
connectAttr "Ref:prp_vest_back_R_parentConstraint1.cty" "RefRN.phl[9776]";
connectAttr "Ref:prp_vest_back_R_parentConstraint1.ctz" "RefRN.phl[9777]";
connectAttr "RefRN.phl[9778]" "Ref:prp_vest_back_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9779]" "Ref:prp_vest_back_R_parentConstraint1.crt";
connectAttr "Ref:prp_vest_back_R_parentConstraint1.crx" "RefRN.phl[9780]";
connectAttr "Ref:prp_vest_back_R_parentConstraint1.cry" "RefRN.phl[9781]";
connectAttr "Ref:prp_vest_back_R_parentConstraint1.crz" "RefRN.phl[9782]";
connectAttr "RefRN.phl[9783]" "Ref:prp_vest_back_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9784]" "Ref:prp_vest_back_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[9785]" "Ref:prp_vest_back_R_parentConstraint1.cpim";
connectAttr "Ref:prp_vest_front_R_parentConstraint1.ctx" "RefRN.phl[9786]";
connectAttr "Ref:prp_vest_front_R_parentConstraint1.cty" "RefRN.phl[9787]";
connectAttr "Ref:prp_vest_front_R_parentConstraint1.ctz" "RefRN.phl[9788]";
connectAttr "RefRN.phl[9789]" "Ref:prp_vest_front_R_parentConstraint1.crp";
connectAttr "RefRN.phl[9790]" "Ref:prp_vest_front_R_parentConstraint1.crt";
connectAttr "Ref:prp_vest_front_R_parentConstraint1.crx" "RefRN.phl[9791]";
connectAttr "Ref:prp_vest_front_R_parentConstraint1.cry" "RefRN.phl[9792]";
connectAttr "Ref:prp_vest_front_R_parentConstraint1.crz" "RefRN.phl[9793]";
connectAttr "RefRN.phl[9794]" "Ref:prp_vest_front_R_parentConstraint1.cro";
connectAttr "RefRN.phl[9795]" "Ref:prp_vest_front_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[9796]" "Ref:prp_vest_front_R_parentConstraint1.cpim";
connectAttr "groupId10.id" "RefRN.phl[9797]";
connectAttr "RefRN.phl[9798]" "RefRN.phl[9799]";
connectAttr "RefRN.phl[9800]" "groupParts10.ig";
connectAttr "Ref:bip_spine_0FKcontrolvisExp.out[0]" "Ref:bip_spine_0FKcontrol.v"
		 -l on;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_0FKcontrol.sy"
		 -l on;
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
connectAttr "tweak1.pl[0].cp[0]" "SpineCurveShape.twl";
connectAttr "cluster1GroupId.id" "SpineCurveShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "SpineCurveShape.iog.og[0].gco";
connectAttr "groupId2.id" "SpineCurveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "SpineCurveShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "SpineCurveShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "SpineCurveShape.iog.og[2].gco";
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
connectAttr "lShoulderControl_pointConstraint1.w0" "lShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "lShoulderControl.pim" "lShoulderControl_pointConstraint1.cpim";
connectAttr "lShoulderControl.rp" "lShoulderControl_pointConstraint1.crp";
connectAttr "lShoulderControl.rpt" "lShoulderControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.ctx" "Ref:bip_upperArm_LFKZeroGroup.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cty" "Ref:bip_upperArm_LFKZeroGroup.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.ctz" "Ref:bip_upperArm_LFKZeroGroup.tz"
		 -l on;
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
connectAttr "rShoulderControl_pointConstraint1.w0" "rShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rShoulderControl.pim" "rShoulderControl_pointConstraint1.cpim";
connectAttr "rShoulderControl.rp" "rShoulderControl_pointConstraint1.crp";
connectAttr "rShoulderControl.rpt" "rShoulderControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.ctx" "Ref:bip_upperArm_RFKZeroGroup.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cty" "Ref:bip_upperArm_RFKZeroGroup.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.ctz" "Ref:bip_upperArm_RFKZeroGroup.tz"
		 -l on;
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
connectAttr "headControl_pointConstraint1.w0" "headControl_pointConstraint1.tg[0].tw"
		;
connectAttr "headControl.pim" "headControl_pointConstraint1.cpim";
connectAttr "headControl.rp" "headControl_pointConstraint1.crp";
connectAttr "headControl.rpt" "headControl_pointConstraint1.crt";
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.ctx" "Ref:prp_hatControlGroup.tx"
		 -l on;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.cty" "Ref:prp_hatControlGroup.ty"
		 -l on;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.ctz" "Ref:prp_hatControlGroup.tz"
		 -l on;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.crx" "Ref:prp_hatControlGroup.rx"
		 -l on;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.cry" "Ref:prp_hatControlGroup.ry"
		 -l on;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.crz" "Ref:prp_hatControlGroup.rz"
		 -l on;
connectAttr "Ref:prp_hatControlGroup.ro" "Ref:prp_hatControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_hatControlGroup.pim" "Ref:prp_hatControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_hatControlGroup.rp" "Ref:prp_hatControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_hatControlGroup.rpt" "Ref:prp_hatControlGroup_parentConstraint1.crt"
		;
connectAttr "headControl.t" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "headControl.rp" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "headControl.rpt" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "headControl.r" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "headControl.ro" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "headControl.s" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "headControl.pm" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.w0" "Ref:prp_hatControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "UpperbodyControl.rp" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "UpperbodyControl.rpt" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "UpperbodyControl.r" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "UpperbodyControl.ro" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "UpperbodyControl.s" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "UpperbodyControl.pm" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.w1" "Ref:prp_hatControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "lHandControl.t" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].tt"
		;
connectAttr "lHandControl.rp" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].trp"
		;
connectAttr "lHandControl.rpt" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].trt"
		;
connectAttr "lHandControl.r" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].tr"
		;
connectAttr "lHandControl.ro" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].tro"
		;
connectAttr "lHandControl.s" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].ts"
		;
connectAttr "lHandControl.pm" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].tpm"
		;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.w2" "Ref:prp_hatControlGroup_parentConstraint1.tg[2].tw"
		;
connectAttr "rHandControl.t" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].tt"
		;
connectAttr "rHandControl.rp" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].trp"
		;
connectAttr "rHandControl.rpt" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].trt"
		;
connectAttr "rHandControl.r" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].tr"
		;
connectAttr "rHandControl.ro" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].tro"
		;
connectAttr "rHandControl.s" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].ts"
		;
connectAttr "rHandControl.pm" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].tpm"
		;
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.w3" "Ref:prp_hatControlGroup_parentConstraint1.tg[3].tw"
		;
connectAttr "main.t" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].tt";
connectAttr "main.rp" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].trp";
connectAttr "main.rpt" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].trt";
connectAttr "main.r" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].tr";
connectAttr "main.ro" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].tro";
connectAttr "main.s" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].ts";
connectAttr "main.pm" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].tpm";
connectAttr "Ref:prp_hatControlGroup_parentConstraint1.w4" "Ref:prp_hatControlGroup_parentConstraint1.tg[4].tw"
		;
connectAttr "switch_prp_hatControl_to_space_0.ocr" "Ref:prp_hatControlGroup_parentConstraint1.w0"
		;
connectAttr "switch_prp_hatControl_to_space_1.ocr" "Ref:prp_hatControlGroup_parentConstraint1.w1"
		;
connectAttr "switch_prp_hatControl_to_space_2.ocr" "Ref:prp_hatControlGroup_parentConstraint1.w2"
		;
connectAttr "switch_prp_hatControl_to_space_3.ocr" "Ref:prp_hatControlGroup_parentConstraint1.w3"
		;
connectAttr "switch_prp_hatControl_to_space_4.ocr" "Ref:prp_hatControlGroup_parentConstraint1.w4"
		;
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
connectAttr "likHandControl_orientConstraint1.w0" "likHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.aim" "likHandControl_orientConstraint1.w0";
connectAttr "likHandControl.ro" "likHandControl_orientConstraint1.cro";
connectAttr "likHandControl.pim" "likHandControl_orientConstraint1.cpim";
connectAttr "lElbowControlvisExp.out[0]" "lElbowControl.v" -l on;
connectAttr "lHandControlGroup_parentConstraint1.ctx" "lHandControlGroup.tx";
connectAttr "lHandControlGroup_parentConstraint1.cty" "lHandControlGroup.ty";
connectAttr "lHandControlGroup_parentConstraint1.ctz" "lHandControlGroup.tz";
connectAttr "lHandControlGroup_parentConstraint1.crx" "lHandControlGroup.rx";
connectAttr "lHandControlGroup_parentConstraint1.cry" "lHandControlGroup.ry";
connectAttr "lHandControlGroup_parentConstraint1.crz" "lHandControlGroup.rz";
connectAttr "lHandControl_pointConstraint1.ctx" "lHandControl.tx" -l on;
connectAttr "lHandControl_pointConstraint1.cty" "lHandControl.ty" -l on;
connectAttr "lHandControl_pointConstraint1.ctz" "lHandControl.tz" -l on;
connectAttr "unitConversion3.o" "Ref:bip_thumb_0_LControlrollGroup.rx";
connectAttr "unitConversion4.o" "Ref:bip_thumb_1_LControlrollGroup.rx";
connectAttr "unitConversion5.o" "Ref:bip_thumb_2_LControlrollGroup.rx";
connectAttr "unitConversion6.o" "Ref:bip_index_0_LControlrollGroup.rx";
connectAttr "unitConversion7.o" "Ref:bip_index_1_LControlrollGroup.rx";
connectAttr "unitConversion8.o" "Ref:bip_index_2_LControlrollGroup.rx";
connectAttr "unitConversion9.o" "Ref:bip_middle_0_LControlrollGroup.rx";
connectAttr "unitConversion10.o" "Ref:bip_middle_1_LControlrollGroup.rx";
connectAttr "unitConversion11.o" "Ref:bip_middle_2_LControlrollGroup.rx";
connectAttr "unitConversion12.o" "Ref:bip_ring_0_LControlrollGroup.rx";
connectAttr "unitConversion13.o" "Ref:bip_ring_1_LControlrollGroup.rx";
connectAttr "unitConversion14.o" "Ref:bip_ring_2_LControlrollGroup.rx";
connectAttr "unitConversion15.o" "Ref:bip_pinky_0_LControlrollGroup.rx";
connectAttr "unitConversion16.o" "Ref:bip_pinky_1_LControlrollGroup.rx";
connectAttr "unitConversion17.o" "Ref:bip_pinky_2_LControlrollGroup.rx";
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
connectAttr "lFootControlvisExp.out[0]" "lFootControl.v" -l on;
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
connectAttr "rHandControl.msg" "rikHandControl.zooTrig1";
connectAttr "rikHandControl_orientConstraint1.w0" "rikHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.aim" "rikHandControl_orientConstraint1.w0";
connectAttr "rikHandControl.ro" "rikHandControl_orientConstraint1.cro";
connectAttr "rikHandControl.pim" "rikHandControl_orientConstraint1.cpim";
connectAttr "rElbowControlvisExp.out[0]" "rElbowControl.v" -l on;
connectAttr "rHandControlGroup_parentConstraint1.ctx" "rHandControlGroup.tx";
connectAttr "rHandControlGroup_parentConstraint1.cty" "rHandControlGroup.ty";
connectAttr "rHandControlGroup_parentConstraint1.ctz" "rHandControlGroup.tz";
connectAttr "rHandControlGroup_parentConstraint1.crx" "rHandControlGroup.rx";
connectAttr "rHandControlGroup_parentConstraint1.cry" "rHandControlGroup.ry";
connectAttr "rHandControlGroup_parentConstraint1.crz" "rHandControlGroup.rz";
connectAttr "rHandControl_pointConstraint1.ctx" "rHandControl.tx" -l on;
connectAttr "rHandControl_pointConstraint1.cty" "rHandControl.ty" -l on;
connectAttr "rHandControl_pointConstraint1.ctz" "rHandControl.tz" -l on;
connectAttr "unitConversion25.o" "Ref:bip_thumb_0_RControlrollGroup.rx";
connectAttr "unitConversion26.o" "Ref:bip_thumb_1_RControlrollGroup.rx";
connectAttr "unitConversion27.o" "Ref:bip_thumb_2_RControlrollGroup.rx";
connectAttr "unitConversion28.o" "Ref:bip_index_0_RControlrollGroup.rx";
connectAttr "unitConversion29.o" "Ref:bip_index_1_RControlrollGroup.rx";
connectAttr "unitConversion30.o" "Ref:bip_index_2_RControlrollGroup.rx";
connectAttr "unitConversion31.o" "Ref:bip_middle_0_RControlrollGroup.rx";
connectAttr "unitConversion32.o" "Ref:bip_middle_1_RControlrollGroup.rx";
connectAttr "unitConversion33.o" "Ref:bip_middle_2_RControlrollGroup.rx";
connectAttr "unitConversion34.o" "Ref:bip_ring_0_RControlrollGroup.rx";
connectAttr "unitConversion35.o" "Ref:bip_ring_1_RControlrollGroup.rx";
connectAttr "unitConversion36.o" "Ref:bip_ring_2_RControlrollGroup.rx";
connectAttr "unitConversion37.o" "Ref:bip_pinky_0_RControlrollGroup.rx";
connectAttr "unitConversion38.o" "Ref:bip_pinky_1_RControlrollGroup.rx";
connectAttr "unitConversion39.o" "Ref:bip_pinky_2_RControlrollGroup.rx";
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
connectAttr "rFootControlvisExp.out[0]" "rFootControl.v" -l on;
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
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.ctx" "Ref:prp_gunPackControlGroup.tx"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.cty" "Ref:prp_gunPackControlGroup.ty"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.ctz" "Ref:prp_gunPackControlGroup.tz"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.crx" "Ref:prp_gunPackControlGroup.rx"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.cry" "Ref:prp_gunPackControlGroup.ry"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.crz" "Ref:prp_gunPackControlGroup.rz"
		;
connectAttr "Ref:prp_gunPackControlGroup.ro" "Ref:prp_gunPackControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_gunPackControlGroup.pim" "Ref:prp_gunPackControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_gunPackControlGroup.rp" "Ref:prp_gunPackControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_gunPackControlGroup.rpt" "Ref:prp_gunPackControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.w0" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2ik.rp" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2ik.ro" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2ik.pm" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_gunPackControlGroup_parentConstraint1.w1" "Ref:prp_gunPackControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent3.out[0]" "Ref:prp_gunPackControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_gunPackControlGroup_parentConstraint1.w1";
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.ctx" "Ref:prp_bulletsControlGroup.tx"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.cty" "Ref:prp_bulletsControlGroup.ty"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.ctz" "Ref:prp_bulletsControlGroup.tz"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.crx" "Ref:prp_bulletsControlGroup.rx"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.cry" "Ref:prp_bulletsControlGroup.ry"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.crz" "Ref:prp_bulletsControlGroup.rz"
		;
connectAttr "Ref:prp_bulletsControlGroup.ro" "Ref:prp_bulletsControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bulletsControlGroup.pim" "Ref:prp_bulletsControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bulletsControlGroup.rp" "Ref:prp_bulletsControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bulletsControlGroup.rpt" "Ref:prp_bulletsControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.w0" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2ik.rp" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2ik.ro" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2ik.pm" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bulletsControlGroup_parentConstraint1.w1" "Ref:prp_bulletsControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent4.out[0]" "Ref:prp_bulletsControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bulletsControlGroup_parentConstraint1.w1";
connectAttr "UpperbodyControl.t" "Ref:bip_pelvis_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "Ref:bip_pelvis_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "Ref:bip_pelvis_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "Ref:bip_pelvis_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_pointConstraint1.w0" "Ref:bip_pelvis_pointConstraint1.tg[0].tw"
		;
connectAttr "PelvisControl.r" "Ref:bip_pelvis_orientConstraint1.tg[0].tr";
connectAttr "PelvisControl.ro" "Ref:bip_pelvis_orientConstraint1.tg[0].tro";
connectAttr "PelvisControl.pm" "Ref:bip_pelvis_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_orientConstraint1.w0" "Ref:bip_pelvis_orientConstraint1.tg[0].tw"
		;
connectAttr "prp_vest_front_R_ctrl.t" "Ref:prp_vest_front_R_parentConstraint1.tg[0].tt"
		;
connectAttr "prp_vest_front_R_ctrl.rp" "Ref:prp_vest_front_R_parentConstraint1.tg[0].trp"
		;
connectAttr "prp_vest_front_R_ctrl.rpt" "Ref:prp_vest_front_R_parentConstraint1.tg[0].trt"
		;
connectAttr "prp_vest_front_R_ctrl.r" "Ref:prp_vest_front_R_parentConstraint1.tg[0].tr"
		;
connectAttr "prp_vest_front_R_ctrl.ro" "Ref:prp_vest_front_R_parentConstraint1.tg[0].tro"
		;
connectAttr "prp_vest_front_R_ctrl.s" "Ref:prp_vest_front_R_parentConstraint1.tg[0].ts"
		;
connectAttr "prp_vest_front_R_ctrl.pm" "Ref:prp_vest_front_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_vest_front_R_parentConstraint1.w0" "Ref:prp_vest_front_R_parentConstraint1.tg[0].tw"
		;
connectAttr "prp_vest_back_R_ctrl.t" "Ref:prp_vest_back_R_parentConstraint1.tg[0].tt"
		;
connectAttr "prp_vest_back_R_ctrl.rp" "Ref:prp_vest_back_R_parentConstraint1.tg[0].trp"
		;
connectAttr "prp_vest_back_R_ctrl.rpt" "Ref:prp_vest_back_R_parentConstraint1.tg[0].trt"
		;
connectAttr "prp_vest_back_R_ctrl.r" "Ref:prp_vest_back_R_parentConstraint1.tg[0].tr"
		;
connectAttr "prp_vest_back_R_ctrl.ro" "Ref:prp_vest_back_R_parentConstraint1.tg[0].tro"
		;
connectAttr "prp_vest_back_R_ctrl.s" "Ref:prp_vest_back_R_parentConstraint1.tg[0].ts"
		;
connectAttr "prp_vest_back_R_ctrl.pm" "Ref:prp_vest_back_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_vest_back_R_parentConstraint1.w0" "Ref:prp_vest_back_R_parentConstraint1.tg[0].tw"
		;
connectAttr "prp_vest_back_M_ctrl.t" "Ref:prp_vest_back_M_parentConstraint1.tg[0].tt"
		;
connectAttr "prp_vest_back_M_ctrl.rp" "Ref:prp_vest_back_M_parentConstraint1.tg[0].trp"
		;
connectAttr "prp_vest_back_M_ctrl.rpt" "Ref:prp_vest_back_M_parentConstraint1.tg[0].trt"
		;
connectAttr "prp_vest_back_M_ctrl.r" "Ref:prp_vest_back_M_parentConstraint1.tg[0].tr"
		;
connectAttr "prp_vest_back_M_ctrl.ro" "Ref:prp_vest_back_M_parentConstraint1.tg[0].tro"
		;
connectAttr "prp_vest_back_M_ctrl.s" "Ref:prp_vest_back_M_parentConstraint1.tg[0].ts"
		;
connectAttr "prp_vest_back_M_ctrl.pm" "Ref:prp_vest_back_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_vest_back_M_parentConstraint1.w0" "Ref:prp_vest_back_M_parentConstraint1.tg[0].tw"
		;
connectAttr "prp_vest_back_L_ctrl.t" "Ref:prp_vest_back_L_parentConstraint1.tg[0].tt"
		;
connectAttr "prp_vest_back_L_ctrl.rp" "Ref:prp_vest_back_L_parentConstraint1.tg[0].trp"
		;
connectAttr "prp_vest_back_L_ctrl.rpt" "Ref:prp_vest_back_L_parentConstraint1.tg[0].trt"
		;
connectAttr "prp_vest_back_L_ctrl.r" "Ref:prp_vest_back_L_parentConstraint1.tg[0].tr"
		;
connectAttr "prp_vest_back_L_ctrl.ro" "Ref:prp_vest_back_L_parentConstraint1.tg[0].tro"
		;
connectAttr "prp_vest_back_L_ctrl.s" "Ref:prp_vest_back_L_parentConstraint1.tg[0].ts"
		;
connectAttr "prp_vest_back_L_ctrl.pm" "Ref:prp_vest_back_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_vest_back_L_parentConstraint1.w0" "Ref:prp_vest_back_L_parentConstraint1.tg[0].tw"
		;
connectAttr "prp_vest_front_L_ctrl.t" "Ref:prp_vest_front_L_parentConstraint1.tg[0].tt"
		;
connectAttr "prp_vest_front_L_ctrl.rp" "Ref:prp_vest_front_L_parentConstraint1.tg[0].trp"
		;
connectAttr "prp_vest_front_L_ctrl.rpt" "Ref:prp_vest_front_L_parentConstraint1.tg[0].trt"
		;
connectAttr "prp_vest_front_L_ctrl.r" "Ref:prp_vest_front_L_parentConstraint1.tg[0].tr"
		;
connectAttr "prp_vest_front_L_ctrl.ro" "Ref:prp_vest_front_L_parentConstraint1.tg[0].tro"
		;
connectAttr "prp_vest_front_L_ctrl.s" "Ref:prp_vest_front_L_parentConstraint1.tg[0].ts"
		;
connectAttr "prp_vest_front_L_ctrl.pm" "Ref:prp_vest_front_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_vest_front_L_parentConstraint1.w0" "Ref:prp_vest_front_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_pouchControl.t" "Ref:prp_pouch_parentConstraint1.tg[0].tt";
connectAttr "Ref:prp_pouchControl.rp" "Ref:prp_pouch_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pouchControl.rpt" "Ref:prp_pouch_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pouchControl.r" "Ref:prp_pouch_parentConstraint1.tg[0].tr";
connectAttr "Ref:prp_pouchControl.ro" "Ref:prp_pouch_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pouchControl.s" "Ref:prp_pouch_parentConstraint1.tg[0].ts";
connectAttr "Ref:prp_pouchControl.pm" "Ref:prp_pouch_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pouch_parentConstraint1.w0" "Ref:prp_pouch_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_bulletsControl.t" "Ref:prp_bullets_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bulletsControl.rp" "Ref:prp_bullets_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bulletsControl.rpt" "Ref:prp_bullets_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bulletsControl.r" "Ref:prp_bullets_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bulletsControl.ro" "Ref:prp_bullets_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bulletsControl.s" "Ref:prp_bullets_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bulletsControl.pm" "Ref:prp_bullets_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullets_parentConstraint1.w0" "Ref:prp_bullets_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_gunPackControl.t" "Ref:prp_gunPack_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_gunPackControl.rp" "Ref:prp_gunPack_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_gunPackControl.rpt" "Ref:prp_gunPack_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_gunPackControl.r" "Ref:prp_gunPack_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_gunPackControl.ro" "Ref:prp_gunPack_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_gunPackControl.s" "Ref:prp_gunPack_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_gunPackControl.pm" "Ref:prp_gunPack_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_gunPack_parentConstraint1.w0" "Ref:prp_gunPack_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_hatControl.t" "Ref:prp_hat_parentConstraint1.tg[0].tt";
connectAttr "Ref:prp_hatControl.rp" "Ref:prp_hat_parentConstraint1.tg[0].trp";
connectAttr "Ref:prp_hatControl.rpt" "Ref:prp_hat_parentConstraint1.tg[0].trt";
connectAttr "Ref:prp_hatControl.r" "Ref:prp_hat_parentConstraint1.tg[0].tr";
connectAttr "Ref:prp_hatControl.ro" "Ref:prp_hat_parentConstraint1.tg[0].tro";
connectAttr "Ref:prp_hatControl.s" "Ref:prp_hat_parentConstraint1.tg[0].ts";
connectAttr "Ref:prp_hatControl.pm" "Ref:prp_hat_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_hat_parentConstraint1.w0" "Ref:prp_hat_parentConstraint1.tg[0].tw"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupParts10.og" "RefRN.phl[9131]";
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
connectAttr "Ref:prp_pouchControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_gunPackControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_hatControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_sunglassesControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bulletsControl.iog" "plotted.dsm" -na;
connectAttr "lHandControl.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "hand_R.msg" "plotted.dnsm" -na;
connectAttr "hand_L.msg" "plotted.dnsm" -na;
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
connectAttr "cluster1GroupParts.og" "ikChestClusterCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "ikChestClusterCluster.ip[0].gi";
connectAttr "ikChestCluster.wm" "ikChestClusterCluster.ma";
connectAttr "ikChestClusterShape.x" "ikChestClusterCluster.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "ikChestClusterCluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "SpineCurveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "SpineCurveShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "ikPelvisClusterCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "ikPelvisClusterCluster.ip[0].gi";
connectAttr "ikPelvisCluster.wm" "ikPelvisClusterCluster.ma";
connectAttr "ikPelvisClusterShape.x" "ikPelvisClusterCluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "ikPelvisClusterCluster.msg" "cluster2Set.ub[0]";
connectAttr "ikChestClusterCluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
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
connectAttr "Ref:prp_hatControl.parent" "switch_prp_hatControl_to_space_0.ft";
connectAttr "Ref:prp_hatControl.parent" "switch_prp_hatControl_to_space_1.ft";
connectAttr "Ref:prp_hatControl.parent" "switch_prp_hatControl_to_space_2.ft";
connectAttr "Ref:prp_hatControl.parent" "switch_prp_hatControl_to_space_3.ft";
connectAttr "Ref:prp_hatControl.parent" "switch_prp_hatControl_to_space_4.ft";
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
connectAttr "Ref:bip_thumb_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "lHandControl.iog" "hand_L.dsm" -na;
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
connectAttr "rHandControl.iog" "hand_R.dsm" -na;
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "switch_prp_hatControl_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_prp_hatControl_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_prp_hatControl_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_prp_hatControl_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_prp_hatControl_to_space_4.msg" ":defaultRenderUtilityList1.u"
		 -na;
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
connectAttr "Ref:prp_pouchControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_gunPackControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_hatControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_sunglassesControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_bulletsControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsSphereShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsSphereShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsSphereShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of sniper_rig.ma
