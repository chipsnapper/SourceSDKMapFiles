//Maya ASCII 2008 scene
//Name: medic_rig.ma
//Last modified: Thu, Oct 08, 2009 08:44:03 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "medic_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "medic_reference.ma";
requires maya "2008";
requires "vstUtils" "1.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 2008";
fileInfo "version" "2008 Extension 2";
fileInfo "cutIdentifier" "200802250025-718075";
fileInfo "osv" "Microsoft Windows XP Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -49.892507234014822 89.307913641781681 107.74099383925054 ;
	setAttr ".r" -type "double3" -19.538352729297824 338.20000000036765 -8.5638213028514258e-016 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-014 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.7854687470767118e-014 -1.4208836651398071e-015 
		-7.3152503862068466e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 121.69520360433066;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1102230246251565e-016 78.958720999999954 11.336430000000007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1500.0999999999999 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1500.0999999999999 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1501.5538615018602 65.016393718226283 -7.4191780513521195 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 15.629950810192923;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 1 1 no 
		2 0 2
		9 0 0.76536686473017945 1.5307337294603589 2.2961005941905386 3.0614674589207183
		 3.8268343236508975 4.5922011883810772 5.3575680531112564 6.1229349178414356
		
		18
		23 -2.2999999999999998e-011 -2.8165946137914677e-015
		16.263455967290593 -2.2999999999999998e-011 16.263455967290593
		6.5153232201714539e-015 -2.2999999999999998e-011 23
		-16.263455967290589 -2.2999999999999998e-011 16.263455967290597
		-23 -2.2999999999999998e-011 6.3837823915946501e-015
		-16.2634559672906 -2.2999999999999998e-011 -16.263455967290586
		-1.1622349133447174e-014 -2.2999999999999998e-011 -23
		16.263455967290582 -2.2999999999999998e-011 -16.263455967290604
		23 -2.2999999999999998e-011 -1.8137672353618628e-014
		23 -2.2999999999999998e-011 -2.8165946137914677e-015
		16.263455967290593 2.2999999999999998e-011 16.263455967290593
		6.5153232201714539e-015 2.2999999999999998e-011 23
		-16.263455967290589 2.2999999999999998e-011 16.263455967290597
		-23 2.2999999999999998e-011 9.2003770053861178e-015
		-16.2634559672906 2.2999999999999998e-011 -16.263455967290586
		-1.1622349133447174e-014 2.2999999999999998e-011 -23
		16.263455967290582 2.2999999999999998e-011 -16.263455967290604
		23 -2.2999999999999998e-011 -1.8137672353618628e-014
		
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
	setAttr ".rp" -type "double3" 0 48.466883614744376 0 ;
	setAttr ".sp" -type "double3" 0 48.466883614744376 0 ;
	setAttr ".hdl" -type "double3" 0 48.466883614744376 0 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 0.25 0.25 0.25
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		8.6197278738034626 47.091883614744376 -8.619727873803475
		12.190136063098267 47.091883614744376 1.3065817317366659e-015
		8.6197278738034662 47.091883614744376 8.6197278738034662
		3.7995192215606524e-015 47.091883614744376 12.190136063098267
		-8.6197278738034662 47.091883614744376 8.6197278738034697
		-12.190136063098269 47.091883614744376 4.0206388665072821e-015
		-8.6197278738034679 47.091883614744376 -8.6197278738034626
		-6.5473212075079149e-015 47.091883614744376 -12.190136063098267
		8.6197278738034626 47.091883614744376 -8.619727873803475
		12.190136063098267 47.091883614744376 1.3065817317366659e-015
		8.6197278738034662 47.091883614744376 8.6197278738034662
		8.6197278738034626 48.00855028141104 -8.619727873803475
		12.190136063098267 48.00855028141104 1.3627095229535249e-015
		8.6197278738034662 48.00855028141104 8.6197278738034662
		3.7995192215606524e-015 48.00855028141104 12.190136063098267
		-8.6197278738034662 48.00855028141104 8.6197278738034697
		-12.190136063098269 48.00855028141104 4.076766657724141e-015
		-8.6197278738034679 48.00855028141104 -8.6197278738034626
		-6.5473212075079149e-015 48.00855028141104 -12.190136063098267
		8.6197278738034626 48.00855028141104 -8.619727873803475
		12.190136063098267 48.00855028141104 1.3627095229535249e-015
		8.6197278738034662 48.00855028141104 8.6197278738034662
		8.6197278738034626 48.925216948077711 -8.619727873803475
		12.190136063098267 48.925216948077711 1.4188373141703839e-015
		8.6197278738034662 48.925216948077711 8.6197278738034662
		3.7995192215606524e-015 48.925216948077711 12.190136063098267
		-8.6197278738034662 48.925216948077711 8.6197278738034697
		-12.190136063098269 48.925216948077711 4.132894448941e-015
		-8.6197278738034679 48.925216948077711 -8.6197278738034626
		-6.5473212075079149e-015 48.925216948077711 -12.190136063098267
		8.6197278738034626 48.925216948077711 -8.619727873803475
		12.190136063098267 48.925216948077711 1.4188373141703839e-015
		8.6197278738034662 48.925216948077711 8.6197278738034662
		8.6197278738034626 49.841883614744376 -8.619727873803475
		12.190136063098267 49.841883614744376 1.4749651053872428e-015
		8.6197278738034662 49.841883614744376 8.6197278738034662
		3.7995192215606524e-015 49.841883614744376 12.190136063098267
		-8.6197278738034662 49.841883614744376 8.6197278738034697
		-12.190136063098269 49.841883614744376 4.1890222401578589e-015
		-8.6197278738034679 49.841883614744376 -8.6197278738034626
		-6.5473212075079149e-015 49.841883614744376 -12.190136063098267
		8.6197278738034626 49.841883614744376 -8.619727873803475
		12.190136063098267 49.841883614744376 1.4749651053872428e-015
		8.6197278738034662 49.841883614744376 8.6197278738034662
		
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
	setAttr ".t" -type "double3" 0 48.466883614744376 0 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1.5 1.5 1.5
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-2.9703818949968185e-015 -5.8124402904621517 -11.624880580924305
		11.624880580924305 -5.8124402904621526 -1.0676926966369703e-015
		1.5722091363886489e-015 -5.8124402904621535 11.624880580924305
		-11.624880580924305 -5.8124402904621526 1.6465185734916597e-015
		-2.9703818949968185e-015 -5.8124402904621517 -11.624880580924305
		11.624880580924305 -5.8124402904621526 -1.0676926966369703e-015
		1.5722091363886489e-015 -5.8124402904621535 11.624880580924305
		-2.9703818949968185e-015 -1.9374800968207169 -11.624880580924305
		11.624880580924305 -1.9374800968207175 -8.3042765293986588e-016
		1.5722091363886489e-015 -1.9374800968207182 11.624880580924305
		-11.624880580924305 -1.9374800968207175 1.8837836171887642e-015
		-2.9703818949968185e-015 -1.9374800968207169 -11.624880580924305
		11.624880580924305 -1.9374800968207175 -8.3042765293986588e-016
		1.5722091363886489e-015 -1.9374800968207182 11.624880580924305
		-2.9703818949968185e-015 1.9374800968207182 -11.624880580924305
		11.624880580924305 1.9374800968207175 -5.9316260924276126e-016
		1.5722091363886489e-015 1.9374800968207169 11.624880580924305
		-11.624880580924305 1.9374800968207175 2.121048660885869e-015
		-2.9703818949968185e-015 1.9374800968207182 -11.624880580924305
		11.624880580924305 1.9374800968207175 -5.9316260924276126e-016
		1.5722091363886489e-015 1.9374800968207169 11.624880580924305
		-2.9703818949968185e-015 5.8124402904621535 -11.624880580924305
		11.624880580924305 5.8124402904621526 -3.5589756554565678e-016
		1.5722091363886489e-015 5.8124402904621517 11.624880580924305
		-11.624880580924305 5.8124402904621526 2.3583137045829734e-015
		-2.9703818949968185e-015 5.8124402904621535 -11.624880580924305
		11.624880580924305 5.8124402904621526 -3.5589756554565678e-016
		1.5722091363886489e-015 5.8124402904621517 11.624880580924305
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 4.2690535647186891 -0.30427148361883755 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -52.735937179463065 0.30427148361883755 ;
	setAttr ".rp" -type "double3" 0 52.735937179463065 -0.30427148361883755 ;
	setAttr ".sp" -type "double3" 0 52.735937179463065 -0.30427148361883755 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55.683598670253481 -0.62275958705167245 ;
createNode transform -n "Ref:prp_hippouch_0_LControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 22.784489333183366 -46.343450509990234 -3.5681163579838584 ;
	setAttr ".r" -type "double3" 174.56500925726797 -67.271491100558094 -165.02610518376801 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 7.446070934542961 52.749230989522523 3.7772587632482129 ;
	setAttr ".rpt" -type "double3" -22.784489333183345 -2.1234331047541266 3.5681163579838611 ;
	setAttr ".sp" -type "double3" 7.4460709345429592 52.749230989522523 3.777258763248212 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 0 8.8817841970012543e-016 ;
createNode transform -n "Ref:prp_hippouch_0_LControl" -p "Ref:prp_hippouch_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 7.4460709345429592 52.749230989522523 3.777258763248212 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_hippouch_0_LControlShape" -p "Ref:prp_hippouch_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.6655804100156377e-016 -6.6323659506331045e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-3 0 3.9429722507866583e-016
		-7.6655804100156377e-016 -6.6323659506331045e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-7.6655804100156377e-016 -3.9826027765141356 -3
		3 -3.9826027765141356 -2.2451116486743583e-016
		4.057355579983879e-016 -3.9826027765141343 3
		-3 -3.9826027765141356 4.7593764866682431e-016
		-7.6655804100156377e-016 -3.9826027765141356 -3
		3 -3.9826027765141356 -2.2451116486743583e-016
		4.057355579983879e-016 -3.9826027765141343 3
		-7.6655804100156377e-016 -7.9652055530282713 -3
		3 -7.9652055530282704 -1.4287074127927735e-016
		4.057355579983879e-016 -7.9652055530282704 3
		-3 -7.9652055530282704 5.5757807225498279e-016
		-7.6655804100156377e-016 -7.9652055530282713 -3
		3 -7.9652055530282704 -1.4287074127927735e-016
		4.057355579983879e-016 -7.9652055530282704 3
		-7.6655804100156377e-016 -11.947808329542406 -3
		3 -11.947808329542406 -6.1230317691118863e-017
		4.057355579983879e-016 -11.947808329542406 3
		-3 -11.947808329542406 6.3921849584314128e-016
		-7.6655804100156377e-016 -11.947808329542406 -3
		3 -11.947808329542406 -6.1230317691118863e-017
		4.057355579983879e-016 -11.947808329542406 3
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_hippouch_0_BControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 5.9240994458474159 -48.015737689278673 -2.7595392448915215 ;
	setAttr ".r" -type "double3" 2.0660087939738974 16.495410719931733 5.6906285484142174 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -2.6258317511768809 52.406648584439381 -4.844799485213823 ;
	setAttr ".rpt" -type "double3" -5.9240994458474168 -0.45114592546570986 2.7595392448915228 ;
	setAttr ".sp" -type "double3" -2.6258317511768814 52.406648584439381 -4.844799485213823 ;
	setAttr ".spt" -type "double3" 4.4408920985006257e-016 0 0 ;
createNode transform -n "Ref:prp_hippouch_0_BControl" -p "Ref:prp_hippouch_0_BControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" -2.6258317511768814 52.406648584439381 -4.844799485213823 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_hippouch_0_BControlShape" -p "Ref:prp_hippouch_0_BControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.6655804100156377e-016 -3.5567024545948404e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-3 0 3.9429722507866583e-016
		-7.6655804100156377e-016 -3.5567024545948404e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-7.6655804100156377e-016 -2.1357285132241404 -3
		3 -2.1357285132241404 -2.2451116486743583e-016
		4.057355579983879e-016 -2.1357285132241399 3
		-3 -2.1357285132241404 4.7593764866682431e-016
		-7.6655804100156377e-016 -2.1357285132241404 -3
		3 -2.1357285132241404 -2.2451116486743583e-016
		4.057355579983879e-016 -2.1357285132241399 3
		-7.6655804100156377e-016 -4.2714570264482807 -3
		3 -4.2714570264482798 -1.4287074127927735e-016
		4.057355579983879e-016 -4.2714570264482798 3
		-3 -4.2714570264482798 5.5757807225498279e-016
		-7.6655804100156377e-016 -4.2714570264482807 -3
		3 -4.2714570264482798 -1.4287074127927735e-016
		4.057355579983879e-016 -4.2714570264482798 3
		-7.6655804100156377e-016 -6.4071855396724207 -3
		3 -6.4071855396724207 -6.1230317691118863e-017
		4.057355579983879e-016 -6.4071855396724207 3
		-3 -6.4071855396724207 6.3921849584314128e-016
		-7.6655804100156377e-016 -6.4071855396724207 -3
		3 -6.4071855396724207 -6.1230317691118863e-017
		4.057355579983879e-016 -6.4071855396724207 3
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 172.10239646194759 0 0 ;
	setAttr ".rp" -type "double3" 0 52.735937179463072 -0.30427148361883855 ;
	setAttr ".sp" -type "double3" 0 52.735937179463072 -0.30427148361883855 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 52.735937179463072 -0.30427148361883855 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".r" -type "double3" -1.9194080173407213 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.2171132690345132 2.4424906541753444e-015 ;
	setAttr ".sp" -type "double3" 0 -6.2171132690345132 2.4424906541753444e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.2171132690345132 2.4424906541753444e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".r" -type "double3" 16.55282577619348 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.0887999494348932 -2.2204460492503131e-015 ;
	setAttr ".sp" -type "double3" 0 -6.0887999494348932 -2.2204460492503131e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.0887999494348932 -2.2204460492503131e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".r" -type "double3" 5.2406665034655884 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.102508571299893 -4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" 0 -5.102508571299893 -4.4408920985006262e-016 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.102508571299893 -4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
createNode transform -n "prp_backpackHosePt" -p "Ref:bip_spine_2FKcontrol";
	setAttr ".t" -type "double3" -4.237214 6.045597638420162 5.8828466428279951 ;
	setAttr ".r" -type "double3" 173.26418577919966 0 0 ;
createNode locator -n "prp_backpackHosePtShape" -p "prp_backpackHosePt";
	setAttr -k off ".v";
createNode transform -n "BackPackControl" -p "Ref:bip_spine_2FKcontrol";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 64.188147493059944 -9.7929965697986496 ;
	setAttr ".r" -type "double3" 173.26418577919966 0 0 ;
	setAttr ".rp" -type "double3" 0 65.447501516394752 -6.4305892738342436 ;
	setAttr ".rpt" -type "double3" 0 -129.68899984897755 20.493228611171055 ;
	setAttr ".sp" -type "double3" 0 65.447501516394752 -6.4305892738342454 ;
createNode nurbsSurface -n "BackPackControlShape" -p "BackPackControl";
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
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		-13.892229814194421 75.390039767984319 -8.9785041298341426
		-13.892229814194421 68.761680933591279 -8.9785041298341444
		-13.892229814194421 62.133322099198232 -8.9785041298341444
		-13.892229814194421 55.504963264805184 -8.9785041298341461
		-4.6307432713981411 75.390039767984319 -8.9785041298341426
		-4.6307432713981411 68.761680933591279 -8.9785041298341444
		-4.6307432713981411 62.133322099198232 -8.9785041298341444
		-4.6307432713981411 55.504963264805184 -8.9785041298341461
		4.6307432713981393 75.390039767984319 -8.9785041298341426
		4.6307432713981393 68.761680933591279 -8.9785041298341444
		4.6307432713981393 62.133322099198232 -8.9785041298341444
		4.6307432713981393 55.504963264805184 -8.9785041298341461
		13.892229814194421 75.390039767984319 -8.9785041298341426
		13.892229814194421 68.761680933591279 -8.9785041298341444
		13.892229814194421 62.133322099198232 -8.9785041298341444
		13.892229814194421 55.504963264805184 -8.9785041298341461
		
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
	setAttr ".rp" -type "double3" 0 69.961014679075859 -1.5981942058520004 ;
	setAttr ".sp" -type "double3" 0 69.961014679075859 -1.5981942058520004 ;
createNode nurbsSurface -n "ikChestShape" -p "ikChest";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChestCluster" -p "ikChest";
	setAttr ".v" no;
createNode clusterHandle -n "ikChestClusterShape" -p "ikChestCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 66.993823125053652 -2.1635321933251777 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.10124865901620393 -19.147952756929445 -0.60027060181265657 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.4686360370963882 19.539181360636412 0.036836249125399866 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -18.403040819350871 -6.6613381477509392e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 5.8857421954088862e-014 3.6030169115706729e-023 6.2794774472150466e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.2838966317096605 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2515067204788011e-008 -20.444105820935189 -1.7649361971905364e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.1797461123333994 8.9025831737120704 17.031230952230487 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -63.525276935459431 3.3746294706528146 -0.55454566046518861 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -7.378477346624015 3.7747582837255322e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.9830649401881365e-022 -1.2074182697257333e-006 -1.7394460126245295e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -35.230235293910113 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -5.3848123079111065 -7.7575354842552552e-016 ;
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
	setAttr ".rst" -type "double3" 5.8124405809158732 44.018714002370182 1.6653345369377348e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 5.4686360370963927 19.539181360636423 0.036836249125400095 ;
	setAttr ".rp" -type "double3" 5.8124405809158732 44.018714002370182 1.6653345369377348e-016 ;
	setAttr ".sp" -type "double3" 5.8124405809158732 44.018714002370182 1.6653345369377348e-016 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -1.0215739820379975e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0215739820379975e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.1343469397836268 -6
		6 -6.1343469397836268 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.1343469397836241 6
		-6 -6.1343469397836268 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.1343469397836268 -6
		6 -6.1343469397836268 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.1343469397836241 6
		-1.5331160820031275e-015 -12.268693879567254 -6
		6 -12.268693879567252 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.268693879567252 6
		-6 -12.268693879567252 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.268693879567254 -6
		6 -12.268693879567252 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.268693879567252 6
		-1.5331160820031275e-015 -18.403040819350878 -6
		6 -18.403040819350878 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.403040819350878 6
		-6 -18.403040819350878 1.2784369916862826e-015
		-1.5331160820031275e-015 -18.403040819350878 -6
		6 -18.403040819350878 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.403040819350878 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 3.2838966317096601 0 0 ;
	setAttr ".rp" -type "double3" 1.8873791418627661e-015 -18.403040819350878 -4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" 1.8873791418627661e-015 -18.403040819350878 -4.4408920985006262e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.8873791418627661e-015 -18.403040819350878 -4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -1.1348758500137713e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.1348758500137713e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.8147019403117284 -6
		6 -6.8147019403117284 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.8147019403117257 6
		-6 -6.8147019403117284 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.8147019403117284 -6
		6 -6.8147019403117284 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.8147019403117257 6
		-1.5331160820031275e-015 -13.629403880623457 -6
		6 -13.629403880623453 -2.8574148255855469e-016
		8.1147111599677579e-016 -13.629403880623453 6
		-6 -13.629403880623453 1.1151561445099656e-015
		-1.5331160820031275e-015 -13.629403880623457 -6
		6 -13.629403880623453 -2.8574148255855469e-016
		8.1147111599677579e-016 -13.629403880623453 6
		-1.5331160820031275e-015 -20.444105820935182 -6
		6 -20.444105820935182 -1.2246063538223773e-016
		8.1147111599677579e-016 -20.444105820935182 6
		-6 -20.444105820935182 1.2784369916862826e-015
		-1.5331160820031275e-015 -20.444105820935182 -6
		6 -20.444105820935182 -1.2246063538223773e-016
		8.1147111599677579e-016 -20.444105820935182 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -63.525276935459416 3.3746294706528182 -0.55454566046518838 ;
	setAttr ".rp" -type "double3" 1.2515067648877221e-008 -20.444105820935182 -1.7649339767444872e-009 ;
	setAttr ".sp" -type "double3" 1.2515067648877221e-008 -20.444105820935182 -1.7649339767444872e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2515067648877221e-008 -20.444105820935182 -1.7649339767444872e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -4.0958777184485577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -4.0958777184485577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.4594924488746726 -6
		6 -2.4594924488746726 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.4594924488746717 6
		-6 -2.4594924488746726 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.4594924488746726 -6
		6 -2.4594924488746726 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.4594924488746717 6
		-1.5331160820031275e-015 -4.9189848977493451 -6
		6 -4.9189848977493442 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.9189848977493442 6
		-6 -4.9189848977493442 1.1151561445099656e-015
		-1.5331160820031275e-015 -4.9189848977493451 -6
		6 -4.9189848977493442 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.9189848977493442 6
		-1.5331160820031275e-015 -7.3784773466240168 -6
		6 -7.3784773466240168 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.3784773466240168 6
		-6 -7.3784773466240168 1.2784369916862826e-015
		-1.5331160820031275e-015 -7.3784773466240168 -6
		6 -7.3784773466240168 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.3784773466240168 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -35.23023529391012 1.590277340731758e-015 3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" 1.27675647831893e-015 -7.3784773466240177 1.3322676295501878e-015 ;
	setAttr ".sp" -type "double3" 1.27675647831893e-015 -7.3784773466240177 1.3322676295501878e-015 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.27675647831893e-015 -7.3784773466240177 1.3322676295501878e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -2.9891713037639192e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.9891713037639192e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.7949374359703691 -6
		6 -1.7949374359703691 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.7949374359703685 6
		-6 -1.7949374359703691 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.7949374359703691 -6
		6 -1.7949374359703691 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.7949374359703685 6
		-1.5331160820031275e-015 -3.5898748719407383 -6
		6 -3.5898748719407374 -2.8574148255855469e-016
		8.1147111599677579e-016 -3.5898748719407374 6
		-6 -3.5898748719407374 1.1151561445099656e-015
		-1.5331160820031275e-015 -3.5898748719407383 -6
		6 -3.5898748719407374 -2.8574148255855469e-016
		8.1147111599677579e-016 -3.5898748719407374 6
		-1.5331160820031275e-015 -5.3848123079111065 -6
		6 -5.3848123079111065 -1.2246063538223773e-016
		8.1147111599677579e-016 -5.3848123079111065 6
		-6 -5.3848123079111065 1.2784369916862826e-015
		-1.5331160820031275e-015 -5.3848123079111065 -6
		6 -5.3848123079111065 -1.2246063538223773e-016
		8.1147111599677579e-016 -5.3848123079111065 6
		
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
	setAttr ".rst" -type "double3" 5.8124405809158741 44.018714002370189 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.10125132748817055 -19.148072576487049 -0.60027600168340467 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.53136396290364 -19.539181360636345 -0.036836249125399637 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.1846413744697202e-006 18.402988200641602 6.4402032300403533e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.2838966317096601 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.1096759651491084e-008 20.444140644139441 -6.717560367297537e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.1797603340710421 8.9026339607953346 17.031337597731284 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -63.525276935459324 3.374629470652823 -0.55454566046517639 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.9024070640204513e-006 7.37848235054987 3.9573852099739071e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -35.230235293910091 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.4066021951394418e-006 5.3848149856871226 -4.4182968833099545e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
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
	setAttr ".rst" -type "double3" -5.81244 44.0187 6.106226635438361e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -174.53136396290364 -19.539181360636363 -0.036836249125399977 ;
	setAttr ".rp" -type "double3" -5.81244 44.0187 6.106226635438361e-016 ;
	setAttr ".sp" -type "double3" -5.81244 44.0187 6.106226635438361e-016 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 1.0215710611129389e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0215710611129389e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.1343294002142859 -6
		6 6.1343294002142859 -4.4902232973487166e-016
		8.1147111599677579e-016 6.1343294002142841 6
		-6 6.1343294002142859 9.5187529733364862e-016
		-1.5331160820031275e-015 6.1343294002142859 -6
		6 6.1343294002142859 -4.4902232973487166e-016
		8.1147111599677579e-016 6.1343294002142841 6
		-1.5331160820031275e-015 12.268658800428572 -6
		6 12.26865880042857 -2.8574148255855469e-016
		8.1147111599677579e-016 12.26865880042857 6
		-6 12.26865880042857 1.1151561445099656e-015
		-1.5331160820031275e-015 12.268658800428572 -6
		6 12.26865880042857 -2.8574148255855469e-016
		8.1147111599677579e-016 12.26865880042857 6
		-1.5331160820031275e-015 18.402988200642856 -6
		6 18.402988200642856 -1.2246063538223773e-016
		8.1147111599677579e-016 18.402988200642856 6
		-6 18.402988200642856 1.2784369916862826e-015
		-1.5331160820031275e-015 18.402988200642856 -6
		6 18.402988200642856 -1.2246063538223773e-016
		8.1147111599677579e-016 18.402988200642856 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 3.2838966317096596 0 -3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" -2.1846413742476756e-006 18.402988200641595 6.4402032307064871e-006 ;
	setAttr ".sp" -type "double3" -2.1846413742476756e-006 18.402988200641595 6.4402032307064871e-006 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.1846413742476756e-006 18.402988200641595 6.4402032307064871e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 1.1348777830899907e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.1348777830899907e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.8147135480468499 -6
		6 6.8147135480468499 -4.4902232973487166e-016
		8.1147111599677579e-016 6.8147135480468473 6
		-6 6.8147135480468499 9.5187529733364862e-016
		-1.5331160820031275e-015 6.8147135480468499 -6
		6 6.8147135480468499 -4.4902232973487166e-016
		8.1147111599677579e-016 6.8147135480468473 6
		-1.5331160820031275e-015 13.6294270960937 -6
		6 13.629427096093696 -2.8574148255855469e-016
		8.1147111599677579e-016 13.629427096093696 6
		-6 13.629427096093696 1.1151561445099656e-015
		-1.5331160820031275e-015 13.6294270960937 -6
		6 13.629427096093696 -2.8574148255855469e-016
		8.1147111599677579e-016 13.629427096093696 6
		-1.5331160820031275e-015 20.444140644140546 -6
		6 20.444140644140546 -1.2246063538223773e-016
		8.1147111599677579e-016 20.444140644140546 6
		-6 20.444140644140546 1.2784369916862826e-015
		-1.5331160820031275e-015 20.444140644140546 -6
		6 20.444140644140546 -1.2246063538223773e-016
		8.1147111599677579e-016 20.444140644140546 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -63.525276935459324 3.374629470652827 -0.55454566046517662 ;
	setAttr ".rp" -type "double3" -6.1096759429446479e-008 20.444140644139445 -6.717560367297537e-006 ;
	setAttr ".sp" -type "double3" -6.1096759429446479e-008 20.444140644139445 -6.717560367297537e-006 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.1096759429446479e-008 20.444140644139445 -6.717560367297537e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 4.0958804961863113e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 4.0958804961863113e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.4594941168505007 -6
		6 2.4594941168505007 -4.4902232973487166e-016
		8.1147111599677579e-016 2.4594941168504998 6
		-6 2.4594941168505007 9.5187529733364862e-016
		-1.5331160820031275e-015 2.4594941168505007 -6
		6 2.4594941168505007 -4.4902232973487166e-016
		8.1147111599677579e-016 2.4594941168504998 6
		-1.5331160820031275e-015 4.9189882337010014 -6
		6 4.9189882337010005 -2.8574148255855469e-016
		8.1147111599677579e-016 4.9189882337010005 6
		-6 4.9189882337010005 1.1151561445099656e-015
		-1.5331160820031275e-015 4.9189882337010014 -6
		6 4.9189882337010005 -2.8574148255855469e-016
		8.1147111599677579e-016 4.9189882337010005 6
		-1.5331160820031275e-015 7.3784823505515016 -6
		6 7.3784823505515016 -1.2246063538223773e-016
		8.1147111599677579e-016 7.3784823505515016 6
		-6 7.3784823505515016 1.2784369916862826e-015
		-1.5331160820031275e-015 7.3784823505515016 -6
		6 7.3784823505515016 -1.2246063538223773e-016
		8.1147111599677579e-016 7.3784823505515016 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -35.230235293910091 1.590277340731758e-015 3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" -2.9024070623551168e-006 7.3784823505498718 3.9573852059771042e-006 ;
	setAttr ".sp" -type "double3" -2.9024070623551168e-006 7.3784823505498718 3.9573852059771042e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.9024070623551168e-006 7.3784823505498718 3.9573852059771042e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 2.9891727902292135e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.9891727902292135e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.7949383285629752 -6
		6 1.7949383285629752 -4.4902232973487166e-016
		8.1147111599677579e-016 1.7949383285629745 6
		-6 1.7949383285629752 9.5187529733364862e-016
		-1.5331160820031275e-015 1.7949383285629752 -6
		6 1.7949383285629752 -4.4902232973487166e-016
		8.1147111599677579e-016 1.7949383285629745 6
		-1.5331160820031275e-015 3.5898766571259504 -6
		6 3.5898766571259495 -2.8574148255855469e-016
		8.1147111599677579e-016 3.5898766571259495 6
		-6 3.5898766571259495 1.1151561445099656e-015
		-1.5331160820031275e-015 3.5898766571259504 -6
		6 3.5898766571259495 -2.8574148255855469e-016
		8.1147111599677579e-016 3.5898766571259495 6
		-1.5331160820031275e-015 5.3848149856889247 -6
		6 5.3848149856889247 -1.2246063538223773e-016
		8.1147111599677579e-016 5.3848149856889247 6
		-6 5.3848149856889247 1.2784369916862826e-015
		-1.5331160820031275e-015 5.3848149856889247 -6
		6 5.3848149856889247 -1.2246063538223773e-016
		8.1147111599677579e-016 5.3848149856889247 6
		
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
	setAttr ".rst" -type "double3" -5.8124399999999987 44.0187 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode joint -n "control_coatFront0L_0" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.766699 48.711914 6.544607 ;
	setAttr ".r" -type "double3" 4.0363696750087321 18.702977083884765 24.156350958275848 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
createNode joint -n "control_coatFront0L_1" -p "control_coatFront0L_0";
	setAttr ".t" -type "double3" 10.567255000000003 -2.2204460492503131e-015 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
createNode ikEffector -n "effector10" -p "control_coatFront0L_0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "ikHandle1";
	addAttr -ci true -k true -sn "w0" -ln "coatLControlW0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr -k on ".w0";
createNode transform -n "locatorKneeL" -p "UpperbodyControl";
	setAttr ".rp" -type "double3" 5.055804 25.702795 -1.62065 ;
	setAttr ".sp" -type "double3" 5.055804 25.702795 -1.62065 ;
createNode locator -n "locatorKneeLShape" -p "locatorKneeL";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 5.055804 25.702795 -1.62065 ;
createNode transform -n "coatLControl" -p "locatorKneeL";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr ".sp" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr ".hdl" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr ".dh" yes;
createNode nurbsSurface -n "coatLControlShape" -p "coatLControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 1.7970158282201787
		8.8557511717798221 38.680284999999998 2.8576760000000001
		7.7950910000000002 38.680284999999998 3.9183361717798215
		6.7344308282201784 38.680284999999998 2.8576760000000001
		7.7950910000000002 38.680284999999998 1.7970158282201787
		8.8557511717798221 38.680284999999998 2.8576760000000001
		7.7950910000000002 38.680284999999998 3.9183361717798215
		7.7950909999999993 40.180284999999998 -0.58166382822017804
		11.234430828220178 40.180284999999998 2.8576760000000001
		7.7950910000000002 40.180284999999998 6.2970158282201787
		4.3557511717798221 40.180284999999998 2.8576760000000001
		7.7950909999999993 40.180284999999998 -0.58166382822017804
		11.234430828220178 40.180284999999998 2.8576760000000001
		7.7950910000000002 40.180284999999998 6.2970158282201787
		7.7950910000000002 41.680284999999998 1.7970158282201789
		8.8557511717798221 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 3.9183361717798215
		6.7344308282201792 41.680284999999998 2.8576760000000001
		7.7950910000000002 41.680284999999998 1.7970158282201789
		8.8557511717798221 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 3.9183361717798215
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "locatorKneeL_parentConstraint1" -p "locatorKneeL";
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
	setAttr ".tg[0].tot" -type "double3" -0.18213277672677375 -18.402113414597814 -0.030720797287325574 ;
	setAttr ".tg[0].tor" -type "double3" -5.7876476113816233 -19.450379782209104 1.8982058851970078 ;
	setAttr ".lr" -type "double3" -0.42748140437899707 -19.017146754360134 -2.2111714721459919 ;
	setAttr ".rst" -type "double3" 0 1.0658141036401503e-014 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587919e-016 3.713300338592582e-015 
		6.6747735756821247e-017 ;
	setAttr -k on ".w0";
createNode joint -n "control_coatFront0R_0" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.766699 48.711914 6.544607 ;
	setAttr ".r" -type "double3" -4.0363618199033775 18.702971878574775 -24.156309542097826 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
createNode joint -n "control_coatFront0R_1" -p "control_coatFront0R_0";
	setAttr ".t" -type "double3" 10.567255000000003 -2.2204460492503131e-015 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
createNode ikEffector -n "effector11" -p "control_coatFront0R_0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle2" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "ikHandle2_pointConstraint1" -p "ikHandle2";
	addAttr -ci true -k true -sn "w0" -ln "coatRControlW0" -bt "W000" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr -k on ".w0";
createNode transform -n "locatorKneeR" -p "UpperbodyControl";
	setAttr ".rp" -type "double3" -5.055804 25.702795 -1.62065 ;
	setAttr ".sp" -type "double3" -5.055804 25.702795 -1.62065 ;
createNode locator -n "locatorKneeRShape" -p "locatorKneeR";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -5.055804 25.702795 -1.62065 ;
createNode transform -n "coatRControl" -p "locatorKneeR";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr ".sp" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr ".hdl" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr ".dh" yes;
createNode nurbsSurface -n "coatRControlShape" -p "coatRControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 1.7970158282201787
		-6.7344308282201784 38.680284999999998 2.8576760000000001
		-7.7950910000000002 38.680284999999998 3.9183361717798215
		-8.8557511717798221 38.680284999999998 2.8576760000000001
		-7.7950910000000002 38.680284999999998 1.7970158282201787
		-6.7344308282201784 38.680284999999998 2.8576760000000001
		-7.7950910000000002 38.680284999999998 3.9183361717798215
		-7.7950910000000011 40.180284999999998 -0.58166382822017804
		-4.3557511717798221 40.180284999999998 2.8576760000000001
		-7.7950910000000002 40.180284999999998 6.2970158282201787
		-11.234430828220178 40.180284999999998 2.8576760000000001
		-7.7950910000000011 40.180284999999998 -0.58166382822017804
		-4.3557511717798221 40.180284999999998 2.8576760000000001
		-7.7950910000000002 40.180284999999998 6.2970158282201787
		-7.7950910000000002 41.680284999999998 1.7970158282201789
		-6.7344308282201792 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 3.9183361717798215
		-8.8557511717798221 41.680284999999998 2.8576760000000001
		-7.7950910000000002 41.680284999999998 1.7970158282201789
		-6.7344308282201792 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 3.9183361717798215
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "locatorKneeR_parentConstraint1" -p "locatorKneeR";
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
	setAttr ".tg[0].tot" -type "double3" 0.18213222145834607 18.402099457531111 0.030721931268582692 ;
	setAttr ".tg[0].tor" -type "double3" 174.21235243304065 -19.450378518344845 1.898205870404811 ;
	setAttr ".lr" -type "double3" -0.42748083801205428 19.017264428128623 2.2111869762792979 ;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-015 -6.6613381477509392e-016 ;
	setAttr ".rsrr" -type "double3" -1.192708005548819e-014 9.5426968399600158e-015 
		-1.407305961830503e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 52.735937179463058 -0.30427148361883738 ;
	setAttr ".r" -type "double3" -0.734721020738623 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 172.10239646194759 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -6.2171132690344919 0 ;
	setAttr ".r" -type "double3" 3.8721609657229248 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9194080173407209 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -6.088799949434879 5.3290705182007514e-015 ;
	setAttr ".r" -type "double3" -5.8422612555727405 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.552825776193494 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -5.1025085712998646 -3.5527136788005009e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.2406665034655919 0 0 ;
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
	setAttr ".lr" -type "double3" 170.72834058688358 0 0 ;
	setAttr ".o" -type "double3" -170.72834058688358 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 70.019978255439952 -1.5869598959029905 ;
	setAttr ".r" -type "double3" -175.96900708978808 0 0 ;
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
		6 0 0 0 17.408421789769232 17.408421789769232 17.408421789769232
		4
		0 52.735937179463058 -0.30427148361883738
		0 58.631260161043905 -0.94124769048450763
		0 64.02663157103143 -2.7288701807983551
		0 69.961014679075873 -1.5981942058520004
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 69.961014679075859 -1.5981942058520029 ;
	setAttr ".sp" -type "double3" 0 69.961014679075859 -1.5981942058520029 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-014 -1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 168.02351927573406 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.06000327189019572 0.0015875837499308432 ;
	setAttr ".tg[1].tor" -type "double3" 170.72834058558743 0 0 ;
	setAttr ".rst" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -3.6753177920186298e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 146.49790684281152 5.3857167320171406 ;
	setAttr ".r" -type "double3" -174.42604644761462 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 73.380042628690433 -0.87292413471613117 ;
	setAttr ".rpt" -type "double3" 0 -146.49790684281157 -5.3857167320171442 ;
	setAttr ".sp" -type "double3" 0 73.380042628690418 -0.87292413471613095 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -2.2204460492503136e-016 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 28.539517742721834 3.7216195205279834 73.951397061012742 ;
	setAttr ".rp" -type "double3" 1.3056311276335917 70.574597099062856 1.8653502621767091 ;
	setAttr ".sp" -type "double3" 1.3056311276335917 70.574597099062856 1.8653502621767091 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
		-1.7247555922535185e-015 -2.915858770665452 -6.75
		6.75 -2.9158587706654515 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.9158587706654511 6.75
		-6.75 -2.9158587706654515 1.0708597095003547e-015
		-1.7247555922535185e-015 -2.915858770665452 -6.75
		6.75 -2.9158587706654515 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.9158587706654511 6.75
		-1.7247555922535185e-015 -5.831717541330903 -6.75
		6.75 -5.831717541330903 -3.2145916787837403e-016
		9.1290500549637277e-016 -5.831717541330903 6.75
		-6.75 -5.831717541330903 1.2545506625737113e-015
		-1.7247555922535185e-015 -5.831717541330903 -6.75
		6.75 -5.831717541330903 -3.2145916787837403e-016
		9.1290500549637277e-016 -5.831717541330903 6.75
		-1.7247555922535185e-015 -8.7475763119963545 -6.75
		6.75 -8.7475763119963545 -1.3776821480501744e-016
		9.1290500549637277e-016 -8.7475763119963545 6.75
		-6.75 -8.7475763119963545 1.4382416156470679e-015
		-1.7247555922535185e-015 -8.7475763119963545 -6.75
		6.75 -8.7475763119963545 -1.3776821480501744e-016
		9.1290500549637277e-016 -8.7475763119963545 6.75
		
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
	setAttr ".rst" -type "double3" 1.3056311276335875 70.574597099062885 1.8653502621767073 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".rp" -type "double3" 1.6146173648090567e-008 -8.7475763119963688 8.5650597725361877e-011 ;
	setAttr ".sp" -type "double3" 1.6146173648090567e-008 -8.7475763119963688 8.5650597725361877e-011 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
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
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
		-1.7247555922535185e-015 -4.2633274517170223 -6.75
		6.75 -4.2633274517170214 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.2633274517170214 6.75
		-6.75 -4.2633274517170214 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.2633274517170223 -6.75
		6.75 -4.2633274517170214 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.2633274517170214 6.75
		-1.7247555922535185e-015 -8.5266549034340429 -6.75
		6.75 -8.5266549034340429 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.5266549034340429 6.75
		-6.75 -8.5266549034340429 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.5266549034340429 -6.75
		6.75 -8.5266549034340429 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.5266549034340429 6.75
		-1.7247555922535185e-015 -12.789982355151064 -6.75
		6.75 -12.789982355151064 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.789982355151064 6.75
		-6.75 -12.789982355151064 1.4382416156470679e-015
		-1.7247555922535185e-015 -12.789982355151064 -6.75
		6.75 -12.789982355151064 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.789982355151064 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -17.920095273324829 0 -3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" -5.9396931817445875e-015 -12.78998235515107 2.4424906541753444e-015 ;
	setAttr ".sp" -type "double3" -5.9396931817445875e-015 -12.78998235515107 2.4424906541753444e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.9396931817445875e-015 -12.78998235515107 2.4424906541753444e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
		-1.7247555922535185e-015 -3.8452175605715944 -6.75
		6.75 -3.8452175605715935 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.845217560571593 6.75
		-6.75 -3.8452175605715935 1.0708597095003547e-015
		-1.7247555922535185e-015 -3.8452175605715944 -6.75
		6.75 -3.8452175605715935 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.845217560571593 6.75
		-1.7247555922535185e-015 -7.6904351211431869 -6.75
		6.75 -7.6904351211431869 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.6904351211431869 6.75
		-6.75 -7.6904351211431869 1.2545506625737113e-015
		-1.7247555922535185e-015 -7.6904351211431869 -6.75
		6.75 -7.6904351211431869 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.6904351211431869 6.75
		-1.7247555922535185e-015 -11.535652681714781 -6.75
		6.75 -11.535652681714781 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.535652681714781 6.75
		-6.75 -11.535652681714781 1.4382416156470679e-015
		-1.7247555922535185e-015 -11.535652681714781 -6.75
		6.75 -11.535652681714781 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.535652681714781 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" 9.9392333795734899e-016 -1.1927080055488188e-015 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 1.429412144204889e-015 -11.535652681714797 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 1.429412144204889e-015 -11.535652681714797 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.429412144204889e-015 -11.535652681714797 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".rst" -type "double3" 1.6146171510911245e-008 -8.7475763119963954 8.5651041814571727e-011 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "lShoulderControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2FKcontrolW1" -bt "W001" -dv 1 
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
	setAttr ".tg[0].tot" -type "double3" 1.6146245534441883e-008 -8.747576311996351 
		8.5645365600408158e-011 ;
	setAttr ".tg[0].tor" -type "double3" -16.014710606316342 -18.948359601186159 -47.089622197435013 ;
	setAttr ".tg[1].tot" -type "double3" 8.6157868439565028 -3.2602633013619839 0.49425796924925547 ;
	setAttr ".tg[1].tor" -type "double3" 173.92137180491824 -7.7088463294594396 -23.210195020693209 ;
	setAttr ".tg[2].tot" -type "double3" 8.6157868439565028 19.722574111048342 -2.3051203236669666 ;
	setAttr ".tg[2].tor" -type "double3" 0.1336682885248246 5.0143838143038773 23.899394319197615 ;
	setAttr ".tg[3].tot" -type "double3" 8.6157868439565028 68.189457725792721 -2.3051203236669666 ;
	setAttr ".tg[3].tor" -type "double3" 0.1336682885248246 5.0143838143038773 23.899394319197615 ;
	setAttr ".lr" -type "double3" -16.014710606316346 -18.948359601186159 -47.089622197435013 ;
	setAttr ".rst" -type "double3" 6.0479399266455403e-014 1.7763568394002505e-014 -7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -16.014710606316342 -18.948359601186166 -47.08962219743502 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -151.46048225727819 -3.7216195205279785 -73.951397061012742 ;
	setAttr ".rp" -type "double3" -1.30563 70.574599999999961 1.8653499999999987 ;
	setAttr ".sp" -type "double3" -1.30563 70.574599999999961 1.8653499999999987 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
		-1.7247555922535185e-015 2.9158562923074407 -6.75
		6.75 2.9158562923074403 -5.0515012095173062e-016
		9.1290500549637277e-016 2.9158562923074398 6.75
		-6.75 2.9158562923074403 1.0708597095003547e-015
		-1.7247555922535185e-015 2.9158562923074407 -6.75
		6.75 2.9158562923074403 -5.0515012095173062e-016
		9.1290500549637277e-016 2.9158562923074398 6.75
		-1.7247555922535185e-015 5.8317125846148805 -6.75
		6.75 5.8317125846148805 -3.2145916787837403e-016
		9.1290500549637277e-016 5.8317125846148805 6.75
		-6.75 5.8317125846148805 1.2545506625737113e-015
		-1.7247555922535185e-015 5.8317125846148805 -6.75
		6.75 5.8317125846148805 -3.2145916787837403e-016
		9.1290500549637277e-016 5.8317125846148805 6.75
		-1.7247555922535185e-015 8.7475688769223208 -6.75
		6.75 8.7475688769223208 -1.3776821480501744e-016
		9.1290500549637277e-016 8.7475688769223208 6.75
		-6.75 8.7475688769223208 1.4382416156470679e-015
		-1.7247555922535185e-015 8.7475688769223208 -6.75
		6.75 8.7475688769223208 -1.3776821480501744e-016
		9.1290500549637277e-016 8.7475688769223208 6.75
		
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
	setAttr ".rst" -type "double3" -1.3056300000000178 70.574599999999933 1.8653500000000007 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".rp" -type "double3" -3.8918858484837671e-005 8.7475688768357553 4.9475290442302367e-007 ;
	setAttr ".sp" -type "double3" -3.8918858484837671e-005 8.7475688768357553 4.9475290442302367e-007 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
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
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
		-1.7247555922535185e-015 4.2633332142624445 -6.75
		6.75 4.2633332142624436 -5.0515012095173062e-016
		9.1290500549637277e-016 4.2633332142624436 6.75
		-6.75 4.2633332142624436 1.0708597095003547e-015
		-1.7247555922535185e-015 4.2633332142624445 -6.75
		6.75 4.2633332142624436 -5.0515012095173062e-016
		9.1290500549637277e-016 4.2633332142624436 6.75
		-1.7247555922535185e-015 8.5266664285248872 -6.75
		6.75 8.5266664285248872 -3.2145916787837403e-016
		9.1290500549637277e-016 8.5266664285248872 6.75
		-6.75 8.5266664285248872 1.2545506625737113e-015
		-1.7247555922535185e-015 8.5266664285248872 -6.75
		6.75 8.5266664285248872 -3.2145916787837403e-016
		9.1290500549637277e-016 8.5266664285248872 6.75
		-1.7247555922535185e-015 12.789999642787331 -6.75
		6.75 12.789999642787331 -1.3776821480501744e-016
		9.1290500549637277e-016 12.789999642787331 6.75
		-6.75 12.789999642787331 1.4382416156470679e-015
		-1.7247555922535185e-015 12.789999642787331 -6.75
		6.75 12.789999642787331 -1.3776821480501744e-016
		9.1290500549637277e-016 12.789999642787331 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -17.920095273324829 1.5902773407317592e-015 -6.3611093629270367e-015 ;
	setAttr ".rp" -type "double3" 3.1538066865649528e-005 12.789999642748361 -1.4758827300287436e-006 ;
	setAttr ".sp" -type "double3" 3.1538066865649528e-005 12.789999642748361 -1.4758827300287436e-006 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.1538066865649528e-005 12.789999642748361 -1.4758827300287436e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999933 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
		-1.7247555922535185e-015 3.8452274065102832 -6.75
		6.75 3.8452274065102827 -5.0515012095173062e-016
		9.1290500549637277e-016 3.8452274065102823 6.75
		-6.75 3.8452274065102827 1.0708597095003547e-015
		-1.7247555922535185e-015 3.8452274065102832 -6.75
		6.75 3.8452274065102827 -5.0515012095173062e-016
		9.1290500549637277e-016 3.8452274065102823 6.75
		-1.7247555922535185e-015 7.6904548130205654 -6.75
		6.75 7.6904548130205654 -3.2145916787837403e-016
		9.1290500549637277e-016 7.6904548130205654 6.75
		-6.75 7.6904548130205654 1.2545506625737113e-015
		-1.7247555922535185e-015 7.6904548130205654 -6.75
		6.75 7.6904548130205654 -3.2145916787837403e-016
		9.1290500549637277e-016 7.6904548130205654 6.75
		-1.7247555922535185e-015 11.535682219530848 -6.75
		6.75 11.535682219530848 -1.3776821480501744e-016
		9.1290500549637277e-016 11.535682219530848 6.75
		-6.75 11.535682219530848 1.4382416156470679e-015
		-1.7247555922535185e-015 11.535682219530848 -6.75
		6.75 11.535682219530848 -1.3776821480501744e-016
		9.1290500549637277e-016 11.535682219530848 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 2.5842006786891068e-015 -2.7829853462805756e-015 -3.1805546814635152e-015 ;
	setAttr ".rp" -type "double3" -1.9303702734202455e-005 11.535682219505457 1.4603536929280736e-005 ;
	setAttr ".sp" -type "double3" -1.9303702734202455e-005 11.535682219505457 1.4603536929280736e-005 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.9303702734202455e-005 11.535682219505457 1.4603536929280736e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".rst" -type "double3" -3.8918858519920718e-005 8.7475688768357287 4.9475290053724308e-007 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "rShoulderControlW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2FKcontrolW1" -bt "W001" -dv 1 
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
	setAttr ".tg[0].tot" -type "double3" -3.8918858508179446e-005 8.7475688768357447 
		4.9475289715677863e-007 ;
	setAttr ".tg[0].tor" -type "double3" -16.014710606316306 -18.948359601186134 -47.089622197434991 ;
	setAttr ".tg[1].tot" -type "double3" -8.6157899999999952 -3.2603053217360083 0.49426260622247681 ;
	setAttr ".tg[1].tor" -type "double3" -6.0786281950817393 7.7088463294594298 23.210195020693213 ;
	setAttr ".tg[2].tot" -type "double3" -8.6157899999999952 19.722616385255549 -2.3051200000000023 ;
	setAttr ".tg[2].tor" -type "double3" -179.86633171147514 -5.0143838143038684 -23.899394319197619 ;
	setAttr ".tg[3].tot" -type "double3" -8.6157899999999952 68.189499999999924 -2.3051200000000023 ;
	setAttr ".tg[3].tor" -type "double3" -179.86633171147514 -5.0143838143038684 -23.899394319197619 ;
	setAttr ".lr" -type "double3" -16.014710606316306 -18.948359601186137 -47.089622197434998 ;
	setAttr ".rst" -type "double3" 2.2204460492503131e-015 -1.4210854715202004e-014 
		8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -16.014710606316303 -18.948359601186144 -47.089622197435013 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 146.49790684281152 5.3857167320171406 ;
	setAttr ".sp" -type "double3" 0 146.49790684281152 5.3857167320171406 ;
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
	setAttr ".lr" -type "double3" -174.42604644761462 0 0 ;
	setAttr ".rsrr" -type "double3" -174.42604644761462 0 0 ;
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
	setAttr ".o" -type "double3" 0 76.536892163735658 6.983910937869144 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587899e-016 0 0 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".rst" -type "double3" 0 73.380042628690404 -0.87292413471613095 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -79.285661121382077 7.9962341684095364 ;
	setAttr ".r" -type "double3" -5.5739535523854089 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 76.533745976609794 -0.56514819838178343 ;
	setAttr ".rpt" -type "double3" 0 -0.41677083425189704 -7.4310859700277518 ;
	setAttr ".sp" -type "double3" 0 76.533745976609822 -0.56514819838178365 ;
	setAttr ".spt" -type "double3" 0 -2.8421709430403995e-014 2.2204460492503121e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -79.285661121382077 7.9962341684095364 ;
	setAttr ".sp" -type "double3" 0 -79.285661121382077 7.9962341684095364 ;
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
	setAttr ".lr" -type "double3" -180.00000000000003 0 0 ;
	setAttr ".rsrr" -type "double3" -180.00000000000003 0 0 ;
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
	setAttr ".o" -type "double3" 0 -152.66570375007251 8.8691583031256673 ;
	setAttr ".rst" -type "double3" 0 -1.4210854715202004e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.2582448256453814e-014 0 0 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".rst" -type "double3" 0 76.533745976609822 -0.56514819838178354 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_glassesControlGroup" -p "headControl";
	setAttr ".t" -type "double3" -0.022273387037058577 -1.3011315805861585 -5.9297773369207984 ;
	setAttr ".r" -type "double3" 176.07266555182935 10.574422267048819 -0.59937592410349105 ;
createNode transform -n "Ref:prp_glassesControl" -p "Ref:prp_glassesControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_glassesControlShape" -p "Ref:prp_glassesControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
	setAttr ".r" -type "double3" -0.027363251850627383 -4.5758799089046303 0.68487234685543075 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.13366828852481924 5.0143838143038799 23.89939431919759 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -3.0198066269804258e-014 -12.789982355151066 1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" -1.9793932013793586e-013 -8.5345012500044742e-028 4.1580610230988722e-027 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -17.920095273324829 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 4.9737991503207013e-014 -11.53565268171478 4.4408920985006262e-016 ;
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
	setAttr ".rst" -type "double3" 8.6157868439565117 68.18945772579265 -2.3051203236669653 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 12.95850510015222 2.5081454074229441 2.6652077747291276 ;
	setAttr ".sp" -type "double3" 12.958505100152227 2.5081454074229441 2.6652077747291294 ;
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
	setAttr ".rst" -type "double3" 5.5681829547068631 44.069262979247753 -1.4897457338785003 ;
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
	setAttr ".rst" -type "double3" 5.1792316037336548 -11.694371514223832 -0.029724186664360719 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
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
	setAttr ".tg[0].tot" -type "double3" 18.526688054859083 -1.8894752280736782 1.1754620408506276 ;
	setAttr ".rst" -type "double3" 0 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
createNode transform -n "likHandControlZeroGroup" -p "likHandControlWeaponGroup";
	setAttr ".t" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506282 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506282 ;
createNode transform -n "likHandControl" -p "likHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\" -objs %1\" ) #;\r\n";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\" -objs %1\" ) #;\r\n";
	setAttr ".zooCmd2" -type "string" "toggle weapon parent^int $other = !`getAttr #.weaponParent`;\r\nzooChangeSpace ( \"-attr weaponParent \"+ $other +\" -objs %1\" ) #;\r\n";
createNode nurbsSurface -n "likHandControlShape" -p "likHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-1.9999999999999996 -2.4494897427831783 -2.4494897427831779
		-1.9999999999999998 -2.4494897427831779 2.4494897427831783
		-2 2.4494897427831779 2.4494897427831783
		-1.9999999999999998 2.4494897427831783 -2.4494897427831779
		-1.9999999999999996 -2.4494897427831779 -2.4494897427831783
		2 -2.4494897427831792 -2.4494897427831779
		2 -2.4494897427831783 2.4494897427831788
		1.9999999999999998 2.4494897427831788 2.4494897427831783
		2 2.4494897427831788 -2.4494897427831783
		2 -2.4494897427831783 -2.4494897427831788
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		
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
	setAttr ".lr" -type "double3" -17.754445068895141 0.43657306624616887 24.571436521545589 ;
	setAttr ".rsrr" -type "double3" -17.786426984800009 5.0143838143038764 23.899394319197619 ;
	setAttr -k on ".w0";
createNode transform -n "lHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" -17.786426984800013 5.0143838143038764 23.899394319197615 ;
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506273 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506273 ;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 18.526688054859079 43.613690938746259 1.1754620408506227 ;
	setAttr ".rpt" -type "double3" -19.598735192979465 1.7277455807494784 -14.951483522911479 ;
	setAttr ".sp" -type "double3" 18.526688054859079 43.613690938746267 1.1754620408506227 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
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
	setAttr ".r" -type "double3" -5.9635400277440939e-016 7.9513867036587919e-016 0 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -1.4729616761930426 -3.4921260408693287 1.9066828826915321 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 -4.3871831322253591e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.3871831322253591e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -4.3871831322253591e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.3871831322253591e-016 4.5
		-1.1498370615023457e-015 -1.9758116319496253 -4.5
		4.5 -1.9758116319496253 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.9758116319496251 4.5
		-4.5 -1.9758116319496253 7.1390647300023646e-016
		-1.1498370615023457e-015 -1.9758116319496253 -4.5
		4.5 -1.9758116319496253 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.9758116319496251 4.5
		-1.1498370615023457e-015 -3.9516232638992506 -4.5
		4.5 -3.9516232638992506 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.9516232638992506 4.5
		-4.5 -3.9516232638992506 8.3636710838247419e-016
		-1.1498370615023457e-015 -3.9516232638992506 -4.5
		4.5 -3.9516232638992506 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.9516232638992506 4.5
		-1.1498370615023457e-015 -5.9274348958488758 -4.5
		4.5 -5.9274348958488758 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.9274348958488758 4.5
		-4.5 -5.9274348958488758 9.5882774376471192e-016
		-1.1498370615023457e-015 -5.9274348958488758 -4.5
		4.5 -5.9274348958488758 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.9274348958488758 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -11.219354880345854 3.9223204015948974 -26.791038517672146 ;
	setAttr ".rp" -type "double3" -1.5335015943631907 -2.1571437005303489 2.270473323921224 ;
	setAttr ".sp" -type "double3" -1.5335015943631907 -2.1571437005303489 2.270473323921224 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.53350159436319 -2.1571437005303595 2.2704733239212187 ;
	setAttr ".sp" -type "double3" -1.53350159436319 -2.1571437005303595 2.2704733239212187 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.53350159436319 -2.1571437005303595 2.2704733239212187 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.7393658414253611e-015 0 7.9513867036587939e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.064164904067018e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.064164904067018e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.064164904067018e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.064164904067018e-016 2.25
		-5.7491853075117283e-016 -0.92961722927874779 -2.25
		2.25 -0.92961722927874779 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.92961722927874768 2.25
		-2.25 -0.92961722927874779 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.92961722927874779 -2.25
		2.25 -0.92961722927874779 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.92961722927874768 2.25
		-5.7491853075117283e-016 -1.8592344585574956 -2.25
		2.25 -1.8592344585574956 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8592344585574956 2.25
		-2.25 -1.8592344585574956 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8592344585574956 -2.25
		2.25 -1.8592344585574956 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8592344585574956 2.25
		-5.7491853075117283e-016 -2.7888516878362433 -2.25
		2.25 -2.7888516878362433 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7888516878362433 2.25
		-2.25 -2.7888516878362433 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7888516878362433 -2.25
		2.25 -2.7888516878362433 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7888516878362433 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 2.1090313501742193 0 0 ;
	setAttr ".rp" -type "double3" -7.2372663417752392e-015 -2.7888516878362619 -1.8873791418627661e-015 ;
	setAttr ".sp" -type "double3" -7.2372663417752392e-015 -2.7888516878362619 -1.8873791418627661e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.7331249203020889e-015 -2.7888516878362588 -5.3845816694320092e-015 ;
	setAttr ".sp" -type "double3" -3.7331249203020889e-015 -2.7888516878362588 -5.3845816694320092e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.7331249203020889e-015 -2.7888516878362588 -5.3845816694320092e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.7272125173400575e-017 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2037976304112938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2037976304112938e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2037976304112938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2037976304112938e-016 2.25
		-5.7491853075117283e-016 -0.54214225597497889 -2.25
		2.25 -0.54214225597497889 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54214225597497878 2.25
		-2.25 -0.54214225597497889 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.54214225597497889 -2.25
		2.25 -0.54214225597497889 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54214225597497878 2.25
		-5.7491853075117283e-016 -1.0842845119499578 -2.25
		2.25 -1.0842845119499578 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0842845119499578 2.25
		-2.25 -1.0842845119499578 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0842845119499578 -2.25
		2.25 -1.0842845119499578 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0842845119499578 2.25
		-5.7491853075117283e-016 -1.6264267679249367 -2.25
		2.25 -1.6264267679249367 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6264267679249367 2.25
		-2.25 -1.6264267679249367 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6264267679249367 -2.25
		2.25 -1.6264267679249367 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6264267679249367 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -17.536781633172225 0 3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" -7.4940054162198066e-016 -1.626426767924946 -2.9976021664879227e-015 ;
	setAttr ".sp" -type "double3" -7.4940054162198066e-016 -1.626426767924946 -2.9976021664879227e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -7.0082828429463007e-016 -1.6264267679249409 -9.9920072216264089e-016 ;
	setAttr ".sp" -type "double3" -7.0082828429463007e-016 -1.6264267679249409 -9.9920072216264089e-016 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.0082828429463007e-016 -1.6264267679249409 -9.9920072216264089e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5405811738338913e-015 -3.9756933518293969e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3749560732810829e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3749560732810829e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3749560732810829e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3749560732810829e-016 2.25
		-5.7491853075117283e-016 -0.61922516592794852 -2.25
		2.25 -0.61922516592794852 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61922516592794841 2.25
		-2.25 -0.61922516592794852 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.61922516592794852 -2.25
		2.25 -0.61922516592794852 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61922516592794841 2.25
		-5.7491853075117283e-016 -1.238450331855897 -2.25
		2.25 -1.238450331855897 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.238450331855897 2.25
		-2.25 -1.238450331855897 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.238450331855897 -2.25
		2.25 -1.238450331855897 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.238450331855897 2.25
		-5.7491853075117283e-016 -1.8576754977838457 -2.25
		2.25 -1.8576754977838457 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8576754977838457 2.25
		-2.25 -1.8576754977838457 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8576754977838457 -2.25
		2.25 -1.8576754977838457 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8576754977838457 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 88.726163866365042 80.742213464700896 64.177721267489702 ;
	setAttr ".rp" -type "double3" -0.2241741846272155 -6.146791269628622 2.4256999109597643 ;
	setAttr ".sp" -type "double3" -0.2241741846272155 -6.146791269628622 2.4256999109597643 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.2241741846272145 -6.1467912696286202 2.4256999109597608 ;
	setAttr ".sp" -type "double3" -0.2241741846272145 -6.1467912696286202 2.4256999109597608 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.22417418462721184 -9.5482499533033085 1.4515184665750267 ;
	setAttr ".sp" -type "double3" -0.22417418462721184 -9.5482499533033085 1.4515184665750267 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.22417418462721272 -6.1467912696286202 2.4256999109597572 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.4544250346801137e-017 0 1.8480762065144461e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.8281701528312282e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.8281701528312282e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.8281701528312282e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.8281701528312282e-016 2.25
		-5.7491853075117283e-016 -0.82333464190605821 -2.25
		2.25 -0.82333464190605821 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.8233346419060581 2.25
		-2.25 -0.82333464190605821 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.82333464190605821 -2.25
		2.25 -0.82333464190605821 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.8233346419060581 2.25
		-5.7491853075117283e-016 -1.6466692838121164 -2.25
		2.25 -1.6466692838121164 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6466692838121164 2.25
		-2.25 -1.6466692838121164 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.6466692838121164 -2.25
		2.25 -1.6466692838121164 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6466692838121164 2.25
		-5.7491853075117283e-016 -2.4700039257181747 -2.25
		2.25 -2.4700039257181747 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.4700039257181747 2.25
		-2.25 -2.4700039257181747 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.4700039257181747 -2.25
		2.25 -2.4700039257181747 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.4700039257181747 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 42.537290554130038 0 1.8325461543588618e-016 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.4700039257181907 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.4700039257181907 0 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -2.4700039257181885 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -2.4700039257181885 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -2.4700039257181885 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 2.3854160110976364e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3141668172045759e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3141668172045759e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3141668172045759e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3141668172045759e-016 2.25
		-5.7491853075117283e-016 -0.59184811882651989 -2.25
		2.25 -0.59184811882651989 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59184811882651978 2.25
		-2.25 -0.59184811882651989 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.59184811882651989 -2.25
		2.25 -0.59184811882651989 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59184811882651978 2.25
		-5.7491853075117283e-016 -1.1836962376530398 -2.25
		2.25 -1.1836962376530398 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1836962376530398 2.25
		-2.25 -1.1836962376530398 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1836962376530398 -2.25
		2.25 -1.1836962376530398 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1836962376530398 2.25
		-5.7491853075117283e-016 -1.7755443564795597 -2.25
		2.25 -1.7755443564795597 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7755443564795597 2.25
		-2.25 -1.7755443564795597 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7755443564795597 -2.25
		2.25 -1.7755443564795597 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7755443564795597 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" -1.9474664561516108 3.975693351829396e-016 3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" 0 -1.7755443564795534 -5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 0 -1.7755443564795534 -5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0 -1.7755443564795517 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 0 -1.7755443564795517 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.7755443564795517 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 0 -3.975693351829396e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.4113233843087074e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4113233843087074e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4113233843087074e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4113233843087074e-016 2.25
		-5.7491853075117283e-016 -0.63560354676719621 -2.25
		2.25 -0.63560354676719621 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6356035467671961 2.25
		-2.25 -0.63560354676719621 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.63560354676719621 -2.25
		2.25 -0.63560354676719621 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6356035467671961 2.25
		-5.7491853075117283e-016 -1.2712070935343924 -2.25
		2.25 -1.2712070935343924 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2712070935343924 2.25
		-2.25 -1.2712070935343924 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2712070935343924 -2.25
		2.25 -1.2712070935343924 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2712070935343924 2.25
		-5.7491853075117283e-016 -1.9068106403015888 -2.25
		2.25 -1.9068106403015888 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9068106403015888 2.25
		-2.25 -1.9068106403015888 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.9068106403015888 -2.25
		2.25 -1.9068106403015888 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9068106403015888 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 120.35943544993424 79.201969596661044 101.20097072232727 ;
	setAttr ".rp" -type "double3" -0.33581227315729351 -5.9014208378593267 0.44152763922975424 ;
	setAttr ".sp" -type "double3" -0.33581227315729351 -5.9014208378593267 0.44152763922975424 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.33581227315729434 -5.9014208378593223 0.44152763922976135 ;
	setAttr ".sp" -type "double3" -0.33581227315729434 -5.9014208378593223 0.44152763922976135 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.33581227315729834 -9.806307006017505 -1.2688096490027923 ;
	setAttr ".sp" -type "double3" -0.33581227315729834 -9.806307006017505 -1.2688096490027923 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.33581227315729567 -5.901420837859316 0.44152763922976845 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587959e-016 3.975693351829396e-016 -2.981770013872047e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.2011776378343274e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.2011776378343274e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.2011776378343274e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.2011776378343274e-016 2.25
		-5.7491853075117283e-016 -0.99132227895269454 -2.25
		2.25 -0.99132227895269454 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.99132227895269442 2.25
		-2.25 -0.99132227895269454 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.99132227895269454 -2.25
		2.25 -0.99132227895269454 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.99132227895269442 2.25
		-5.7491853075117283e-016 -1.9826445579053891 -2.25
		2.25 -1.9826445579053891 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.9826445579053891 2.25
		-2.25 -1.9826445579053891 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.9826445579053891 -2.25
		2.25 -1.9826445579053891 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.9826445579053891 2.25
		-5.7491853075117283e-016 -2.9739668368580836 -2.25
		2.25 -2.9739668368580836 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.9739668368580836 2.25
		-2.25 -2.9739668368580836 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.9739668368580836 -2.25
		2.25 -2.9739668368580836 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.9739668368580836 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 52.877712007223614 3.975693351829396e-016 -1.987846675914698e-016 ;
	setAttr ".rp" -type "double3" -4.8849813083506888e-015 -2.9739668368580832 0 ;
	setAttr ".sp" -type "double3" -4.8849813083506888e-015 -2.9739668368580832 0 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -2.9739668368580787 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -2.9739668368580787 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -2.9739668368580787 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.975693351829396e-016 -7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6241847019888898e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6241847019888898e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6241847019888898e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6241847019888898e-016 2.25
		-5.7491853075117283e-016 -0.73146776186580242 -2.25
		2.25 -0.73146776186580242 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73146776186580231 2.25
		-2.25 -0.73146776186580242 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.73146776186580242 -2.25
		2.25 -0.73146776186580242 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73146776186580231 2.25
		-5.7491853075117283e-016 -1.4629355237316048 -2.25
		2.25 -1.4629355237316048 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4629355237316048 2.25
		-2.25 -1.4629355237316048 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4629355237316048 -2.25
		2.25 -1.4629355237316048 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4629355237316048 2.25
		-5.7491853075117283e-016 -2.1944032855974074 -2.25
		2.25 -2.1944032855974074 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1944032855974074 2.25
		-2.25 -2.1944032855974074 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.1944032855974074 -2.25
		2.25 -2.1944032855974074 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1944032855974074 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 13.190763892526633 -7.9513867036587919e-016 7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -2.1944032855974047 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -2.1944032855974047 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -2.1944032855973994 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -2.1944032855973994 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -2.1944032855973994 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.7729706471579617e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7729706471579617e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7729706471579617e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7729706471579617e-016 2.25
		-5.7491853075117283e-016 -0.79847499458794235 -2.25
		2.25 -0.79847499458794235 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79847499458794224 2.25
		-2.25 -0.79847499458794235 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.79847499458794235 -2.25
		2.25 -0.79847499458794235 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79847499458794224 2.25
		-5.7491853075117283e-016 -1.5969499891758847 -2.25
		2.25 -1.5969499891758847 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5969499891758847 2.25
		-2.25 -1.5969499891758847 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5969499891758847 -2.25
		2.25 -1.5969499891758847 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5969499891758847 2.25
		-5.7491853075117283e-016 -2.3954249837638271 -2.25
		2.25 -2.3954249837638271 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3954249837638271 2.25
		-2.25 -2.3954249837638271 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3954249837638271 -2.25
		2.25 -2.3954249837638271 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3954249837638271 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 129.59657515442052 75.007882671980255 113.80536352798225 ;
	setAttr ".rp" -type "double3" -0.6818307462732659 -5.2598119721035008 -1.2364832923449298 ;
	setAttr ".sp" -type "double3" -0.6818307462732659 -5.2598119721035008 -1.2364832923449298 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.68183074627326645 -5.2598119721034902 -1.236483292344932 ;
	setAttr ".sp" -type "double3" -0.68183074627326645 -5.2598119721034902 -1.236483292344932 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.68183074627326556 -8.7045659815838334 -2.4848680075782408 ;
	setAttr ".sp" -type "double3" -0.68183074627326556 -8.7045659815838334 -2.4848680075782408 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.68183074627326778 -5.259811972103476 -1.236483292344932 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 -2.7829853462805787e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9254847255034845e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9254847255034845e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9254847255034845e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9254847255034845e-016 2.25
		-5.7491853075117283e-016 -0.86716122922850747 -2.25
		2.25 -0.86716122922850747 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.86716122922850736 2.25
		-2.25 -0.86716122922850747 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.86716122922850747 -2.25
		2.25 -0.86716122922850747 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.86716122922850736 2.25
		-5.7491853075117283e-016 -1.7343224584570149 -2.25
		2.25 -1.7343224584570149 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7343224584570149 2.25
		-2.25 -1.7343224584570149 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7343224584570149 -2.25
		2.25 -1.7343224584570149 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7343224584570149 2.25
		-5.7491853075117283e-016 -2.6014836876855223 -2.25
		2.25 -2.6014836876855223 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6014836876855223 2.25
		-2.25 -2.6014836876855223 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6014836876855223 -2.25
		2.25 -2.6014836876855223 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6014836876855223 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 52.884339545171123 0 -1.987846675914697e-016 ;
	setAttr ".rp" -type "double3" 3.1086244689504383e-015 -2.6014836876855139 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.1086244689504383e-015 -2.6014836876855139 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.1086244689504383e-015 -2.601483687685521 5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 3.1086244689504383e-015 -2.601483687685521 5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -2.601483687685521 5.3290705182007514e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 2.385416011097636e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000007 1.0000000000000007 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2225645835970077e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2225645835970077e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2225645835970077e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2225645835970077e-016 2.25
		-5.7491853075117283e-016 -0.55059414031238496 -2.25
		2.25 -0.55059414031238496 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55059414031238485 2.25
		-2.25 -0.55059414031238496 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.55059414031238496 -2.25
		2.25 -0.55059414031238496 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55059414031238485 2.25
		-5.7491853075117283e-016 -1.1011882806247699 -2.25
		2.25 -1.1011882806247699 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1011882806247699 2.25
		-2.25 -1.1011882806247699 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1011882806247699 -2.25
		2.25 -1.1011882806247699 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1011882806247699 2.25
		-5.7491853075117283e-016 -1.6517824209371548 -2.25
		2.25 -1.6517824209371548 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6517824209371548 2.25
		-2.25 -1.6517824209371548 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6517824209371548 -2.25
		2.25 -1.6517824209371548 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6517824209371548 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 3.9408989797984488 -7.9513867036587959e-016 0 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.6517824209371561 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.6517824209371561 0 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.3322676295501878e-015 -1.6517824209371614 0 ;
	setAttr ".sp" -type "double3" -1.3322676295501878e-015 -1.6517824209371614 0 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-015 -1.6517824209371614 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635187e-015 0 7.9513867036587959e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.7259397738668063e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7259397738668063e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7259397738668063e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7259397738668063e-016 2.25
		-5.7491853075117283e-016 -0.77729417224504671 -2.25
		2.25 -0.77729417224504671 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.7772941722450466 2.25
		-2.25 -0.77729417224504671 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.77729417224504671 -2.25
		2.25 -0.77729417224504671 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.7772941722450466 2.25
		-5.7491853075117283e-016 -1.5545883444900934 -2.25
		2.25 -1.5545883444900934 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5545883444900934 2.25
		-2.25 -1.5545883444900934 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5545883444900934 -2.25
		2.25 -1.5545883444900934 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5545883444900934 2.25
		-5.7491853075117283e-016 -2.3318825167351402 -2.25
		2.25 -2.3318825167351402 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3318825167351402 2.25
		-2.25 -2.3318825167351402 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3318825167351402 -2.25
		2.25 -2.3318825167351402 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3318825167351402 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 137.01639204628725 66.224928839597837 113.49273343209317 ;
	setAttr ".rp" -type "double3" -0.76140173022925361 -4.822306354306253 -2.7821479014941688 ;
	setAttr ".sp" -type "double3" -0.76140173022925361 -4.822306354306253 -2.7821479014941688 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.76140173022925217 -4.8223063543062512 -2.7821479014941737 ;
	setAttr ".sp" -type "double3" -0.76140173022925217 -4.8223063543062512 -2.7821479014941737 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.76140173022924917 -7.8297915961217397 -3.5803236997295675 ;
	setAttr ".sp" -type "double3" -0.76140173022924917 -7.8297915961217397 -3.5803236997295675 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.7614017302292504 -4.8223063543062512 -2.7821479014941772 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.9878466759146985e-016 0 -3.975693351829396e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6428991064037674e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6428991064037674e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6428991064037674e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6428991064037674e-016 2.25
		-5.7491853075117283e-016 -0.73989598034073278 -2.25
		2.25 -0.73989598034073278 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73989598034073267 2.25
		-2.25 -0.73989598034073278 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.73989598034073278 -2.25
		2.25 -0.73989598034073278 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73989598034073267 2.25
		-5.7491853075117283e-016 -1.4797919606814656 -2.25
		2.25 -1.4797919606814656 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4797919606814656 2.25
		-2.25 -1.4797919606814656 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4797919606814656 -2.25
		2.25 -1.4797919606814656 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4797919606814656 2.25
		-5.7491853075117283e-016 -2.2196879410221984 -2.25
		2.25 -2.2196879410221984 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2196879410221984 2.25
		-2.25 -2.2196879410221984 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.2196879410221984 -2.25
		2.25 -2.2196879410221984 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2196879410221984 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 48.093582389589173 1.5902773407317584e-015 -4.9696166897867449e-017 ;
	setAttr ".rp" -type "double3" 1.6653345369377348e-015 -2.2196879410221895 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 1.6653345369377348e-015 -2.2196879410221895 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.7470027081099033e-015 -2.2196879410221868 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 3.7470027081099033e-015 -2.2196879410221868 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.7470027081099033e-015 -2.2196879410221868 -1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.015999321705714e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.015999321705714e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.015999321705714e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.015999321705714e-016 2.25
		-5.7491853075117283e-016 -0.45756541666425304 -2.25
		2.25 -0.45756541666425304 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45756541666425299 2.25
		-2.25 -0.45756541666425304 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.45756541666425304 -2.25
		2.25 -0.45756541666425304 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45756541666425299 2.25
		-5.7491853075117283e-016 -0.91513083332850609 -2.25
		2.25 -0.91513083332850609 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.91513083332850609 2.25
		-2.25 -0.91513083332850609 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.91513083332850609 -2.25
		2.25 -0.91513083332850609 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.91513083332850609 2.25
		-5.7491853075117283e-016 -1.3726962499927591 -2.25
		2.25 -1.3726962499927591 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3726962499927591 2.25
		-2.25 -1.3726962499927591 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3726962499927591 -2.25
		2.25 -1.3726962499927591 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3726962499927591 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" -0.7802449121457522 0 0 ;
	setAttr ".rp" -type "double3" -1.3322676295501878e-015 -1.3726962499927673 0 ;
	setAttr ".sp" -type "double3" -1.3322676295501878e-015 -1.3726962499927673 0 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.8302694349567901e-015 -1.3726962499927744 0 ;
	setAttr ".sp" -type "double3" -3.8302694349567901e-015 -1.3726962499927744 0 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8302694349567901e-015 -1.3726962499927744 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635152e-015 -1.590277340731758e-015 3.180554681463516e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2921107436403226e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2921107436403226e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2921107436403226e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2921107436403226e-016 2.25
		-5.7491853075117283e-016 -0.58191494635799712 -2.25
		2.25 -0.58191494635799712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58191494635799701 2.25
		-2.25 -0.58191494635799712 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58191494635799712 -2.25
		2.25 -0.58191494635799712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58191494635799701 2.25
		-5.7491853075117283e-016 -1.1638298927159942 -2.25
		2.25 -1.1638298927159942 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1638298927159942 2.25
		-2.25 -1.1638298927159942 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1638298927159942 -2.25
		2.25 -1.1638298927159942 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1638298927159942 2.25
		-5.7491853075117283e-016 -1.7457448390739914 -2.25
		2.25 -1.7457448390739914 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7457448390739914 2.25
		-2.25 -1.7457448390739914 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7457448390739914 -2.25
		2.25 -1.7457448390739914 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7457448390739914 2.25
		
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
	setAttr ".rst" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506242 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-014 -2.9637174479243931 
		-2.9280595128224984e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.7829853462805764e-015 -1.1529510720305255e-014 
		-3.1805546814635183e-015 ;
	setAttr ".tg[1].tot" -type "double3" -1.0658141036401503e-014 -2.9637174479244419 
		-8.306908328181735e-015 ;
	setAttr ".tg[1].tor" -type "double3" -5.9635400277440935e-015 1.311978806103701e-014 
		-2.8624992133171654e-014 ;
	setAttr ".lr" -type "double3" -17.754445068895141 0.43657306624616782 24.571436521545586 ;
	setAttr ".rst" -type "double3" 20.814386544446446 -1.3120586278082342 15.853344653820189 ;
	setAttr ".rsrr" -type "double3" -17.786426984800009 5.0143838143038817 23.899394319197611 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
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
	setAttr ".r" -type "double3" 0 22.958847643504587 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 5.6649935656096364 5.4923664482001096 -2.5791636238583249 ;
	setAttr ".rpt" -type "double3" -1.4548050599160756 0 -2.0054355782048616 ;
	setAttr ".sp" -type "double3" 5.6649935656096364 5.4923664482001096 -2.5791636238583249 ;
	setAttr ".hdl" -type "double3" 5.6649935656096364 5.4923664482001096 -2.5791636238583249 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		4.3424709684448306 1.1264304559229759 -6.2582953505579777
		4.3424709684448315 1.1264304559229759 2.0541090687979535
		4.3424709684448306 9.8583024404772424 2.0541090687979535
		4.3424709684448306 9.8583024404772424 -6.2582953505579777
		4.3424709684448306 1.1264304559229759 -6.2582953505579777
		6.9875161627744404 1.126430455922975 -6.2582953505579777
		6.9875161627744404 1.1264304559229759 2.0541090687979544
		6.9875161627744404 9.8583024404772441 2.0541090687979535
		6.9875161627744404 9.8583024404772441 -6.2582953505579777
		6.9875161627744404 1.1264304559229759 -6.2582953505579777
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 4.2101885056935604 5.492366448200106 -4.5845992020631865 ;
	setAttr ".sp" -type "double3" 4.2101885056935604 5.492366448200106 -4.5845992020631865 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 4.2101885056935604 5.492366448200106 -4.5845992020631865 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 54.832683754088428 -2.254893947280276 -3.1962444580370182 ;
	setAttr ".rp" -type "double3" 4.9960036108132044e-016 -8.0914762803342253 -1.0096089079615369 ;
	setAttr ".sp" -type "double3" 4.9960036108132044e-016 -8.0914762803342253 -1.0096089079615369 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" 4.9960036108132044e-016 -8.0914762803342253 -1.0096089079615369 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" -4.4139062980501586e-032 0 0 ;
	setAttr ".rp" -type "double3" -2.643700328796911 -1.8344356095246436e-017 0.24879554651557112 ;
	setAttr ".sp" -type "double3" -2.643700328796911 -1.8344356095246436e-017 0.24879554651557112 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.643700328796911 -1.8344356095246436e-017 0.24879554651557112 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" -4.4139062980501586e-032 0 0 ;
	setAttr ".rp" -type "double3" 5.2833968535077984 3.6660930218728196e-017 0.26603384846393663 ;
	setAttr ".sp" -type "double3" 5.2833968535077984 3.6660930218728196e-017 0.26603384846393663 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 5.2833968535077984 3.6660930218728196e-017 0.26603384846393663 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" 7.0622500768802538e-031 3.1805546814635168e-015 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" -3.3477730645548238 -2.3229842109304078e-017 -10.635869842201565 ;
	setAttr ".sp" -type "double3" -3.3477730645548238 -2.3229842109304078e-017 -10.635869842201565 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -3.3477730645548238 -2.3229842109304078e-017 -10.635869842201565 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" 7.0622500768802538e-031 3.1805546814635168e-015 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" 1.1230476710693933 7.7927086385800825e-018 15.533723560158112 ;
	setAttr ".sp" -type "double3" 1.1230476710693933 7.7927086385800825e-018 15.533723560158112 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 1.1230476710693933 7.7927086385800825e-018 15.533723560158112 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000028 3.9109141386044155 3.9849731402038647e-016 ;
	setAttr ".rp" -type "double3" -0.41497113122545054 1.2359925673349295 -5.4126831129360529 ;
	setAttr ".sp" -type "double3" -0.41497113122545054 1.2359925673349295 -5.4126831129360529 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -0.41497113122545054 1.2359925673349295 -5.4126831129360529 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 35.230235293910113 0 0 ;
	setAttr ".rp" -type "double3" -3.3306690738754696e-015 6.0270398489583989 4.2563738808651799 ;
	setAttr ".sp" -type "double3" -3.3306690738754696e-015 6.0270398489583989 4.2563738808651799 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" -3.3306690738754696e-015 6.0270398489583989 4.2563738808651799 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.9955633076562886 -2.3306241014501459 1.6624459833257554 ;
	setAttr ".r" -type "double3" 56.965237689074129 -13.003880618108161 -19.087465128330965 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.4831674847806404 -0.013501516932760365 -4.5845992020666966 ;
	setAttr ".rpt" -type "double3" 1.5123957970744866 2.3441256196332412 2.9221532178387641 ;
	setAttr ".sp" -type "double3" 3.4831674847758625 -0.01350151693213153 -4.5845992020649202 ;
	setAttr ".spt" -type "double3" 0 -5.2041704279304236e-018 -8.8817841970012543e-016 ;
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
	setAttr ".rst" -type "double3" 0.11545878208729743 -9.1416458856996137 -15.971502470613238 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6932476587542071 0.61052016259185626 -8.7951238426755385 ;
	setAttr ".r" -type "double3" -1.2143553414317545e-014 -19.047932571086186 7.1755050279366355e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 6.0931594010043622 0.62547240579088181 1.4746248284873198 ;
	setAttr ".rpt" -type "double3" -0.81488272607820933 0 1.9078158899539688 ;
	setAttr ".sp" -type "double3" 6.0931593671511282 0.6254724223963638 1.4746248172922067 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 3.3306690738754711e-016 6.6613381477509422e-016 ;
	setAttr ".pv" -type "double3" 0.078690374164820165 1.6336811956315695 1.1510402147855696 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000028 3.9109141386044155 3.9849731402038647e-016 ;
	setAttr ".rp" -type "double3" 0.70807653984394081 1.2359925673349297 10.121040447222061 ;
	setAttr ".sp" -type "double3" 0.70807653984394081 1.2359925673349297 10.121040447222061 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 0.70807653984394081 1.2359925673349297 10.121040447222061 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000028 -3.5311250384401269e-031 -3.9109141386044128 ;
	setAttr ".rp" -type "double3" 0.044830919683320758 -5.4283818684257987 -1.2359925673349321 ;
	setAttr ".sp" -type "double3" 0.044830919683320758 -5.4283818684257987 -1.2359925673349321 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 0.044830919683320758 -5.4283818684257987 -1.2359925673349321 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.1141250685017061 0.24938582760202363 -7.8500508886415652 ;
	setAttr ".r" -type "double3" -1.2224304263461153e-014 -19.0479325710862 5.0629469680675366e-015 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 7.3377662053211123 0.98660674173477636 5.7285561628778217 ;
	setAttr ".rpt" -type "double3" -2.2713390370381332 0 2.0810843117971936 ;
	setAttr ".sp" -type "double3" 7.3377662053211106 0.98660674173477569 5.7285561628778243 ;
	setAttr ".spt" -type "double3" 0 4.4408920985006281e-016 8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" -1.995342604603205 -2.7219253110874901e-008 0.13641074098214101 ;
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
	setAttr ".t" -type "double3" 0.70807653984393859 1.2359925673349283 10.121040447222061 ;
	setAttr ".r" -type "double3" -1.1505436496695838e-014 3.9109141386044124 1.9132367643637147e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-1.3225225971648042 -1.4466927085173258 -0.297230171012274
		-1.3225225971648045 -1.4466927085173256 4.3340362611459717
		-1.3225225971648047 1.4466927085173256 4.3340362611459717
		-1.3225225971648045 1.4466927085173256 -0.29723017101227422
		-1.3225225971648042 -1.4466927085173253 -0.29723017101227445
		1.3225225971648049 -1.4466927085173262 -0.29723017101227422
		1.3225225971648047 -1.4466927085173256 4.3340362611459717
		1.3225225971648045 1.446692708517326 4.3340362611459717
		1.3225225971648047 1.446692708517326 -0.29723017101227445
		1.3225225971648049 -1.4466927085173258 -0.29723017101227467
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		
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
	setAttr ".tg[0].tot" -type "double3" 0 -4.7380947893894402e-015 -1.4905820181542874e-015 ;
	setAttr ".tg[0].tor" -type "double3" -54.769764706089923 -9.3381400322682318e-007 
		0 ;
	setAttr ".lr" -type "double3" -54.769764706089916 22.958847643504587 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -8.8817841970012523e-016 
		-1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -54.769764706089916 22.958847643504587 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.027373743659420947 -4.5765647948767123 0.68497331178681664 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.86633171147517 -5.0143838143038764 -23.899394319197636 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" 3.1538066894043482e-005 12.789999642748398 -1.4758827262539853e-006 ;
	setAttr ".r" -type "double3" -3.598898592495315e-014 8.60622494995958e-020 2.2282059158144299e-020 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -17.920095273324829 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" -1.9303702760709029e-005 11.535682219505411 1.4603536925728022e-005 ;
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
	setAttr ".rst" -type "double3" -8.61579 68.189499999999953 -2.3051199999999992 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -12.958518997443834 2.5081412931600795 2.6652044567024404 ;
	setAttr ".sp" -type "double3" -12.958518997443832 2.5081412931600795 2.6652044567024422 ;
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
	setAttr ".rst" -type "double3" -5.5681810025557983 44.069258706836735 -1.4897444567207943 ;
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
	setAttr ".rst" -type "double3" -5.1792100000000083 -11.694400000000009 -0.029719999999997082 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -18.526699999999632 46.577399999996814 1.1754599999816464 ;
	setAttr ".sp" -type "double3" -18.526699999999632 46.577399999996814 1.1754599999816464 ;
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
	setAttr ".tg[0].tot" -type "double3" -18.526699999999636 -1.8894836147475675 1.1754599999816464 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -7.1054273576010019e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 0 2.2204460492503131e-016 ;
	setAttr ".rp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
	setAttr ".sp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
createNode transform -n "rikHandControlZeroGroup" -p "rikHandControlWeaponGroup";
	setAttr ".t" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
	setAttr ".rp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
	setAttr ".sp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
createNode transform -n "rikHandControl" -p "rikHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "//blank";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\" -objs %1\" ) #;";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\" -objs %1\" ) #;";
createNode nurbsSurface -n "rikHandControlShape" -p "rikHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-1.9999999999999996 -2.4494897427831783 -2.4494897427831779
		-1.9999999999999998 -2.4494897427831779 2.4494897427831783
		-2 2.4494897427831779 2.4494897427831783
		-1.9999999999999998 2.4494897427831783 -2.4494897427831779
		-1.9999999999999996 -2.4494897427831779 -2.4494897427831783
		2 -2.4494897427831792 -2.4494897427831779
		2 -2.4494897427831783 2.4494897427831788
		1.9999999999999998 2.4494897427831788 2.4494897427831783
		2 2.4494897427831788 -2.4494897427831783
		2 -2.4494897427831783 -2.4494897427831788
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		
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
	setAttr ".lr" -type "double3" 162.24555324351442 -0.43588784511497974 -24.571534859649979 ;
	setAttr ".rsrr" -type "double3" 162.21357395496352 -5.0143109351771793 -23.89940507092205 ;
	setAttr -k on ".w0";
createNode transform -n "rHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" 162.21357301519998 -5.0143838143038755 -23.899394319197604 ;
	setAttr ".rp" -type "double3" -18.5267 46.577399999999948 1.1754600000000108 ;
	setAttr ".sp" -type "double3" -18.5267 46.577399999999948 1.1754600000000108 ;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -18.526700000000005 49.541097945595098 1.1754600000000082 ;
	setAttr ".rpt" -type "double3" -18.72335150280194 -85.024512769311769 11.165595070102121 ;
	setAttr ".sp" -type "double3" -18.526700000000005 49.541097945595112 1.1754600000000082 ;
	setAttr ".spt" -type "double3" 0 -1.4210854715202002e-014 0 ;
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
	setAttr ".r" -type "double3" -1.1927080055488184e-015 -3.975693351829396e-016 0 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.4729616761930422 3.4921260408693287 -1.9066828826915336 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 4.387154262978696e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.387154262978696e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 4.387154262978696e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.387154262978696e-016 4.5
		-1.1498370615023457e-015 1.9757986303967738 -4.5
		4.5 1.9757986303967738 -3.3676674730115375e-016
		6.0860333699758185e-016 1.9757986303967736 4.5
		-4.5 1.9757986303967738 7.1390647300023646e-016
		-1.1498370615023457e-015 1.9757986303967738 -4.5
		4.5 1.9757986303967738 -3.3676674730115375e-016
		6.0860333699758185e-016 1.9757986303967736 4.5
		-1.1498370615023457e-015 3.9515972607935477 -4.5
		4.5 3.9515972607935477 -2.1430611191891602e-016
		6.0860333699758185e-016 3.9515972607935477 4.5
		-4.5 3.9515972607935477 8.3636710838247419e-016
		-1.1498370615023457e-015 3.9515972607935477 -4.5
		4.5 3.9515972607935477 -2.1430611191891602e-016
		6.0860333699758185e-016 3.9515972607935477 4.5
		-1.1498370615023457e-015 5.9273958911903213 -4.5
		4.5 5.9273958911903213 -9.1845476536678294e-017
		6.0860333699758185e-016 5.9273958911903213 4.5
		-4.5 5.9273958911903213 9.5882774376471192e-016
		-1.1498370615023457e-015 5.9273958911903213 -4.5
		4.5 5.9273958911903213 -9.1845476536678294e-017
		6.0860333699758185e-016 5.9273958911903213 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -11.219354880345927 3.9223204015948916 -26.791038517672146 ;
	setAttr ".rp" -type "double3" 1.5335291750970854 2.1571014366876087 -2.270482540753457 ;
	setAttr ".sp" -type "double3" 1.5335291750970854 2.1571014366876087 -2.270482540753457 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.5335291750970894 2.1571014366876096 -2.2704825407534535 ;
	setAttr ".sp" -type "double3" 1.5335291750970894 2.1571014366876096 -2.2704825407534535 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.5335291750970894 2.1571014366876096 -2.2704825407534535 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.0311954631307496e-015 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0641593048583781e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0641593048583781e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0641593048583781e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0641593048583781e-016 2.25
		-5.7491853075117283e-016 0.92961470761935339 -2.25
		2.25 0.92961470761935339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.92961470761935328 2.25
		-2.25 0.92961470761935339 3.5695323650011823e-016
		-5.7491853075117283e-016 0.92961470761935339 -2.25
		2.25 0.92961470761935339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.92961470761935328 2.25
		-5.7491853075117283e-016 1.8592294152387068 -2.25
		2.25 1.8592294152387068 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8592294152387068 2.25
		-2.25 1.8592294152387068 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8592294152387068 -2.25
		2.25 1.8592294152387068 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8592294152387068 2.25
		-5.7491853075117283e-016 2.7888441228580603 -2.25
		2.25 2.7888441228580603 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7888441228580603 2.25
		-2.25 2.7888441228580603 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7888441228580603 -2.25
		2.25 2.7888441228580603 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7888441228580603 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 2.1090313501745639 -1.9878466759146985e-016 3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" -2.8937297292620789e-005 2.7888441227019949 -5.7542328105730789e-006 ;
	setAttr ".sp" -type "double3" -2.8937297292620789e-005 2.7888441227019949 -5.7542328105730789e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -2.8937297292662423e-005 2.7888441227020033 -5.7542328145698818e-006 ;
	setAttr ".sp" -type "double3" -2.8937297292662423e-005 2.7888441227020033 -5.7542328145698818e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.8937297292662423e-005 2.7888441227020033 -5.7542328145698818e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.2426748900858523e-015 1.9878466759146985e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2038272205304938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2038272205304938e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2038272205304938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2038272205304938e-016 2.25
		-5.7491853075117283e-016 0.54215558217995918 -2.25
		2.25 0.54215558217995918 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54215558217995907 2.25
		-2.25 0.54215558217995918 3.5695323650011823e-016
		-5.7491853075117283e-016 0.54215558217995918 -2.25
		2.25 0.54215558217995918 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54215558217995907 2.25
		-5.7491853075117283e-016 1.0843111643599184 -2.25
		2.25 1.0843111643599184 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0843111643599184 2.25
		-2.25 1.0843111643599184 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0843111643599184 -2.25
		2.25 1.0843111643599184 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0843111643599184 2.25
		-5.7491853075117283e-016 1.6264667465398777 -2.25
		2.25 1.6264667465398777 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6264667465398777 2.25
		-2.25 1.6264667465398777 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6264667465398777 -2.25
		2.25 1.6264667465398777 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6264667465398777 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -17.536781633172549 0 3.975693351829394e-016 ;
	setAttr ".rp" -type "double3" -1.7113955589141694e-005 1.6264667463836293 1.4675492835347637e-005 ;
	setAttr ".sp" -type "double3" -1.7113955589141694e-005 1.6264667463836293 1.4675492835347637e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7113955589190266e-005 1.6264667463836351 1.4675492839955062e-005 ;
	setAttr ".sp" -type "double3" -1.7113955589190266e-005 1.6264667463836351 1.4675492839955062e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7113955589190266e-005 1.6264667463836351 1.4675492839955062e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -4.1372058942474653e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3749656140950404e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3749656140950404e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3749656140950404e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3749656140950404e-016 2.25
		-5.7491853075117283e-016 0.61922946272856694 -2.25
		2.25 0.61922946272856694 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61922946272856683 2.25
		-2.25 0.61922946272856694 3.5695323650011823e-016
		-5.7491853075117283e-016 0.61922946272856694 -2.25
		2.25 0.61922946272856694 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61922946272856683 2.25
		-5.7491853075117283e-016 1.2384589254571339 -2.25
		2.25 1.2384589254571339 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2384589254571339 2.25
		-2.25 1.2384589254571339 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2384589254571339 -2.25
		2.25 1.2384589254571339 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2384589254571339 2.25
		-5.7491853075117283e-016 1.8576883881857009 -2.25
		2.25 1.8576883881857009 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8576883881857009 2.25
		-2.25 1.8576883881857009 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8576883881857009 -2.25
		2.25 1.8576883881857009 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8576883881857009 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 88.72616386636534 80.742213464700896 64.177721267490014 ;
	setAttr ".rp" -type "double3" 0.22417112110667303 6.1468047121770351 -2.4256932120982992 ;
	setAttr ".sp" -type "double3" 0.22417112110667303 6.1468047121770351 -2.4256932120982992 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.22417112110667059 6.1468047121770413 -2.4256932120982988 ;
	setAttr ".sp" -type "double3" 0.22417112110667059 6.1468047121770413 -2.4256932120982988 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.22418116964676726 9.5482333896270308 -1.4514840193906897 ;
	setAttr ".sp" -type "double3" 0.22418116964676726 9.5482333896270308 -1.4514840193906897 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.22417112110666881 6.1468047121770484 -2.4256932120982988 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.4848083448933731e-017 0 7.1593540437240277e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.8281227254421577e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8281227254421577e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.8281227254421577e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8281227254421577e-016 2.25
		-5.7491853075117283e-016 0.82331328250888369 -2.25
		2.25 0.82331328250888369 -1.6838337365057687e-016
		3.0430166849879092e-016 0.82331328250888358 2.25
		-2.25 0.82331328250888369 3.5695323650011823e-016
		-5.7491853075117283e-016 0.82331328250888369 -2.25
		2.25 0.82331328250888369 -1.6838337365057687e-016
		3.0430166849879092e-016 0.82331328250888358 2.25
		-5.7491853075117283e-016 1.6466265650177674 -2.25
		2.25 1.6466265650177674 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6466265650177674 2.25
		-2.25 1.6466265650177674 4.1818355419123709e-016
		-5.7491853075117283e-016 1.6466265650177674 -2.25
		2.25 1.6466265650177674 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6466265650177674 2.25
		-5.7491853075117283e-016 2.4699398475266512 -2.25
		2.25 2.4699398475266512 -4.5922738268339147e-017
		3.0430166849879092e-016 2.4699398475266512 2.25
		-2.25 2.4699398475266512 4.7941387188235596e-016
		-5.7491853075117283e-016 2.4699398475266512 -2.25
		2.25 2.4699398475266512 -4.5922738268339147e-017
		3.0430166849879092e-016 2.4699398475266512 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 42.537290554129918 3.9756933518293969e-016 -8.6968292071268054e-016 ;
	setAttr ".rp" -type "double3" 2.0097080197345463e-005 2.4699398465554108 6.6286742733012716e-005 ;
	setAttr ".sp" -type "double3" 2.0097080197345463e-005 2.4699398465554108 6.6286742733012716e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.0097080197345463e-005 2.4699398465554054 6.6286742736565429e-005 ;
	setAttr ".sp" -type "double3" 2.0097080197345463e-005 2.4699398465554054 6.6286742736565429e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0097080197345463e-005 2.4699398465554054 6.6286742736565429e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 3.9756933518293969e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3141732152348806e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3141732152348806e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3141732152348806e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3141732152348806e-016 2.25
		-5.7491853075117283e-016 0.59185100024320947 -2.25
		2.25 0.59185100024320947 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59185100024320936 2.25
		-2.25 0.59185100024320947 3.5695323650011823e-016
		-5.7491853075117283e-016 0.59185100024320947 -2.25
		2.25 0.59185100024320947 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59185100024320936 2.25
		-5.7491853075117283e-016 1.1837020004864189 -2.25
		2.25 1.1837020004864189 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1837020004864189 2.25
		-2.25 1.1837020004864189 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1837020004864189 -2.25
		2.25 1.1837020004864189 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1837020004864189 2.25
		-5.7491853075117283e-016 1.7755530007296283 -2.25
		2.25 1.7755530007296283 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7755530007296283 2.25
		-2.25 1.7755530007296283 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7755530007296283 -2.25
		2.25 1.7755530007296283 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7755530007296283 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" -1.9474664561515787 1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -5.5782008736571242e-006 1.775553000555302 -2.4246409955352988e-005 ;
	setAttr ".sp" -type "double3" -5.5782008736571242e-006 1.775553000555302 -2.4246409955352988e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -5.5782008745453027e-006 1.7755530005553002 -2.4246409950023917e-005 ;
	setAttr ".sp" -type "double3" -5.5782008745453027e-006 1.7755530005553002 -2.4246409950023917e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.5782008745453027e-006 1.7755530005553002 -2.4246409950023917e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270304e-015 -1.1927080055488188e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.4113051630868553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4113051630868553e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4113051630868553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4113051630868553e-016 2.25
		-5.7491853075117283e-016 0.63559534065840184 -2.25
		2.25 0.63559534065840184 -1.6838337365057687e-016
		3.0430166849879092e-016 0.63559534065840173 2.25
		-2.25 0.63559534065840184 3.5695323650011823e-016
		-5.7491853075117283e-016 0.63559534065840184 -2.25
		2.25 0.63559534065840184 -1.6838337365057687e-016
		3.0430166849879092e-016 0.63559534065840173 2.25
		-5.7491853075117283e-016 1.2711906813168037 -2.25
		2.25 1.2711906813168037 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2711906813168037 2.25
		-2.25 1.2711906813168037 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2711906813168037 -2.25
		2.25 1.2711906813168037 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2711906813168037 2.25
		-5.7491853075117283e-016 1.9067860219752055 -2.25
		2.25 1.9067860219752055 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9067860219752055 2.25
		-2.25 1.9067860219752055 4.7941387188235596e-016
		-5.7491853075117283e-016 1.9067860219752055 -2.25
		2.25 1.9067860219752055 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9067860219752055 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 120.3594354499344 79.201969596661073 101.20097072232744 ;
	setAttr ".rp" -type "double3" 0.33584082925483116 5.9013794343992192 -0.441535683218651 ;
	setAttr ".sp" -type "double3" 0.33584082925483116 5.9013794343992192 -0.441535683218651 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.33584082925483161 5.9013794343992183 -0.44153568321864967 ;
	setAttr ".sp" -type "double3" 0.33584082925483161 5.9013794343992183 -0.44153568321864967 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.33584422096802724 9.8062688070656012 1.2687775336402412 ;
	setAttr ".sp" -type "double3" 0.33584422096802724 9.8062688070656012 1.2687775336402412 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.33584082925483205 5.9013794343992183 -0.44153568321864967 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587939e-016 7.9513867036587939e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.201218961519221e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.201218961519221e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.201218961519221e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.201218961519221e-016 2.25
		-5.7491853075117283e-016 0.99134088948588339 -2.25
		2.25 0.99134088948588339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.99134088948588328 2.25
		-2.25 0.99134088948588339 3.5695323650011823e-016
		-5.7491853075117283e-016 0.99134088948588339 -2.25
		2.25 0.99134088948588339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.99134088948588328 2.25
		-5.7491853075117283e-016 1.9826817789717668 -2.25
		2.25 1.9826817789717668 -1.0715305595945801e-016
		3.0430166849879092e-016 1.9826817789717668 2.25
		-2.25 1.9826817789717668 4.1818355419123709e-016
		-5.7491853075117283e-016 1.9826817789717668 -2.25
		2.25 1.9826817789717668 -1.0715305595945801e-016
		3.0430166849879092e-016 1.9826817789717668 2.25
		-5.7491853075117283e-016 2.9740226684576503 -2.25
		2.25 2.9740226684576503 -4.5922738268339147e-017
		3.0430166849879092e-016 2.9740226684576503 2.25
		-2.25 2.9740226684576503 4.7941387188235596e-016
		-5.7491853075117283e-016 2.9740226684576503 -2.25
		2.25 2.9740226684576503 -4.5922738268339147e-017
		3.0430166849879092e-016 2.9740226684576503 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 52.877712007223472 0 2.3357198441997705e-015 ;
	setAttr ".rp" -type "double3" -1.255941713296238e-006 2.9740226684369055 -1.1039000401780186e-005 ;
	setAttr ".sp" -type "double3" -1.255941713296238e-006 2.9740226684369055 -1.1039000401780186e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.2559417137403273e-006 2.9740226684369002 -1.1039000396451115e-005 ;
	setAttr ".sp" -type "double3" -1.2559417137403273e-006 2.9740226684369002 -1.1039000396451115e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.2559417137403273e-006 2.9740226684369002 -1.1039000396451115e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635187e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6241619105621374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6241619105621374e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6241619105621374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6241619105621374e-016 2.25
		-5.7491853075117283e-016 0.73145749751969946 -2.25
		2.25 0.73145749751969946 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73145749751969935 2.25
		-2.25 0.73145749751969946 3.5695323650011823e-016
		-5.7491853075117283e-016 0.73145749751969946 -2.25
		2.25 0.73145749751969946 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73145749751969935 2.25
		-5.7491853075117283e-016 1.4629149950393989 -2.25
		2.25 1.4629149950393989 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4629149950393989 2.25
		-2.25 1.4629149950393989 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4629149950393989 -2.25
		2.25 1.4629149950393989 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4629149950393989 2.25
		-5.7491853075117283e-016 2.1943724925590984 -2.25
		2.25 2.1943724925590984 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1943724925590984 2.25
		-2.25 2.1943724925590984 4.7941387188235596e-016
		-5.7491853075117283e-016 2.1943724925590984 -2.25
		2.25 2.1943724925590984 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1943724925590984 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 13.190763892526737 -3.975693351829396e-016 -3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" 9.2953098205228457e-006 2.1943724917546135 5.8688384806160343e-005 ;
	setAttr ".sp" -type "double3" 9.2953098205228457e-006 2.1943724917546135 5.8688384806160343e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 9.2953098178583105e-006 2.1943724917546277 5.8688384804383986e-005 ;
	setAttr ".sp" -type "double3" 9.2953098178583105e-006 2.1943724917546277 5.8688384804383986e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.2953098178583105e-006 2.1943724917546277 5.8688384804383986e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 7.9513867036587919e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7729318029673426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7729318029673426e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7729318029673426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7729318029673426e-016 2.25
		-5.7491853075117283e-016 0.79845750071970256 -2.25
		2.25 0.79845750071970256 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79845750071970245 2.25
		-2.25 0.79845750071970256 3.5695323650011823e-016
		-5.7491853075117283e-016 0.79845750071970256 -2.25
		2.25 0.79845750071970256 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79845750071970245 2.25
		-5.7491853075117283e-016 1.5969150014394051 -2.25
		2.25 1.5969150014394051 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5969150014394051 2.25
		-2.25 1.5969150014394051 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5969150014394051 -2.25
		2.25 1.5969150014394051 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5969150014394051 2.25
		-5.7491853075117283e-016 2.3953725021591077 -2.25
		2.25 2.3953725021591077 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3953725021591077 2.25
		-2.25 2.3953725021591077 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3953725021591077 -2.25
		2.25 2.3953725021591077 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3953725021591077 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 129.59657515442046 75.007882671980298 113.80536352798225 ;
	setAttr ".rp" -type "double3" 0.68185382637338388 5.2598376348829703 1.2364880137828289 ;
	setAttr ".sp" -type "double3" 0.68185382637338388 5.2598376348829703 1.2364880137828289 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.6818538263733831 5.2598376348829632 1.2364880137828322 ;
	setAttr ".sp" -type "double3" 0.6818538263733831 5.2598376348829632 1.2364880137828322 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.68185609245640633 8.7045965346486689 2.4848803475983856 ;
	setAttr ".sp" -type "double3" 0.68185609245640633 8.7045965346486689 2.4848803475983856 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.68185382637338199 5.2598376348829552 1.2364880137828358 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.5902773407317588e-015 0 5.9635400277440959e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9254468025225049e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9254468025225049e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9254468025225049e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9254468025225049e-016 2.25
		-5.7491853075117283e-016 0.86714415023620661 -2.25
		2.25 0.86714415023620661 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8671441502362065 2.25
		-2.25 0.86714415023620661 3.5695323650011823e-016
		-5.7491853075117283e-016 0.86714415023620661 -2.25
		2.25 0.86714415023620661 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8671441502362065 2.25
		-5.7491853075117283e-016 1.7342883004724132 -2.25
		2.25 1.7342883004724132 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7342883004724132 2.25
		-2.25 1.7342883004724132 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7342883004724132 -2.25
		2.25 1.7342883004724132 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7342883004724132 2.25
		-5.7491853075117283e-016 2.6014324507086197 -2.25
		2.25 2.6014324507086197 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6014324507086197 2.25
		-2.25 2.6014324507086197 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6014324507086197 -2.25
		2.25 2.6014324507086197 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6014324507086197 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 52.884339545171159 0 0 ;
	setAttr ".rp" -type "double3" 9.1887021103076449e-006 2.6014324501872839 -5.1264180928711767e-005 ;
	setAttr ".sp" -type "double3" 9.1887021103076449e-006 2.6014324501872839 -5.1264180928711767e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 9.1887021096415111e-006 2.6014324501872874 -5.1264180925159053e-005 ;
	setAttr ".sp" -type "double3" 9.1887021096415111e-006 2.6014324501872874 -5.1264180925159053e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.1887021096415111e-006 2.6014324501872874 -5.1264180925159053e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270335e-015 -1.5902773407317584e-015 7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2226102324502132e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2226102324502132e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2226102324502132e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2226102324502132e-016 2.25
		-5.7491853075117283e-016 0.55061469872821356 -2.25
		2.25 0.55061469872821356 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55061469872821345 2.25
		-2.25 0.55061469872821356 3.5695323650011823e-016
		-5.7491853075117283e-016 0.55061469872821356 -2.25
		2.25 0.55061469872821356 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55061469872821345 2.25
		-5.7491853075117283e-016 1.1012293974564271 -2.25
		2.25 1.1012293974564271 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1012293974564271 2.25
		-2.25 1.1012293974564271 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1012293974564271 -2.25
		2.25 1.1012293974564271 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1012293974564271 2.25
		-5.7491853075117283e-016 1.6518440961846408 -2.25
		2.25 1.6518440961846408 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6518440961846408 2.25
		-2.25 1.6518440961846408 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6518440961846408 -2.25
		2.25 1.6518440961846408 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6518440961846408 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 3.9408989797986953 -7.9513867036587899e-016 7.9513867036587899e-016 ;
	setAttr ".rp" -type "double3" -1.3845238170162588e-005 1.6518440959198006 -2.6138910563133777e-005 ;
	setAttr ".sp" -type "double3" -1.3845238170162588e-005 1.6518440959198006 -2.6138910563133777e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.3845238169718499e-005 1.6518440959197989 -2.6138910564910134e-005 ;
	setAttr ".sp" -type "double3" -1.3845238169718499e-005 1.6518440959197989 -2.6138910564910134e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3845238169718499e-005 1.6518440959197989 -2.6138910564910134e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 7.9513867036587899e-016 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7259690377924029e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7259690377924029e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7259690377924029e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7259690377924029e-016 2.25
		-5.7491853075117283e-016 0.77730735154548791 -2.25
		2.25 0.77730735154548791 -1.6838337365057687e-016
		3.0430166849879092e-016 0.7773073515454878 2.25
		-2.25 0.77730735154548791 3.5695323650011823e-016
		-5.7491853075117283e-016 0.77730735154548791 -2.25
		2.25 0.77730735154548791 -1.6838337365057687e-016
		3.0430166849879092e-016 0.7773073515454878 2.25
		-5.7491853075117283e-016 1.5546147030909758 -2.25
		2.25 1.5546147030909758 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5546147030909758 2.25
		-2.25 1.5546147030909758 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5546147030909758 -2.25
		2.25 1.5546147030909758 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5546147030909758 2.25
		-5.7491853075117283e-016 2.3319220546364638 -2.25
		2.25 2.3319220546364638 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3319220546364638 2.25
		-2.25 2.3319220546364638 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3319220546364638 -2.25
		2.25 2.3319220546364638 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3319220546364638 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 137.01639204628725 66.224928839597837 113.49273343209315 ;
	setAttr ".rp" -type "double3" 0.76144329545737721 4.8222607371772739 2.7821348988423087 ;
	setAttr ".sp" -type "double3" 0.76144329545737721 4.8222607371772739 2.7821348988423087 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.76144329545737777 4.8222607371772783 2.7821348988423082 ;
	setAttr ".sp" -type "double3" 0.76144329545737777 4.8222607371772783 2.7821348988423082 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.7614489564874557 7.829779839229456 3.5803082183763708 ;
	setAttr ".sp" -type "double3" 0.7614489564874557 7.829779839229456 3.5803082183763708 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.76144329545737821 4.8222607371772783 2.7821348988423082 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317588e-015 1.490885006936024e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6429201743567609e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6429201743567609e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6429201743567609e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6429201743567609e-016 2.25
		-5.7491853075117283e-016 0.73990546850325789 -2.25
		2.25 0.73990546850325789 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73990546850325778 2.25
		-2.25 0.73990546850325789 3.5695323650011823e-016
		-5.7491853075117283e-016 0.73990546850325789 -2.25
		2.25 0.73990546850325789 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73990546850325778 2.25
		-5.7491853075117283e-016 1.4798109370065158 -2.25
		2.25 1.4798109370065158 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4798109370065158 2.25
		-2.25 1.4798109370065158 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4798109370065158 -2.25
		2.25 1.4798109370065158 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4798109370065158 2.25
		-5.7491853075117283e-016 2.2197164055097738 -2.25
		2.25 2.2197164055097738 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2197164055097738 2.25
		-2.25 2.2197164055097738 4.7941387188235596e-016
		-5.7491853075117283e-016 2.2197164055097738 -2.25
		2.25 2.2197164055097738 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2197164055097738 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 48.093582389589116 0 -4.9696166897867437e-017 ;
	setAttr ".rp" -type "double3" 8.1074572259864919e-006 2.2197164052228904 -3.4754647852963672e-005 ;
	setAttr ".sp" -type "double3" 8.1074572259864919e-006 2.2197164052228904 -3.4754647852963672e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 8.1074572258199584e-006 2.2197164052228882 -3.4754647852963672e-005 ;
	setAttr ".sp" -type "double3" 8.1074572258199584e-006 2.2197164052228882 -3.4754647852963672e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.1074572258199584e-006 2.2197164052228882 -3.4754647852963672e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.0159971325505553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0159971325505553e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0159971325505553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0159971325505553e-016 2.25
		-5.7491853075117283e-016 0.45756443075641734 -2.25
		2.25 0.45756443075641734 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45756443075641728 2.25
		-2.25 0.45756443075641734 3.5695323650011823e-016
		-5.7491853075117283e-016 0.45756443075641734 -2.25
		2.25 0.45756443075641734 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45756443075641728 2.25
		-5.7491853075117283e-016 0.91512886151283468 -2.25
		2.25 0.91512886151283468 -1.0715305595945801e-016
		3.0430166849879092e-016 0.91512886151283468 2.25
		-2.25 0.91512886151283468 4.1818355419123709e-016
		-5.7491853075117283e-016 0.91512886151283468 -2.25
		2.25 0.91512886151283468 -1.0715305595945801e-016
		3.0430166849879092e-016 0.91512886151283468 2.25
		-5.7491853075117283e-016 1.3726932922692521 -2.25
		2.25 1.3726932922692521 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3726932922692521 2.25
		-2.25 1.3726932922692521 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3726932922692521 -2.25
		2.25 1.3726932922692521 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3726932922692521 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" -0.78024491214656422 0 0 ;
	setAttr ".rp" -type "double3" 3.2146029290691658e-006 1.3726932921695347 -1.6229956875335461e-005 ;
	setAttr ".sp" -type "double3" 3.2146029290691658e-006 1.3726932921695347 -1.6229956875335461e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.2146029299018331e-006 1.3726932921695312 -1.6229956878888174e-005 ;
	setAttr ".sp" -type "double3" 3.2146029299018331e-006 1.3726932921695312 -1.6229956878888174e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.2146029299018331e-006 1.3726932921695312 -1.6229956878888174e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635187e-015 1.5902773407317594e-015 -1.5902773407317594e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2921425693906155e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2921425693906155e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2921425693906155e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2921425693906155e-016 2.25
		-5.7491853075117283e-016 0.58192927940171313 -2.25
		2.25 0.58192927940171313 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58192927940171302 2.25
		-2.25 0.58192927940171313 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58192927940171313 -2.25
		2.25 0.58192927940171313 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58192927940171302 2.25
		-5.7491853075117283e-016 1.1638585588034263 -2.25
		2.25 1.1638585588034263 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1638585588034263 2.25
		-2.25 1.1638585588034263 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1638585588034263 -2.25
		2.25 1.1638585588034263 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1638585588034263 2.25
		-5.7491853075117283e-016 1.7457878382051395 -2.25
		2.25 1.7457878382051395 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7457878382051395 2.25
		-2.25 1.7457878382051395 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7457878382051395 -2.25
		2.25 1.7457878382051395 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7457878382051395 2.25
		
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
	setAttr ".rst" -type "double3" -18.526700000000005 46.577399999999948 1.1754600000000082 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-014 2.9636979455951344 
		5.0946407466240723e-016 ;
	setAttr ".tg[0].tor" -type "double3" -2.0077251426738435e-014 -5.5659706925611528e-015 
		9.5416640443905471e-015 ;
	setAttr ".tg[1].tot" -type "double3" 3.5527136788005009e-015 2.9636979455981742 
		-1.8385654661927296e-011 ;
	setAttr ".tg[1].tor" -type "double3" -1.6896696745274934e-014 -5.5659706925611543e-015 
		-1.2722218725854067e-014 ;
	setAttr ".lr" -type "double3" 162.24555324351442 -0.43588784511497947 -24.571534859649983 ;
	setAttr ".rst" -type "double3" 17.507708150759125 79.512801095692708 -10.26373987376479 ;
	setAttr ".rsrr" -type "double3" 162.21357301520001 -5.0143838143038746 -23.899394319197615 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
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
	setAttr ".r" -type "double3" 0 -22.958846709690551 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.6649952107605506 5.49237000000001 -2.5791638680316851 ;
	setAttr ".rpt" -type "double3" 1.4548052107605525 0 -2.0054361319683309 ;
	setAttr ".sp" -type "double3" -5.6649952107605506 5.49237000000001 -2.5791638680316851 ;
	setAttr ".hdl" -type "double3" -5.6649952107605506 5.49237000000001 -2.5791638680316851 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-6.9875458604546887 1.1263978746314951 -6.2583298793026305
		-6.9875458604546887 1.1263978746314951 2.054143257738422
		-6.9875458604546896 9.8583421253685231 2.054143257738422
		-6.9875458604546887 9.8583421253685248 -6.2583298793026305
		-6.9875458604546887 1.126397874631496 -6.2583298793026305
		-4.3424445610664133 1.1263978746314951 -6.2583298793026305
		-4.3424445610664133 1.1263978746314951 2.0541432577384229
		-4.3424445610664142 9.8583421253685248 2.054143257738422
		-4.3424445610664133 9.8583421253685248 -6.2583298793026305
		-4.3424445610664133 1.1263978746314951 -6.2583298793026305
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -4.2101900000000008 5.4923700000000135 -4.5846000000000169 ;
	setAttr ".sp" -type "double3" -4.2101900000000008 5.4923700000000135 -4.5846000000000169 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -4.2101900000000008 5.4923700000000135 -4.5846000000000169 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -125.16731625971778 -2.2548937002404332 -3.196244107139544 ;
	setAttr ".rp" -type "double3" 1.6871864552681082e-006 8.0914784532705717 1.0096117216223057 ;
	setAttr ".sp" -type "double3" 1.6871864552681082e-006 8.0914784532705717 1.0096117216223057 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" 1.6871864552681082e-006 8.0914784532705717 1.0096117216223057 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" -8.0553789939415387e-031 0 -3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -2.6396965208568965 -9.1896501790973271e-016 0.51482941474016686 ;
	setAttr ".sp" -type "double3" -2.6396965208568965 -9.1896501790973271e-016 0.51482941474016686 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.6396965208568965 -9.1896501790973271e-016 0.51482941474016686 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -8.0553789939415387e-031 0 -3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" 5.2833968515162812 -0.034455999732017593 -0.26603388801522621 ;
	setAttr ".sp" -type "double3" 5.2833968515162812 -0.034455999732017593 -0.26603388801522621 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 5.2833968515162812 -0.034455999732017593 -0.26603388801522621 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" 6.6208594470752375e-031 0 0 ;
	setAttr ".rp" -type "double3" -1.9356238665811363 0.034455999732019293 -10.369835979247631 ;
	setAttr ".sp" -type "double3" -1.9356238665811363 0.034455999732019293 -10.369835979247631 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -1.9356238665811363 0.034455999732019293 -10.369835979247631 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 6.6208594470752375e-031 0 0 ;
	setAttr ".rp" -type "double3" -1.1230475547845797 -2.5648466085816656e-015 15.533723568565204 ;
	setAttr ".sp" -type "double3" -1.1230475547845797 -2.5648466085816656e-015 15.533723568565204 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -1.1230475547845797 -2.5648466085816656e-015 15.533723568565204 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 90.000000000000071 -3.9109137096905253 0 ;
	setAttr ".rp" -type "double3" 0.41496639907801303 1.2359900000000066 -5.4126817802315212 ;
	setAttr ".sp" -type "double3" 0.41496639907801303 1.2359900000000066 -5.4126817802315212 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.41496639907801303 1.2359900000000066 -5.4126817802315212 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 35.230235293910084 0 0 ;
	setAttr ".rp" -type "double3" 2.9024070660188528e-006 -6.0270416534973066 -4.2563800000000009 ;
	setAttr ".sp" -type "double3" 2.9024070660188528e-006 -6.0270416534973066 -4.2563800000000009 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 2.9024070660188528e-006 -6.0270416534973066 -4.2563800000000009 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.995564354220174 2.3306243034783574 -1.6624464089228397 ;
	setAttr ".r" -type "double3" -123.03476231092594 -13.003880618108138 -19.087465128330873 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -3.4831683126621513 -0.013501748019383083 -4.5845999969600824 ;
	setAttr ".rpt" -type "double3" -1.5123960415580213 -2.3171225554589769 6.247046405882922 ;
	setAttr ".sp" -type "double3" -3.4831683167411147 -0.013501748557985138 -4.5845999984800683 ;
	setAttr ".spt" -type "double3" 8.8817841970012513e-016 3.4694469519536138e-018 1.7763568394002499e-015 ;
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
	setAttr ".rst" -type "double3" -0.11546101475421544 9.1416142724850857 15.971459919499193 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6932485917100815 0.6105193352945173 -8.7951232479504089 ;
	setAttr ".r" -type "double3" 1.0262851516848437e-014 19.047933000000004 1.7041125004535616e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -6.0931648721656417 0.62547066470548918 1.474623690372481 ;
	setAttr ".rpt" -type "double3" 0.81488267953357407 0 1.9078177773464071 ;
	setAttr ".sp" -type "double3" -6.09316487216564 0.62547066470549106 1.4746236903724803 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-015 3.3306690738754711e-016 
		6.6613381477509422e-016 ;
	setAttr ".pv" -type "double3" -0.078690362360717081 1.6336805887340813 1.1510410769668502 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 90.000000000000071 -3.9109137096905284 -3.5393671444023642e-031 ;
	setAttr ".rp" -type "double3" -0.7080811557065676 1.2359900000000039 10.121041788333685 ;
	setAttr ".sp" -type "double3" -0.7080811557065676 1.2359900000000039 10.121041788333685 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -0.7080811557065676 1.2359900000000039 10.121041788333685 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -90.000000000000071 -5.649800061504203e-030 -3.9109137096905284 ;
	setAttr ".rp" -type "double3" -0.044826330089814181 5.4283802157314582 1.2359899999999995 ;
	setAttr ".sp" -type "double3" -0.044826330089814181 5.4283802157314582 1.2359899999999995 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -0.044826330089814181 5.4283802157314582 1.2359899999999995 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.114123570311353 0.24938541908877607 -7.8500503840892364 ;
	setAttr ".r" -type "double3" 1.0419042809555144e-014 19.047932999999997 -3.4408531154746743e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -7.3377662502055037 0.98660458091122738 5.7285601534196298 ;
	setAttr ".rpt" -type "double3" 2.2713404003078157 0 2.0810841458740676 ;
	setAttr ".sp" -type "double3" -7.3377662502055037 0.98660458091123004 5.7285601534196324 ;
	setAttr ".spt" -type "double3" 0 -4.4408920985006242e-016 -8.8817841970012504e-016 ;
	setAttr ".pv" -type "double3" 1.9953427223330695 -1.4040305156536361e-008 0.13640901888239254 ;
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
	setAttr ".lr" -type "double3" -90.000000000000071 0 0 ;
	setAttr ".o" -type "double3" 90.000000000000071 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" -0.70808115570656782 1.2359900000000024 10.121041788333685 ;
	setAttr ".r" -type "double3" 9.7235613010341583e-015 -3.9109137096905315 -2.2425887054070596e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-1.3225506496941375 -1.4466658259802432 -0.29723647567437128
		-1.3225506496941382 -1.4466658259802432 4.3340706183374014
		-1.3225506496941384 1.446665825980243 4.3340706183374014
		-1.3225506496941377 1.4466658259802432 -0.29723647567437128
		-1.3225506496941375 -1.4466658259802427 -0.29723647567437173
		1.3225506496941382 -1.4466658259802438 -0.2972364756743715
		1.3225506496941375 -1.4466658259802432 4.3340706183374023
		1.3225506496941373 1.4466658259802436 4.3340706183374023
		1.3225506496941379 1.4466658259802436 -0.29723647567437173
		1.3225506496941382 -1.4466658259802434 -0.29723647567437195
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 3.3384542776194419e-015 
		-8.4150686419093273e-016 ;
	setAttr ".tg[0].tor" -type "double3" 125.23023529391018 2.2263882770244617e-014 
		0 ;
	setAttr ".lr" -type "double3" 125.23023529391018 -22.958846709690548 1.7270881769881097e-015 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 0 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 125.23023529391018 -22.958846709690548 1.7270881769881097e-015 ;
	setAttr -k on ".w0";
createNode transform -n "poleVectorGroup" -p "main";
createNode transform -n "rkneeControl" -p "poleVectorGroup";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
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
	setAttr ".rp" -type "double3" -5.23765 25.6991 -1.6528300000000085 ;
	setAttr ".sp" -type "double3" -5.23765 25.6991 -1.6528300000000085 ;
	setAttr ".hdl" -type "double3" -5.23765 25.6991 -1.6528300000000085 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-5.2376499999999995 25.699099999999998 -2.6528300000000087
		-5.2376499999999995 24.699099999999998 -1.6528300000000085
		-5.2376499999999995 25.699099999999998 -0.65283000000000846
		-5.2376499999999995 26.699099999999998 -1.6528300000000082
		-5.2376499999999995 25.699099999999998 -2.6528300000000087
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lkneeControl" -p "poleVectorGroup";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
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
	setAttr ".rp" -type "double3" 5.2376490231404267 25.699061008384806 -1.652827953468569 ;
	setAttr ".sp" -type "double3" 5.2376490231404267 25.699061008384806 -1.652827953468569 ;
	setAttr ".hdl" -type "double3" 5.2376490231404267 25.699061008384806 -1.652827953468569 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		5.2376490231404267 25.699061008384806 -2.6528279534685693
		5.2376490231404267 24.699061008384806 -1.652827953468569
		5.2376490231404267 25.699061008384806 -0.65282795346856903
		5.2376490231404267 26.699061008384806 -1.6528279534685688
		5.2376490231404267 25.699061008384806 -2.6528279534685693
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lElbowControl" -p "poleVectorGroup";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 13.795018447690166 56.495086211568818 -2.334844510331326 ;
	setAttr ".sp" -type "double3" 13.795018447690166 56.495086211568818 -2.334844510331326 ;
	setAttr ".hdl" -type "double3" 13.795018447690166 56.495086211568818 -2.334844510331326 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		13.795018447690166 56.495086211568818 -3.334844510331326
		13.795018447690166 55.495086211568818 -2.334844510331326
		13.795018447690166 56.495086211568818 -1.334844510331326
		13.795018447690166 57.495086211568818 -2.334844510331326
		13.795018447690166 56.495086211568818 -3.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rElbowControl" -p "poleVectorGroup";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
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
	setAttr ".rp" -type "double3" -13.795000000000009 56.495099999999944 -2.3348399999999963 ;
	setAttr ".sp" -type "double3" -13.795000000000009 56.495099999999944 -2.3348399999999963 ;
	setAttr ".hdl" -type "double3" -13.795000000000009 56.495099999999944 -2.3348399999999963 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-13.795000000000009 56.495099999999944 -3.3348399999999963
		-13.795000000000009 55.495099999999944 -2.3348399999999963
		-13.795000000000009 56.495099999999944 -1.3348399999999963
		-13.795000000000009 57.495099999999944 -2.3348399999999963
		-13.795000000000009 56.495099999999944 -3.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "poleVectorGroup_pointConstraint1" -p "poleVectorGroup";
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
	setAttr ".o" -type "double3" 0 -48.466883614744376 0 ;
	setAttr -k on ".w0";
createNode transform -n "locator1" -p "main";
	setAttr ".rp" -type "double3" -3.0423727035522461 56.861118316650391 -9.3355556963101289 ;
	setAttr ".sp" -type "double3" -3.0423727035522461 56.861118316650391 -9.3355556963101289 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -3.0423727035522461 56.861118316650391 -9.3355556963101289 ;
createNode parentConstraint -n "locator1_parentConstraint1" -p "locator1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_2W0" -bt "W000" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.0423727035522461 8.8144930172457165 6.1474477895084414 ;
	setAttr ".tg[0].tor" -type "double3" 173.26418577919966 0 0 ;
	setAttr ".lr" -type "double3" 9.5416640443905487e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.1054273576010019e-015 0 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905487e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_glasses_parentConstraint1" -p "main";
	addAttr -ci true -k true -sn "w0" -ln "prp_glassesControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -3.9273344481706642 -10.574422267048819 0.5993759241034945 ;
	setAttr ".rst" -type "double3" -0.022273387037058577 -1.3011315805861585 -5.929777336920802 ;
	setAttr ".rsrr" -type "double3" -7.1438239915684456e-017 -1.3941629084722638e-033 
		-2.2363275104040351e-015 ;
	setAttr -k on ".w0";
createNode transform -n "nurbsCircle1";
	setAttr ".ro" 3;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode pointConstraint -n "nurbsCircle1_pointConstraint1" -p "nurbsCircle1";
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
	setAttr ".rst" -type "double3" 0 48.466883614744376 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_coat_front_1_LControlZeroGroup" -p "nurbsCircle1";
	setAttr ".r" -type "double3" 23.172663634922756 -53.75028283394127 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 7.7950910914227212 40.180285230440766 2.8576757053682615 ;
	setAttr ".rpt" -type "double3" -18.055253369397143 -4.3661222386148557 14.33127062606126 ;
	setAttr ".sp" -type "double3" 7.7950910914227212 40.180285230440774 2.8576757053682615 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
createNode transform -n "Ref:prp_coat_front_1_LControl" -p "Ref:prp_coat_front_1_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.7950910914227292 40.180285230440774 2.8576757053682567 ;
	setAttr ".sp" -type "double3" 7.7950910914227292 40.180285230440774 2.8576757053682567 ;
createNode nurbsSurface -n "Ref:prp_coat_front_1_LControlShape" -p "Ref:prp_coat_front_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		7.7950910914227283 40.180285230440774 -0.14232429463174157
		10.79509109142273 40.180285230440774 2.857675705368258
		7.7950910914227292 40.180285230440774 5.8576757053682584
		4.7950910914227292 40.180285230440774 2.8576757053682589
		7.7950910914227283 40.180285230440774 -0.14232429463174157
		10.79509109142273 40.180285230440774 2.857675705368258
		7.7950910914227292 40.180285230440774 5.8576757053682584
		7.7950910914227283 36.322506637941146 -0.14232429463174157
		10.79509109142273 36.322506637941146 2.857675705368258
		7.7950910914227292 36.322506637941146 5.8576757053682584
		4.7950910914227292 36.322506637941146 2.8576757053682589
		7.7950910914227283 36.322506637941146 -0.14232429463174157
		10.79509109142273 36.322506637941146 2.857675705368258
		7.7950910914227292 36.322506637941146 5.8576757053682584
		7.7950910914227283 32.464728045441518 -0.14232429463174157
		10.79509109142273 32.464728045441518 2.8576757053682584
		7.7950910914227292 32.464728045441518 5.8576757053682584
		4.7950910914227292 32.464728045441518 2.8576757053682589
		7.7950910914227283 32.464728045441518 -0.14232429463174157
		10.79509109142273 32.464728045441518 2.8576757053682584
		7.7950910914227292 32.464728045441518 5.8576757053682584
		7.7950910914227283 28.606949452941898 -0.14232429463174157
		10.79509109142273 28.606949452941898 2.8576757053682584
		7.7950910914227292 28.606949452941898 5.8576757053682584
		4.7950910914227292 28.606949452941898 2.8576757053682589
		7.7950910914227283 28.606949452941898 -0.14232429463174157
		10.79509109142273 28.606949452941898 2.8576757053682584
		7.7950910914227292 28.606949452941898 5.8576757053682584
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_front_2_LControlZeroGroup" -p "Ref:prp_coat_front_1_LControl";
	setAttr ".rp" -type "double3" 7.7950910914227221 17.070450138170152 3.7803265488658262 ;
	setAttr ".sp" -type "double3" 7.7950910914227221 17.070450138170152 3.7803265488658262 ;
createNode transform -n "Ref:prp_coat_front_2_LControl" -p "Ref:prp_coat_front_2_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.7950910914227247 28.60694945294189 2.8576757053682584 ;
	setAttr ".sp" -type "double3" 7.7950910914227212 28.60694945294189 2.8576757053682584 ;
	setAttr ".spt" -type "double3" 3.5527136788005025e-015 0 0 ;
createNode nurbsSurface -n "Ref:prp_coat_front_2_LControlShape" -p "Ref:prp_coat_front_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		7.7950910914227221 28.367783098166786 -0.13277567439761206
		10.795091091422723 28.60694945294189 2.8576757053682562
		7.7950910914227229 28.846115807716995 5.8481270851341254
		4.7950910914227229 28.60694945294189 2.8576757053682571
		7.7950910914227221 28.367783098166786 -0.13277567439761206
		10.795091091422723 28.60694945294189 2.8576757053682562
		7.7950910914227229 28.846115807716995 5.8481270851341254
		7.7950910914227221 22.779936844419975 0.31412168317018807
		10.795091091422723 23.019103199195079 3.3045730629360563
		7.7950910914227229 23.258269553970187 6.2950244427019246
		4.7950910914227229 23.019103199195079 3.3045730629360572
		7.7950910914227221 22.779936844419975 0.31412168317018807
		10.795091091422723 23.019103199195079 3.3045730629360563
		7.7950910914227229 23.258269553970187 6.2950244427019246
		7.7950910914227221 17.192090590673168 0.76101904073798821
		10.795091091422723 17.431256945448272 3.7514704205038565
		7.7950910914227229 17.670423300223376 6.7419218002697257
		4.7950910914227229 17.431256945448272 3.7514704205038569
		7.7950910914227221 17.192090590673168 0.76101904073798821
		10.795091091422723 17.431256945448272 3.7514704205038565
		7.7950910914227229 17.670423300223376 6.7419218002697257
		7.7950910914227221 11.60424433692636 1.2079163983057877
		10.795091091422723 11.843410691701465 4.1983677780716562
		7.7950910914227229 12.082577046476569 7.1888191578375249
		4.7950910914227229 11.843410691701465 4.1983677780716571
		7.7950910914227221 11.60424433692636 1.2079163983057877
		10.795091091422723 11.843410691701465 4.1983677780716562
		7.7950910914227229 12.082577046476569 7.1888191578375249
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1" 
		-p "Ref:prp_coat_front_1_LControlZeroGroup";
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
	setAttr ".tg[0].tot" -type "double3" 7.795091091422707 -8.2865983843035593 2.8576757053682629 ;
	setAttr ".tg[0].tor" -type "double3" 23.172663634922753 -53.75028283394127 0 ;
	setAttr ".lr" -type "double3" 23.172663634922753 -53.75028283394127 0 ;
	setAttr ".rst" -type "double3" -1.4210854715202004e-014 4.2632564145606011e-014 
		1.3322676295501878e-015 ;
	setAttr ".rsrr" -type "double3" 23.172663634922753 -53.75028283394127 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_coat_front_1_RControlZeroGroup" -p "nurbsCircle1";
	setAttr ".r" -type "double3" 23.172663634922706 53.750283251564262 2.6894336450973535e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -7.7950911939952112 40.180285230440759 2.8576757420196977 ;
	setAttr ".rpt" -type "double3" 18.055253563779214 -4.3661222530373003 14.331270617267633 ;
	setAttr ".sp" -type "double3" -7.7950911939952112 40.180285230440766 2.8576757420196977 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
createNode transform -n "Ref:prp_coat_front_1_RControl" -p "Ref:prp_coat_front_1_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.7950911939952121 40.180285230440752 2.8576757420196959 ;
	setAttr ".sp" -type "double3" -7.7950911939952121 40.180285230440752 2.8576757420196959 ;
createNode nurbsSurface -n "Ref:prp_coat_front_1_RControlShape" -p "Ref:prp_coat_front_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.7950911939952112 40.180285230440759 -0.14232425798030235
		-4.7950911939952103 40.180285230440759 2.8576757420196972
		-7.7950911939952103 40.180285230440759 5.8576757420196977
		-10.79509119399521 40.180285230440759 2.8576757420196981
		-7.7950911939952112 40.180285230440759 -0.14232425798030235
		-4.7950911939952103 40.180285230440759 2.8576757420196972
		-7.7950911939952103 40.180285230440759 5.8576757420196977
		-7.7950911939952112 36.322506637941132 -0.14232425798030235
		-4.7950911939952103 36.322506637941132 2.8576757420196972
		-7.7950911939952103 36.322506637941132 5.8576757420196977
		-10.79509119399521 36.322506637941132 2.8576757420196981
		-7.7950911939952112 36.322506637941132 -0.14232425798030235
		-4.7950911939952103 36.322506637941132 2.8576757420196972
		-7.7950911939952103 36.322506637941132 5.8576757420196977
		-7.7950911939952112 32.464728045441504 -0.14232425798030235
		-4.7950911939952103 32.464728045441511 2.8576757420196977
		-7.7950911939952103 32.464728045441511 5.8576757420196977
		-10.79509119399521 32.464728045441511 2.8576757420196981
		-7.7950911939952112 32.464728045441504 -0.14232425798030235
		-4.7950911939952103 32.464728045441511 2.8576757420196977
		-7.7950911939952103 32.464728045441511 5.8576757420196977
		-7.7950911939952112 28.606949452941883 -0.14232425798030235
		-4.7950911939952103 28.606949452941883 2.8576757420196977
		-7.7950911939952103 28.606949452941883 5.8576757420196977
		-10.79509119399521 28.606949452941883 2.8576757420196981
		-7.7950911939952112 28.606949452941883 -0.14232425798030235
		-4.7950911939952103 28.606949452941883 2.8576757420196977
		-7.7950911939952103 28.606949452941883 5.8576757420196977
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_front_2_RControlZeroGroup" -p "Ref:prp_coat_front_1_RControl";
	setAttr ".rp" -type "double3" -7.7950911939952192 17.070450138170116 3.7803265855172672 ;
	setAttr ".sp" -type "double3" -7.7950911939952192 17.070450138170116 3.7803265855172672 ;
createNode transform -n "Ref:prp_coat_front_2_RControl" -p "Ref:prp_coat_front_2_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.7950911939952157 28.606949452941876 2.8576757420196972 ;
	setAttr ".sp" -type "double3" -7.7950911939952157 28.606949452941876 2.8576757420196977 ;
	setAttr ".spt" -type "double3" 0 0 -4.4408920985006252e-016 ;
createNode nurbsSurface -n "Ref:prp_coat_front_2_RControlShape" -p "Ref:prp_coat_front_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.7950911939952148 28.367783098166765 -0.13277563774616885
		-4.7950911939952139 28.606949452941869 2.8576757420196994
		-7.7950911939952139 28.846115807716973 5.8481271217855681
		-10.795091193995214 28.606949452941869 2.8576757420197003
		-7.7950911939952148 28.367783098166765 -0.13277563774616885
		-4.7950911939952139 28.606949452941869 2.8576757420196994
		-7.7950911939952139 28.846115807716973 5.8481271217855681
		-7.7950911939952148 22.779936844419957 0.31412171982162951
		-4.7950911939952139 23.019103199195062 3.3045730995874982
		-7.7950911939952139 23.258269553970166 6.2950244793533674
		-10.795091193995214 23.019103199195062 3.3045730995874987
		-7.7950911939952148 22.779936844419957 0.31412171982162951
		-4.7950911939952139 23.019103199195062 3.3045730995874982
		-7.7950911939952139 23.258269553970166 6.2950244793533674
		-7.7950911939952148 17.192090590673146 0.76101907738942831
		-4.7950911939952139 17.431256945448254 3.7514704571552966
		-7.7950911939952139 17.670423300223359 6.7419218369211649
		-10.795091193995214 17.431256945448254 3.7514704571552975
		-7.7950911939952148 17.192090590673146 0.76101907738942831
		-4.7950911939952139 17.431256945448254 3.7514704571552966
		-7.7950911939952139 17.670423300223359 6.7419218369211649
		-7.7950911939952148 11.604244336926342 1.2079164349572267
		-4.7950911939952139 11.843410691701447 4.1983678147230954
		-7.7950911939952139 12.082577046476551 7.1888191944889641
		-10.795091193995214 11.843410691701447 4.1983678147230963
		-7.7950911939952148 11.604244336926342 1.2079164349572267
		-4.7950911939952139 11.843410691701447 4.1983678147230954
		-7.7950911939952139 12.082577046476551 7.1888191944889641
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1" 
		-p "Ref:prp_coat_front_1_RControlZeroGroup";
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
	setAttr ".tg[0].tot" -type "double3" -7.795091193995213 -8.2865983843036091 2.8576757420196985 ;
	setAttr ".tg[0].tor" -type "double3" 23.172663634922699 53.750283251564262 2.6894336450973535e-015 ;
	setAttr ".lr" -type "double3" 23.172663634922699 53.750283251564262 2.6894336450973535e-015 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 23.172663634922699 53.750283251564262 2.6894336450973535e-015 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_coat_back_0_LControlZeroGroup" -p "nurbsCircle1";
	setAttr ".r" -type "double3" 13.694327567031248 -25.310282800166959 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 7.6207730000000335 49.052024495117024 -2.6348594973144448 ;
	setAttr ".rpt" -type "double3" -4.6017675175055732 -0.77064154505335747 14.076600583514939 ;
	setAttr ".sp" -type "double3" 7.6207730000000353 49.052024495117038 -2.6348594973144452 ;
	setAttr ".spt" -type "double3" -1.7763568394002503e-015 -1.4210854715202002e-014 
		4.4408920985006257e-016 ;
createNode transform -n "Ref:prp_coat_back_0_LControl" -p "Ref:prp_coat_back_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.6207730000000371 49.052024495117045 -2.6348594973144461 ;
	setAttr ".sp" -type "double3" 7.6207730000000371 49.052024495117045 -2.6348594973144461 ;
createNode nurbsSurface -n "Ref:prp_coat_back_0_LControlShape" -p "Ref:prp_coat_back_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		7.6207730000000344 49.052024495117038 -5.6348594973144452
		10.620773000000035 49.052024495117038 -2.6348594973144457
		7.6207730000000353 49.052024495117038 0.36514050268555476
		4.6207730000000353 49.052024495117038 -2.6348594973144448
		7.6207730000000344 49.052024495117038 -5.6348594973144452
		10.620773000000035 49.052024495117038 -2.6348594973144457
		7.6207730000000353 49.052024495117038 0.36514050268555476
		7.6207730000000344 45.5130051647388 -5.6348594973144452
		10.620773000000035 45.5130051647388 -2.6348594973144457
		7.6207730000000353 45.513005164738807 0.36514050268555476
		4.6207730000000353 45.5130051647388 -2.6348594973144448
		7.6207730000000344 45.5130051647388 -5.6348594973144452
		10.620773000000035 45.5130051647388 -2.6348594973144457
		7.6207730000000353 45.513005164738807 0.36514050268555476
		7.6207730000000344 41.973985834360569 -5.6348594973144452
		10.620773000000035 41.973985834360569 -2.6348594973144452
		7.6207730000000353 41.973985834360569 0.36514050268555476
		4.6207730000000353 41.973985834360569 -2.6348594973144448
		7.6207730000000344 41.973985834360569 -5.6348594973144452
		10.620773000000035 41.973985834360569 -2.6348594973144452
		7.6207730000000353 41.973985834360569 0.36514050268555476
		7.6207730000000344 38.434966503982338 -5.6348594973144452
		10.620773000000035 38.434966503982338 -2.6348594973144452
		7.6207730000000353 38.434966503982338 0.36514050268555476
		4.6207730000000353 38.434966503982338 -2.6348594973144448
		7.6207730000000344 38.434966503982338 -5.6348594973144452
		10.620773000000035 38.434966503982338 -2.6348594973144452
		7.6207730000000353 38.434966503982338 0.36514050268555476
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_1_LControlZeroGroup" -p "Ref:prp_coat_back_0_LControl";
	setAttr ".rp" -type "double3" 7.6207730000000335 27.825136299639532 -3.0265525175905301 ;
	setAttr ".sp" -type "double3" 7.6207730000000335 27.825136299639532 -3.0265525175905301 ;
createNode transform -n "Ref:prp_coat_back_1_LControl" -p "Ref:prp_coat_back_1_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.6207730000000335 38.434966503982317 -2.6348594973144501 ;
	setAttr ".sp" -type "double3" 7.62077300000003 38.434966503982317 -2.6348594973144497 ;
	setAttr ".spt" -type "double3" 3.5527136788005025e-015 0 -4.4408920985006271e-016 ;
createNode nurbsSurface -n "Ref:prp_coat_back_1_LControlShape" -p "Ref:prp_coat_back_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		7.6207730000000291 38.545644910543665 -5.6328171838605821
		10.62077300000003 38.434966503982317 -2.6348594973144497
		7.62077300000003 38.324288097420968 0.36309818923168358
		4.62077300000003 38.434966503982317 -2.6348594973144488
		7.6207730000000291 38.545644910543665 -5.6328171838605821
		10.62077300000003 38.434966503982317 -2.6348594973144497
		7.62077300000003 38.324288097420968 0.36309818923168358
		7.6207730000000291 35.479330616482542 -5.7460191752048821
		10.62077300000003 35.368652209921194 -2.7480614886587489
		7.62077300000003 35.257973803359846 0.24989619788738393
		4.62077300000003 35.368652209921194 -2.7480614886587484
		7.6207730000000291 35.479330616482542 -5.7460191752048821
		10.62077300000003 35.368652209921194 -2.7480614886587489
		7.62077300000003 35.257973803359846 0.24989619788738393
		7.6207730000000291 32.41301632242142 -5.8592211665491813
		10.62077300000003 32.302337915860072 -2.8612634800030485
		7.62077300000003 32.191659509298724 0.13669420654308428
		4.62077300000003 32.302337915860072 -2.8612634800030476
		7.6207730000000291 32.41301632242142 -5.8592211665491813
		10.62077300000003 32.302337915860072 -2.8612634800030485
		7.62077300000003 32.191659509298724 0.13669420654308428
		7.6207730000000291 29.346702028360301 -5.9724231578934805
		10.62077300000003 29.236023621798953 -2.9744654713473482
		7.62077300000003 29.125345215237605 0.023492215198785082
		4.62077300000003 29.236023621798953 -2.9744654713473473
		7.6207730000000291 29.346702028360301 -5.9724231578934805
		10.62077300000003 29.236023621798953 -2.9744654713473482
		7.62077300000003 29.125345215237605 0.023492215198785082
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_2_LControlZeroGroup" -p "Ref:prp_coat_back_1_LControl";
	setAttr ".rp" -type "double3" 7.6207730000000247 20.055487058019292 -3.6479866427857282 ;
	setAttr ".sp" -type "double3" 7.6207730000000247 20.055487058019292 -3.6479866427857282 ;
createNode transform -n "Ref:prp_coat_back_2_LControl" -p "Ref:prp_coat_back_2_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.6207730000000264 29.236023621798946 -2.9744654713473415 ;
	setAttr ".sp" -type "double3" 7.6207730000000291 29.236023621798946 -2.974465471347342 ;
	setAttr ".spt" -type "double3" -3.5527136788004997e-015 0 4.4408920985006257e-016 ;
createNode nurbsSurface -n "Ref:prp_coat_back_2_LControlShape" -p "Ref:prp_coat_back_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		7.6207730000000291 29.455525797084334 -5.9664244943028688
		10.62077300000003 29.23602362179895 -2.9744654713473437
		7.62077300000003 29.016521446513561 0.017493551608182667
		4.62077300000003 29.23602362179895 -2.9744654713473428
		7.6207730000000291 29.455525797084334 -5.9664244943028688
		10.62077300000003 29.23602362179895 -2.9744654713473437
		7.62077300000003 29.016521446513561 0.017493551608182667
		7.6207730000000291 25.027100992231901 -6.291311590113648
		10.62077300000003 24.807598816946513 -3.2993525671581225
		7.62077300000003 24.588096641661128 -0.30739354420259613
		4.62077300000003 24.807598816946513 -3.2993525671581216
		7.6207730000000291 25.027100992231901 -6.291311590113648
		10.62077300000003 24.807598816946513 -3.2993525671581225
		7.62077300000003 24.588096641661128 -0.30739354420259613
		7.6207730000000291 20.598676187379464 -6.6161986859244273
		10.62077300000003 20.379174012094079 -3.6242396629689013
		7.62077300000003 20.159671836808691 -0.63228064001337492
		4.62077300000003 20.379174012094079 -3.6242396629689004
		7.6207730000000291 20.598676187379464 -6.6161986859244273
		10.62077300000003 20.379174012094079 -3.6242396629689013
		7.62077300000003 20.159671836808691 -0.63228064001337492
		7.6207730000000291 16.170251382527034 -6.9410857817352056
		10.62077300000003 15.950749207241646 -3.9491267587796801
		7.62077300000003 15.73124703195626 -0.95716773582415415
		4.62077300000003 15.950749207241646 -3.9491267587796792
		7.6207730000000291 16.170251382527034 -6.9410857817352056
		10.62077300000003 15.950749207241646 -3.9491267587796801
		7.62077300000003 15.73124703195626 -0.95716773582415415
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1" 
		-p "Ref:prp_coat_back_0_LControlZeroGroup";
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
	setAttr ".tg[0].tot" -type "double3" 7.6207730000000344 0.58514088037266276 -2.634859497314447 ;
	setAttr ".tg[0].tor" -type "double3" 13.694327567031248 -25.310282800166959 0 ;
	setAttr ".lr" -type "double3" 13.694327567031246 -25.310282800166956 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 0 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 13.694327567031246 -25.310282800166956 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_coat_back_0_MControlZeroGroup" -p "nurbsCircle1";
	setAttr ".r" -type "double3" 16.044357320284441 0 0 ;
	setAttr ".rp" -type "double3" -8.8817841970012681e-016 49.086360931396491 -4.4440298080444869 ;
	setAttr ".rpt" -type "double3" 0 -0.6837637497496587 13.739664078676562 ;
	setAttr ".sp" -type "double3" -8.8817841970012681e-016 49.086360931396491 -4.4440298080444869 ;
createNode transform -n "Ref:prp_coat_back_0_MControl" -p "Ref:prp_coat_back_0_MControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012681e-016 49.086360931396491 -4.4440298080444833 ;
	setAttr ".sp" -type "double3" -8.8817841970012681e-016 49.086360931396491 -4.4440298080444833 ;
createNode nurbsSurface -n "Ref:prp_coat_back_0_MControlShape" -p "Ref:prp_coat_back_0_MControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.6547364607016906e-015 49.086360931396491 -7.4440298080444869
		2.9999999999999991 49.086360931396491 -4.4440298080444869
		-4.8244286170173891e-016 49.086360931396491 -1.4440298080444869
		-3.0000000000000009 49.086360931396491 -4.4440298080444869
		-1.6547364607016906e-015 49.086360931396491 -7.4440298080444869
		2.9999999999999991 49.086360931396491 -4.4440298080444869
		-4.8244286170173891e-016 49.086360931396491 -1.4440298080444869
		-1.6547364607016906e-015 45.674640906022667 -7.4440298080444869
		2.9999999999999991 45.674640906022667 -4.4440298080444869
		-4.8244286170173891e-016 45.674640906022667 -1.4440298080444869
		-3.0000000000000009 45.674640906022667 -4.444029808044486
		-1.6547364607016906e-015 45.674640906022667 -7.4440298080444869
		2.9999999999999991 45.674640906022667 -4.4440298080444869
		-4.8244286170173891e-016 45.674640906022667 -1.4440298080444869
		-1.6547364607016906e-015 42.262920880648842 -7.4440298080444869
		2.9999999999999991 42.262920880648849 -4.4440298080444869
		-4.8244286170173891e-016 42.262920880648849 -1.4440298080444869
		-3.0000000000000009 42.262920880648849 -4.444029808044486
		-1.6547364607016906e-015 42.262920880648842 -7.4440298080444869
		2.9999999999999991 42.262920880648849 -4.4440298080444869
		-4.8244286170173891e-016 42.262920880648849 -1.4440298080444869
		-1.6547364607016906e-015 38.851200855275025 -7.4440298080444869
		2.9999999999999991 38.851200855275025 -4.4440298080444869
		-4.8244286170173891e-016 38.851200855275025 -1.4440298080444869
		-3.0000000000000009 38.851200855275025 -4.444029808044486
		-1.6547364607016906e-015 38.851200855275025 -7.4440298080444869
		2.9999999999999991 38.851200855275025 -4.4440298080444869
		-4.8244286170173891e-016 38.851200855275025 -1.4440298080444869
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_1_MControlZeroGroup" -p "Ref:prp_coat_back_0_MControl";
	setAttr ".rp" -type "double3" -8.8817841970012681e-016 28.652325358683598 -5.3050991367623084 ;
	setAttr ".sp" -type "double3" -8.8817841970012681e-016 28.652325358683598 -5.3050991367623084 ;
createNode transform -n "Ref:prp_coat_back_1_MControl" -p "Ref:prp_coat_back_1_MControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012681e-016 38.851200855275003 -4.4440298080444895 ;
	setAttr ".sp" -type "double3" -8.8817841970012681e-016 38.851200855275003 -4.4440298080444895 ;
createNode nurbsSurface -n "Ref:prp_coat_back_1_MControlShape" -p "Ref:prp_coat_back_1_MControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.6547364607016906e-015 39.103586549972647 -7.4333945333853126
		2.9999999999999991 38.85120085527501 -4.4440298080444931
		-4.8244286170173891e-016 38.598815160577374 -1.454665082703674
		-3.0000000000000009 38.85120085527501 -4.4440298080444931
		-1.6547364607016906e-015 39.103586549972647 -7.4333945333853126
		2.9999999999999991 38.85120085527501 -4.4440298080444931
		-4.8244286170173891e-016 38.598815160577374 -1.454665082703674
		-1.6547364607016906e-015 35.730909594576438 -7.7181424629914375
		2.9999999999999991 35.478523899878802 -4.7287777376506188
		-4.8244286170173891e-016 35.226138205181165 -1.7394130123097993
		-3.0000000000000009 35.478523899878802 -4.7287777376506179
		-1.6547364607016906e-015 35.730909594576438 -7.7181424629914375
		2.9999999999999991 35.478523899878802 -4.7287777376506188
		-4.8244286170173891e-016 35.226138205181165 -1.7394130123097993
		-1.6547364607016906e-015 32.35823263918023 -8.0028903925975641
		2.9999999999999991 32.105846944482593 -5.0135256672567445
		-4.8244286170173891e-016 31.853461249784957 -2.024160941915925
		-3.0000000000000009 32.105846944482593 -5.0135256672567436
		-1.6547364607016906e-015 32.35823263918023 -8.0028903925975641
		2.9999999999999991 32.105846944482593 -5.0135256672567445
		-4.8244286170173891e-016 31.853461249784957 -2.024160941915925
		-1.6547364607016906e-015 28.985555683784025 -8.2876383222036889
		2.9999999999999991 28.733169989086388 -5.2982735968628702
		-4.8244286170173891e-016 28.480784294388751 -2.3089088715220507
		-3.0000000000000009 28.733169989086388 -5.2982735968628694
		-1.6547364607016906e-015 28.985555683784025 -8.2876383222036889
		2.9999999999999991 28.733169989086388 -5.2982735968628702
		-4.8244286170173891e-016 28.480784294388751 -2.3089088715220507
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_2_MControlZeroGroup" -p "Ref:prp_coat_back_1_MControl";
	setAttr ".rp" -type "double3" -8.8817841970012681e-016 18.675398053301301 -6.6930871140090842 ;
	setAttr ".sp" -type "double3" -8.8817841970012681e-016 18.675398053301301 -6.6930871140090842 ;
createNode transform -n "Ref:prp_coat_back_2_MControl" -p "Ref:prp_coat_back_2_MControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012681e-016 28.733169989086399 -5.2982735968628667 ;
	setAttr ".sp" -type "double3" -8.8817841970012681e-016 28.733169989086399 -5.2982735968628667 ;
createNode nurbsSurface -n "Ref:prp_coat_back_2_MControlShape" -p "Ref:prp_coat_back_2_MControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.6547364607016906e-015 29.14526660963725 -8.2698348658476721
		2.9999999999999991 28.733169989086406 -5.2982735968628685
		-4.8244286170173891e-016 28.321073368535561 -2.3267123278780653
		-3.0000000000000009 28.733169989086406 -5.2982735968628685
		-1.6547364607016906e-015 29.14526660963725 -8.2698348658476721
		2.9999999999999991 28.733169989086406 -5.2982735968628685
		-4.8244286170173891e-016 28.321073368535561 -2.3267123278780653
		-1.6547364607016906e-015 26.994423435532283 -8.5681141618644503
		2.9999999999999991 26.582326814981435 -5.5965528928796466
		-4.8244286170173891e-016 26.170230194430594 -2.624991623894843
		-3.0000000000000009 26.582326814981435 -5.5965528928796457
		-1.6547364607016906e-015 26.994423435532283 -8.5681141618644503
		2.9999999999999991 26.582326814981435 -5.5965528928796466
		-4.8244286170173891e-016 26.170230194430594 -2.624991623894843
		-1.6547364607016906e-015 24.843580261427313 -8.8663934578812267
		2.9999999999999991 24.431483640876468 -5.8948321888964248
		-4.8244286170173891e-016 24.019387020325624 -2.9232709199116211
		-3.0000000000000009 24.431483640876468 -5.8948321888964239
		-1.6547364607016906e-015 24.843580261427313 -8.8663934578812267
		2.9999999999999991 24.431483640876468 -5.8948321888964248
		-4.8244286170173891e-016 24.019387020325624 -2.9232709199116211
		-1.6547364607016906e-015 22.692737087322342 -9.1646727538980066
		2.9999999999999991 22.280640466771498 -6.193111484913203
		-4.8244286170173891e-016 21.868543846220653 -3.2215502159283993
		-3.0000000000000009 22.280640466771498 -6.1931114849132021
		-1.6547364607016906e-015 22.692737087322342 -9.1646727538980066
		2.9999999999999991 22.280640466771498 -6.193111484913203
		-4.8244286170173891e-016 21.868543846220653 -3.2215502159283993
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1" 
		-p "Ref:prp_coat_back_0_MControlZeroGroup";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012681e-016 0.61947731665211592 
		-4.4440298080444869 ;
	setAttr ".tg[0].tor" -type "double3" 16.044357320284441 0 0 ;
	setAttr ".lr" -type "double3" 16.044357320284441 0 0 ;
	setAttr ".rsrr" -type "double3" 16.044357320284441 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_coat_back_0_RControlZeroGroup" -p "nurbsCircle1";
	setAttr ".r" -type "double3" 13.694327567031246 25.310283536056225 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -7.6207728385925346 49.05202484130858 -2.6348590850830007 ;
	setAttr ".rpt" -type "double3" 4.6017678552315635 -0.77064165248717931 14.076600577210151 ;
	setAttr ".sp" -type "double3" -7.6207728385925346 49.052024841308594 -2.6348590850830007 ;
	setAttr ".spt" -type "double3" 0 -1.4210854715202002e-014 0 ;
createNode transform -n "Ref:prp_coat_back_0_RControl" -p "Ref:prp_coat_back_0_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.6207728385925346 49.052024841308608 -2.6348590850830029 ;
	setAttr ".sp" -type "double3" -7.6207728385925346 49.052024841308608 -2.6348590850830029 ;
createNode nurbsSurface -n "Ref:prp_coat_back_0_RControlShape" -p "Ref:prp_coat_back_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.6207728385925355 49.052024841308594 -5.6348590850830007
		-4.6207728385925346 49.052024841308594 -2.6348590850830012
		-7.6207728385925346 49.052024841308594 0.36514091491699929
		-10.620772838592535 49.052024841308594 -2.6348590850830003
		-7.6207728385925355 49.052024841308594 -5.6348590850830007
		-4.6207728385925346 49.052024841308594 -2.6348590850830012
		-7.6207728385925346 49.052024841308594 0.36514091491699929
		-7.6207728385925355 45.513005510930356 -5.6348590850830007
		-4.6207728385925346 45.513005510930356 -2.6348590850830012
		-7.6207728385925346 45.513005510930363 0.36514091491699929
		-10.620772838592535 45.513005510930356 -2.6348590850830003
		-7.6207728385925355 45.513005510930356 -5.6348590850830007
		-4.6207728385925346 45.513005510930356 -2.6348590850830012
		-7.6207728385925346 45.513005510930363 0.36514091491699929
		-7.6207728385925355 41.973986180552124 -5.6348590850830007
		-4.6207728385925346 41.973986180552124 -2.6348590850830007
		-7.6207728385925346 41.973986180552124 0.36514091491699929
		-10.620772838592535 41.973986180552124 -2.6348590850830003
		-7.6207728385925355 41.973986180552124 -5.6348590850830007
		-4.6207728385925346 41.973986180552124 -2.6348590850830007
		-7.6207728385925346 41.973986180552124 0.36514091491699929
		-7.6207728385925355 38.434966850173893 -5.6348590850830007
		-4.6207728385925346 38.434966850173893 -2.6348590850830007
		-7.6207728385925346 38.434966850173893 0.36514091491699929
		-10.620772838592535 38.434966850173893 -2.6348590850830003
		-7.6207728385925355 38.434966850173893 -5.6348590850830007
		-4.6207728385925346 38.434966850173893 -2.6348590850830007
		-7.6207728385925346 38.434966850173893 0.36514091491699929
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_1_RControlZeroGroup" -p "Ref:prp_coat_back_0_RControl";
	setAttr ".rp" -type "double3" -7.6207728385925275 27.825136645831137 -3.0265521053590865 ;
	setAttr ".sp" -type "double3" -7.6207728385925275 27.825136645831137 -3.0265521053590865 ;
createNode transform -n "Ref:prp_coat_back_1_RControl" -p "Ref:prp_coat_back_1_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.620772838592532 38.434966850173893 -2.63485908508301 ;
	setAttr ".sp" -type "double3" -7.6207728385925302 38.434966850173879 -2.6348590850830087 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-015 1.421085471520201e-014 -1.3322676295501884e-015 ;
createNode nurbsSurface -n "Ref:prp_coat_back_1_RControlShape" -p "Ref:prp_coat_back_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.6207728385925302 38.545645256735234 -5.6328167716291375
		-4.6207728385925293 38.434966850173886 -2.6348590850830056
		-7.6207728385925293 38.324288443612538 0.36309860146312767
		-10.620772838592529 38.434966850173886 -2.6348590850830047
		-7.6207728385925302 38.545645256735234 -5.6328167716291375
		-4.6207728385925293 38.434966850173886 -2.6348590850830056
		-7.6207728385925293 38.324288443612538 0.36309860146312767
		-7.6207728385925302 35.479330962674112 -5.7460187629734376
		-4.6207728385925293 35.368652556112764 -2.7480610764273052
		-7.6207728385925293 35.257974149551416 0.24989661011882802
		-10.620772838592529 35.368652556112764 -2.7480610764273044
		-7.6207728385925302 35.479330962674112 -5.7460187629734376
		-4.6207728385925293 35.368652556112764 -2.7480610764273052
		-7.6207728385925293 35.257974149551416 0.24989661011882802
		-7.6207728385925302 32.41301666861299 -5.8592207543177377
		-4.6207728385925293 32.302338262051641 -2.8612630677716049
		-7.6207728385925293 32.191659855490293 0.13669461877452793
		-10.620772838592529 32.302338262051641 -2.861263067771604
		-7.6207728385925302 32.41301666861299 -5.8592207543177377
		-4.6207728385925293 32.302338262051641 -2.8612630677716049
		-7.6207728385925293 32.191659855490293 0.13669461877452793
		-7.6207728385925302 29.346702374551871 -5.9724227456620369
		-4.6207728385925293 29.236023967990523 -2.9744650591159045
		-7.6207728385925293 29.125345561429175 0.023492627430228286
		-10.620772838592529 29.236023967990523 -2.9744650591159036
		-7.6207728385925302 29.346702374551871 -5.9724227456620369
		-4.6207728385925293 29.236023967990523 -2.9744650591159045
		-7.6207728385925293 29.125345561429175 0.023492627430228286
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_2_RControlZeroGroup" -p "Ref:prp_coat_back_1_RControl";
	setAttr ".rp" -type "double3" -7.6207728385925311 20.055487404210837 -3.6479862305542934 ;
	setAttr ".sp" -type "double3" -7.6207728385925311 20.055487404210837 -3.6479862305542934 ;
createNode transform -n "Ref:prp_coat_back_2_RControl" -p "Ref:prp_coat_back_2_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.6207728385925311 29.236023967990505 -2.9744650591158996 ;
	setAttr ".sp" -type "double3" -7.620772838592532 29.236023967990516 -2.9744650591159028 ;
	setAttr ".spt" -type "double3" 1.7763568394002503e-015 -1.4210854715201999e-014 
		1.3322676295501873e-015 ;
createNode nurbsSurface -n "Ref:prp_coat_back_2_RControlShape" -p "Ref:prp_coat_back_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.620772838592532 29.455526143275907 -5.9664240820714287
		-4.6207728385925311 29.236023967990519 -2.9744650591159032
		-7.6207728385925311 29.016521792705131 0.017493963839622761
		-10.620772838592531 29.236023967990519 -2.9744650591159023
		-7.620772838592532 29.455526143275907 -5.9664240820714287
		-4.6207728385925311 29.236023967990519 -2.9744650591159032
		-7.6207728385925311 29.016521792705131 0.017493963839622761
		-7.620772838592532 25.027101338423471 -6.291311177882208
		-4.6207728385925311 24.807599163138082 -3.2993521549266829
		-7.6207728385925311 24.588096987852698 -0.30739313197115692
		-10.620772838592531 24.807599163138082 -3.299352154926682
		-7.620772838592532 25.027101338423471 -6.291311177882208
		-4.6207728385925311 24.807599163138082 -3.2993521549266829
		-7.6207728385925311 24.588096987852698 -0.30739313197115692
		-7.620772838592532 20.598676533571037 -6.6161982736929872
		-4.6207728385925311 20.379174358285649 -3.6242392507374621
		-7.6207728385925311 20.159672183000261 -0.63228022778193615
		-10.620772838592531 20.379174358285649 -3.6242392507374612
		-7.620772838592532 20.598676533571037 -6.6161982736929872
		-4.6207728385925311 20.379174358285649 -3.6242392507374621
		-7.6207728385925311 20.159672183000261 -0.63228022778193615
		-7.620772838592532 16.170251728718604 -6.9410853695037673
		-4.6207728385925311 15.950749553433214 -3.9491263465482418
		-7.6207728385925311 15.731247378147826 -0.95716732359271628
		-10.620772838592531 15.950749553433214 -3.9491263465482409
		-7.620772838592532 16.170251728718604 -6.9410853695037673
		-4.6207728385925311 15.950749553433214 -3.9491263465482418
		-7.6207728385925311 15.731247378147826 -0.95716732359271628
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1" 
		-p "Ref:prp_coat_back_0_RControlZeroGroup";
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
	setAttr ".tg[0].tot" -type "double3" -7.6207728385925346 0.58514122656422529 -2.6348590850829994 ;
	setAttr ".tg[0].tor" -type "double3" 13.694327567031243 25.310283536056225 0 ;
	setAttr ".lr" -type "double3" 13.694327567031241 25.310283536056225 -4.3978625026889194e-016 ;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-015 1.3322676295501878e-015 ;
	setAttr ".rsrr" -type "double3" 13.694327567031241 25.310283536056225 -4.3978625026889194e-016 ;
	setAttr -k on ".w0";
createNode transform -n "RefRNfosterParent1";
createNode orientConstraint -n "Ref:bip_pelvis_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "PelvisControlW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -sn "zooVisManMaster" -ln "zooVisManMaster" -min 0 -max 1 -at "bool";
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
	setAttr ".lr" -type "double3" -175.92320854098014 0 0 ;
	setAttr ".o" -type "double3" 175.92320854098014 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".zooVisManMaster";
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
	setAttr ".rst" -type "double3" 0 48.466883614744376 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "control_coatFront0R_0W0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" -7.1127188139286091e-008 -1.1088052342955734e-007 
		1.3667958326246676e-007 ;
	setAttr ".tg[0].tor" -type "double3" 71.782730558225282 125.53301401417575 89.999997489201078 ;
	setAttr ".lr" -type "double3" -6.0005330266670898 0.45392986182180434 1.6845513061166837 ;
	setAttr ".rst" -type "double3" -2.7666990756988952 0.22086800019381769 -6.5454671458914193 ;
	setAttr ".rsrr" -type "double3" 1.1927080046284059e-014 -6.6322707328498833e-008 
		1.5902773414220672e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_1_RControlW0" -bt "W000" 
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -5.773159728050814e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781104e-014 1.9083328088781101e-014 
		4.7708320221952759e-015 ;
	setAttr ".lr" -type "double3" 6.0109112891431469 -0.24577004370533759 -1.7272294089837632 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -10.567255136624336 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 -1.3035606501625665e-014 
		-1.4838469938992769e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_2_RControlW0" -bt "W000" 
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
	setAttr ".tg[0].tot" -type "double3" 4.3021142204224816e-015 3.1086244689504383e-015 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.2263882770244611e-014 1.272221872585407e-014 
		6.361109362927032e-015 ;
	setAttr ".lr" -type "double3" 4.5725932687512225 0 0 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -11.573335777498873 -5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" 4.7708320221952752e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_0_RControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-016 -9.9920072216264089e-016 
		-8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" -2.7829853462805764e-015 0 6.361109362927032e-015 ;
	setAttr ".lr" -type "double3" 1.0237410380960695e-014 -5.0888874903416256e-014 -4.3732626870123296e-015 ;
	setAttr ".rst" -type "double3" -7.6207728385925337 -0.77098173799594605 2.5865923167260556 ;
	setAttr ".rsrr" -type "double3" -1.0933156717530834e-015 -3.180554681463516e-015 
		-6.7586786981099719e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_1_RControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 0 2.2204460492503131e-016 -3.9968028886505635e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.1440947092076087e-015 -3.1805546814635176e-015 
		7.9513867036587903e-015 ;
	setAttr ".lr" -type "double3" -2.1142816621647906 0 0 ;
	setAttr ".rst" -type "double3" 0 -10.617057991134699 -4.8849813083506888e-015 ;
	setAttr ".rsrr" -type "double3" 1.987846675914698e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_2_RControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -3.1086244689504383e-015 
		-4.4408920985006262e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.1927080055488186e-014 -3.1805546814635168e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" -2.0816505757100741 0 0 ;
	setAttr ".rst" -type "double3" 0 -9.2052095232683744 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 2.7829853462805772e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_0_M_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_0_MControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" -3.4235560324249355e-033 0 8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012681e-016 -0.9338510615562825 4.388744156984389 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_1_M_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_1_MControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 3.944304526105059e-031 1.4210854715202004e-014 
		4.4408920985006262e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-015 8.6548877948548085e-032 
		-3.8694061118894048e-032 ;
	setAttr ".lr" -type "double3" -4.8259158252885532 0 0 ;
	setAttr ".rst" -type "double3" 1.9721522630525295e-031 -10.235160076121474 5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_2_M_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_2_MControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 3.3558154661200756e-032 0 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905471e-015 9.4541467962586793e-033 
		1.7630294722749743e-031 ;
	setAttr ".lr" -type "double3" -3.069514125573606 0 0 ;
	setAttr ".rst" -type "double3" -1.9721522630525295e-031 -10.154027824458652 0 ;
	setAttr ".rsrr" -type "double3" 1.3119788061037007e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_0_LControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -7.2164496600635175e-015 
		2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.9756933518293952e-015 -9.5416640443905503e-015 
		-7.9513867036587903e-015 ;
	setAttr ".lr" -type "double3" 1.05355873823479e-014 9.5416640443905519e-015 1.5505204072134644e-014 ;
	setAttr ".rst" -type "double3" 7.6207730000000353 -0.77098142198730812 2.5865927525263515 ;
	setAttr ".rsrr" -type "double3" 8.6471330402289369e-015 4.8001230991295479e-031 
		6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_1_LControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 2.3092638912203256e-014 
		3.1086244689504383e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.975693351829395e-016 -6.3611093629270335e-015 
		-8.7465253740246703e-015 ;
	setAttr ".lr" -type "double3" -2.1142816621647906 0 0 ;
	setAttr ".rst" -type "double3" 0 -10.617057991134697 2.2204460492503131e-015 ;
	setAttr ".rsrr" -type "double3" 1.987846675914698e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_2_LControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 1.0880185641326534e-014 
		8.4376949871511897e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.1927080055488186e-014 -3.1805546814635168e-015 
		-7.9513867036587903e-015 ;
	setAttr ".lr" -type "double3" -2.0816505757100741 0 0 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -9.2052095232683797 4.4408920985006262e-015 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "control_coatFront0L_0W0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" -1.0714822140656111e-007 4.4665375842356525e-008 
		1.2972592766669067e-007 ;
	setAttr ".tg[0].tor" -type "double3" 103.89633069778444 50.146047258442543 89.99999733842381 ;
	setAttr ".lr" -type "double3" -6.0004971651433694 -0.45392583485273058 -1.6845345503294116 ;
	setAttr ".rst" -type "double3" 2.7666990000000591 0.22086800019381059 -6.5454671458914202 ;
	setAttr ".rsrr" -type "double3" -2.4649298790063998e-014 1.5711718123713001e-007 
		-6.3611093291302286e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_1_LControlW0" -bt "W000" 
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
	setAttr ".tg[0].tot" -type "double3" -1.3322676295501878e-015 -1.7763568394002505e-015 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952736e-015 0 0 ;
	setAttr ".lr" -type "double3" 6.010875219743375 0.24576699961073006 1.7272124424554314 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -10.567255136624333 -4.4408920985006262e-015 ;
	setAttr ".rsrr" -type "double3" -5.7332114212330008e-031 -5.3890657218495008e-015 
		1.219093751857662e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_2_LControlW0" -bt "W000" 
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
	setAttr ".tg[0].tot" -type "double3" -4.163336342344337e-016 -4.4408920985006262e-016 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635152e-015 3.1805546814635168e-015 
		3.1805546814635152e-015 ;
	setAttr ".lr" -type "double3" 4.5725932687512225 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -11.573335777498871 -5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_hippouch_0_B_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_hippouch_0_BControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 4.7462034302725442e-015 
		-2.1094237467877974e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.9878466759146975e-016 -3.1805546814635168e-015 
		0 ;
	setAttr ".lr" -type "double3" -24.999999999999975 6.4684749321407562e-015 -2.1235999125268579e-016 ;
	setAttr ".rst" -type "double3" -2.6258317511768805 -4.2742293482400697 4.5524491811559393 ;
	setAttr ".rsrr" -type "double3" -25 3.1051628359394423e-015 -6.8839802736498928e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_hippouch_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_hippouch_0_LControlW0" -bt "W000" -dv 
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
	setAttr ".tg[0].tot" -type "double3" -1.3322676295501878e-015 5.1070259132757201e-015 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952775e-015 2.8624992133171654e-014 
		-9.5416640443905503e-015 ;
	setAttr ".lr" -type "double3" -25.000000000000014 -1.3812190824081727e-014 2.5866528015766037e-014 ;
	setAttr ".rst" -type "double3" 7.446070934542961 -4.002973384839656 -4.0721476990735654 ;
	setAttr ".rsrr" -type "double3" -25.000000000000007 -4.1451315897839177e-015 1.0692284562548307e-014 ;
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
	setAttr ".lr" -type "double3" 0.10125132748815074 -19.14807257648706 -0.60027600168340056 ;
	setAttr ".rsrr" -type "double3" -9.8644390259791965 -19.450378518344838 1.8982058704048099 ;
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
	setAttr ".rsrr" -type "double3" 9.5938684596035433 19.536724644193161 0.31820967455949134 ;
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
	setAttr ".lr" -type "double3" 1.179760334071033 8.9026339607953346 17.03133759773128 ;
	setAttr ".rsrr" -type "double3" 1.6399735076296263e-015 5.3671860249696851e-015 
		9.1440947092076103e-015 ;
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
	setAttr ".lr" -type "double3" 0.10124865901620093 -19.147952756929453 -0.60027060181265424 ;
	setAttr ".rsrr" -type "double3" -3.3669153073305199e-015 -9.5416640443905503e-015 
		7.7029058691694574e-016 ;
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
	setAttr ".rsrr" -type "double3" -1.1927080055488188e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 1.1797461123334023 8.9025831737120669 17.03123095223048 ;
	setAttr ".rsrr" -type "double3" 7.5165452433024505e-015 -7.9513867036587899e-016 
		-1.1927080055488186e-015 ;
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
	setAttr ".lr" -type "double3" 0 -1.2074182697257336e-006 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 1.1102230246251565e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 1.8873791418627661e-015 ;
	setAttr ".tg[1].tor" -type "double3" -7.9513867036587935e-015 0 0 ;
	setAttr ".lr" -type "double3" 8.7465253740246703e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.2798831145465783 -4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" 8.7465253740246703e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 2.1316282072803006e-014 2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635176e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 2.6645352591003757e-015 ;
	setAttr ".tg[1].tor" -type "double3" -4.7708320221952767e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.0336802714756429e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.2171132690344848 0 ;
	setAttr ".rsrr" -type "double3" 2.3854160110976364e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 4.2632564145606011e-014 -9.7699626167013776e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 -1.7763568394002505e-015 ;
	setAttr ".tg[1].tor" -type "double3" -5.5659706925611543e-015 0 0 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.0887999494348648 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_backpack_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "BackPackControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.1489003354759149 -2.2103989670176603 ;
	setAttr ".tg[0].tor" -type "double3" 2.3854160110976368e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 1.3468803008105041 6.3300282479495458 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-014 -1.3988810110276972e-014 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952736e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 4.6629367034256575e-015 ;
	setAttr ".tg[1].tor" -type "double3" -7.9513867036587935e-015 0 0 ;
	setAttr ".lr" -type "double3" -3.975693351829396e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.1025085712998646 1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 -2.3854160110976372e-015 -4.7708320221952752e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635176e-015 1.033680271475643e-014 
		-5.1684013573782151e-015 ;
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
	setAttr ".lr" -type "double3" -0.027373743659409592 -4.5765647948767114 0.68497331178683774 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-015 3.1805546814635156e-015 
		1.4710065401768764e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.6327832942979512e-016 -7.7715611723760958e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.5781240166464568e-015 -2.7034714792439897e-014 
		-2.981770013872048e-016 ;
	setAttr ".lr" -type "double3" -2.4251729446159311e-014 1.0933156717530837e-014 -2.3138524421809806e-030 ;
	setAttr ".rst" -type "double3" 0.76144329545736866 4.8222607371772899 2.78213489884231 ;
	setAttr ".rsrr" -type "double3" 2.1071174764695797e-014 1.4908850069360237e-014 
		-9.5416640443905471e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.3306690738754696e-016 -5.3290705182007514e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.0177774980683249e-013 1.7493050748049341e-014 
		4.1347210859025721e-014 ;
	setAttr ".lr" -type "double3" -1.2086107789561361e-013 0 0 ;
	setAttr ".rst" -type "double3" 8.1074572255701582e-006 2.2197164052228833 -3.4754647860069099e-005 ;
	setAttr ".rsrr" -type "double3" -1.0177774980683251e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-016 0 -1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317571e-014 -1.2722218725854067e-014 
		6.9972202992197363e-014 ;
	setAttr ".lr" -type "double3" -5.6753022597364627e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.2146029287360989e-006 1.3726932921695418 -1.6229956891322672e-005 ;
	setAttr ".rsrr" -type "double3" 7.8519943698630585e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 8.8817841970012523e-016 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-015 1.272221872585407e-014 
		-2.9817700138720476e-015 ;
	setAttr ".lr" -type "double3" -5.0888874903416268e-014 1.4859153902462373e-014 1.2722218725854061e-014 ;
	setAttr ".rst" -type "double3" 0.68185382637337 5.2598376348829863 1.2364880137828285 ;
	setAttr ".rsrr" -type "double3" 1.6697912077683464e-014 -4.1744780194208628e-015 
		-1.9083328088781101e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.7747582837255322e-015 -8.8817841970012523e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905459e-014 -3.1805546814635168e-015 
		1.9083328088781101e-014 ;
	setAttr ".lr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr ".rst" -type "double3" 9.1887021120840018e-006 2.6014324501872763 -5.1264180939369908e-005 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905497e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 5.773159728050814e-015 -1.0658141036401503e-014 
		-5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.6791648310733843e-014 1.1927080055488186e-014 
		3.4190962825732801e-014 ;
	setAttr ".lr" -type "double3" 2.4649298781342254e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.3845238170162588e-005 1.6518440959198077 -2.6138910570239204e-005 ;
	setAttr ".rsrr" -type "double3" -4.2142349529391595e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -3.5527136788005009e-015 
		-1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587919e-015 -1.5902773407317584e-014 
		6.510197863620636e-015 ;
	setAttr ".lr" -type "double3" -1.1290969119195487e-013 1.1927080055488197e-014 6.3611093629270233e-015 ;
	setAttr ".rst" -type "double3" 0.33584082925480985 5.9013794343992299 -0.44153568321865178 ;
	setAttr ".rsrr" -type "double3" 2.0673605429512861e-014 -5.3671860249696804e-015 
		-2.2263882770244617e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.2434497875801753e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317581e-014 3.3395824155366928e-014 
		3.3395824155366928e-014 ;
	setAttr ".lr" -type "double3" -1.1449996853268662e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.2559417126301042e-006 2.9740226684368922 -1.1039000398227472e-005 ;
	setAttr ".rsrr" -type "double3" -4.4527765540489235e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 -2.1316282072803006e-014 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" 4.1347210859025702e-014 7.9513867036587919e-016 
		1.7095481412866407e-014 ;
	setAttr ".lr" -type "double3" -1.1768052321415011e-013 0 0 ;
	setAttr ".rst" -type "double3" 9.2953098207448903e-006 2.1943724917546081 5.8688384793725845e-005 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.6188439477815564e-014 -1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.4047288677822516e-014 -2.7432284127622837e-014 
		2.0794739836326413e-015 ;
	setAttr ".lr" -type "double3" -8.587497639951495e-014 3.3793393490549868e-014 3.1805546814634915e-015 ;
	setAttr ".rst" -type "double3" 0.22417112110665016 6.1468047121770457 -2.4256932120983001 ;
	setAttr ".rsrr" -type "double3" 7.951386703658791e-014 -2.7829853462805657e-015 
		-1.5902773407317581e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -2.6645352591003757e-014 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 8.9055531080978419e-014 -2.4251729446159317e-014 
		8.7465253740246719e-015 ;
	setAttr ".lr" -type "double3" -1.717499527990299e-013 0 0 ;
	setAttr ".rst" -type "double3" 2.0097080197123418e-005 2.4699398465554006 6.6286742733012716e-005 ;
	setAttr ".rsrr" -type "double3" -1.4630551534732177e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -3.0198066269804258e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270304e-015 -1.3119788061037004e-014 
		-2.9022561468354588e-014 ;
	setAttr ".lr" -type "double3" -1.0217531914201545e-013 0 0 ;
	setAttr ".rst" -type "double3" -5.5782008760996149e-006 1.7755530005552984 -2.4246409969563842e-005 ;
	setAttr ".rsrr" -type "double3" 6.2418385623721515e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.2885087682171843e-015 -5.440092820663267e-015 
		-4.8849813083506888e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.6278201835443243e-015 2.9817700138720464e-015 
		1.2722218725854064e-014 ;
	setAttr ".lr" -type "double3" 1.7691835415640811e-014 -4.3732626870123383e-015 1.9580289757759776e-014 ;
	setAttr ".rst" -type "double3" 1.533529175097069 2.1571014366876238 -2.270482540753461 ;
	setAttr ".rsrr" -type "double3" -5.5659706925611543e-015 -7.9513867036587959e-016 
		-8.3489560388417319e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.9581120299442318e-015 -1.7541523789077473e-014 
		-1.8873791418627661e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.460501696722767e-016 -9.541664044390544e-015 
		4.333505753494039e-014 ;
	setAttr ".lr" -type "double3" 1.0734372049939369e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.8937297297915165e-005 2.7888441227019793 -5.7542328127935249e-006 ;
	setAttr ".rsrr" -type "double3" 2.7829853462805772e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.4948046940571658e-015 -1.3211653993039363e-014 
		-2.4313884239290928e-014 ;
	setAttr ".tg[0].tor" -type "double3" 6.0256602363664279e-015 -2.4251729446159305e-014 
		1.6300342742500514e-014 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" -1.7113955586012253e-005 1.6264667463836349 1.4675492818083669e-005 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 0 0 ;
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
	setAttr ".rsrr" -type "double3" 0 6.361109362927032e-015 0 ;
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
	setAttr ".lr" -type "double3" -0.027363251850621918 -4.5758799089046249 0.68487234685539988 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976392e-015 9.5416640443905503e-015 
		-1.5505204072134644e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.1934897514720433e-015 3.1086244689504383e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 7.5538173684758488e-015 -7.9513867036587856e-015 
		-2.9817700138720448e-015 ;
	setAttr ".lr" -type "double3" 1.9878466759146964e-015 -1.0734372049939369e-014 1.9083328088781101e-014 ;
	setAttr ".rst" -type "double3" -0.76140173022925595 -4.8223063543062317 -2.782147901494167 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635152e-015 -5.864147693948357e-015 
		1.2722218725854061e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.3298697960381105e-015 -1.0658141036401503e-014 
		8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854064e-014 -1.5902773407317576e-015 
		3.8166656177562176e-014 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -2.2196879410221957 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.5543122344752192e-015 0 5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.8166656177562182e-014 4.7708320221952736e-015 
		-7.9513867036587903e-015 ;
	setAttr ".lr" -type "double3" -9.1440947092076103e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -1.3726962499927513 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.5880632500260296e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.5543122344752192e-015 1.021405182655144e-014 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 3.4986101496098681e-014 2.7034714792439888e-014 
		3.975693351829395e-016 ;
	setAttr ".lr" -type "double3" 5.0888874903416268e-014 -4.6615004550199663e-014 -9.5416640443905708e-015 ;
	setAttr ".rst" -type "double3" -0.68183074627325979 -5.2598119721034902 -1.2364832923449303 ;
	setAttr ".rsrr" -type "double3" -1.8486974086006691e-014 -2.3456590775793441e-014 
		6.3611093629270375e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.0658141036401503e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025721e-014 1.033680271475643e-014 
		-3.7371517507196328e-014 ;
	setAttr ".lr" -type "double3" 1.0177774980683254e-013 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -2.6014836876855143 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-015 2.1316282072803006e-014 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.8624992133171654e-014 1.5902773407317587e-014 
		-5.5659706925611551e-015 ;
	setAttr ".lr" -type "double3" 9.5416640443905497e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-015 -1.6517824209371472 5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" -1.5107634736951704e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 9.9920072216264089e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.2600685485001041e-014 1.1927080055488186e-014 
		-1.1380422219611643e-014 ;
	setAttr ".lr" -type "double3" 5.5659706925611529e-014 -4.0750856856251317e-014 2.2263882770244598e-014 ;
	setAttr ".rst" -type "double3" -0.33581227315728768 -5.9014208378593072 0.44152763922975491 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 -1.7890620083232252e-015 
		1.5902773407317584e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 8.8817841970012523e-015 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854067e-014 7.9513867036587935e-015 
		-2.385416011097638e-015 ;
	setAttr ".lr" -type "double3" 6.9972202992197363e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -2.9739668368580858 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 1.0658141036401503e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854061e-014 5.9635400277440939e-016 
		-3.4190962825732814e-014 ;
	setAttr ".lr" -type "double3" 5.0888874903416268e-014 0 0 ;
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 -2.1944032855973994 -5.3290705182007514e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 4.6559978095217502e-015 0 ;
	setAttr ".tg[0].tor" -type "double3" 5.0193128566846111e-015 1.5505204072134641e-014 
		4.2381512332587578e-015 ;
	setAttr ".lr" -type "double3" 5.7249984266343296e-014 -5.4864568255245674e-014 1.5902773407317555e-014 ;
	setAttr ".rst" -type "double3" -0.22417418462721983 -6.1467912696285918 2.4256999109597661 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-015 -1.3119788061037004e-014 
		3.1805546814635152e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.0658141036401503e-014 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905503e-015 2.8624992133171641e-014 
		-3.2203116149818089e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 1.3322676295501878e-015 -2.4700039257181858 -1.4210854715202004e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -3.3750779948604759e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-014 3.9756933518293967e-015 
		1.8288189418415224e-014 ;
	setAttr ".lr" -type "double3" 2.9022561468354588e-014 0 0 ;
	setAttr ".rst" -type "double3" 6.6613381477509392e-016 -1.7755443564795677 8.8817841970012523e-015 ;
	setAttr ".rsrr" -type "double3" 3.3793393490549868e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.8892500331400015e-015 1.2989609388114332e-014 
		3.4416913763379853e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.167859922099885e-015 5.9635400277440949e-016 
		1.9878466759146984e-015 ;
	setAttr ".lr" -type "double3" -2.9817700138720468e-015 -1.1927080055488188e-015 
		-1.9878466759146977e-016 ;
	setAttr ".rst" -type "double3" -1.5335015943631873 -2.1571437005303142 2.2704733239212249 ;
	setAttr ".rsrr" -type "double3" 4.5720473546038052e-015 -1.1927080055488188e-015 
		-2.1866313435061676e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.0669911055269949e-015 2.631228568361621e-014 
		-6.106226635438361e-016 ;
	setAttr ".tg[0].tor" -type "double3" 3.391763390779454e-015 1.3716142063811415e-014 
		-2.7829853462805772e-015 ;
	setAttr ".lr" -type "double3" -3.975693351829396e-015 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -2.7888516878362415 0 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976376e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.4918621893400541e-015 2.3092638912203256e-014 
		6.2172489379008766e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1218909677193579e-014 2.584200678689108e-014 
		-1.1529510720305252e-014 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -1.6264267679249333 1.3877787807814457e-015 ;
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
	setAttr ".lr" -type "double3" -7.9513867036587899e-016 0 0 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 923 ".phl";
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[1022]" 0;
	setAttr ".phl[1889]" 0;
	setAttr ".phl[3602]" 0;
	setAttr ".phl[3603]" 1343;
	setAttr ".phl[3604]" -1;
	setAttr ".phl[3605]" 0;
	setAttr ".phl[3606]" 1344;
	setAttr ".phl[3607]" -1;
	setAttr ".phl[3608]" 0;
	setAttr ".phl[3609]" 1345;
	setAttr ".phl[3610]" -1;
	setAttr ".phl[3611]" 0;
	setAttr ".phl[3612]" 1346;
	setAttr ".phl[3613]" -1;
	setAttr ".phl[3614]" 0;
	setAttr ".phl[3615]" 1347;
	setAttr ".phl[3616]" -1;
	setAttr ".phl[3773]" 0;
	setAttr ".phl[3774]" 0;
	setAttr ".phl[3775]" 0;
	setAttr ".phl[3779]" 0;
	setAttr ".phl[3780]" 0;
	setAttr ".phl[3781]" 0;
	setAttr ".phl[4490]" 0;
	setAttr ".phl[4493]" 0;
	setAttr ".phl[4494]" 1349;
	setAttr ".phl[4495]" -1;
	setAttr ".phl[4496]" 0;
	setAttr ".phl[4497]" 1352;
	setAttr ".phl[4498]" -1;
	setAttr ".phl[4499]" 0;
	setAttr ".phl[4500]" 1354;
	setAttr ".phl[4501]" -1;
	setAttr ".phl[4502]" 0;
	setAttr ".phl[4503]" 1356;
	setAttr ".phl[4504]" -1;
	setAttr ".phl[4506]" 0;
	setAttr ".phl[4507]" 0;
	setAttr ".phl[4508]" 0;
	setAttr ".phl[4509]" 0;
	setAttr ".phl[4529]" 0;
	setAttr ".phl[4530]" 0;
	setAttr ".phl[4531]" 0;
	setAttr ".phl[4532]" 0;
	setAttr ".phl[4537]" 0;
	setAttr ".phl[4539]" 0;
	setAttr ".phl[4540]" 0;
	setAttr ".phl[4541]" 0;
	setAttr ".phl[4542]" 0;
	setAttr ".phl[4543]" 0;
	setAttr ".phl[4544]" 0;
	setAttr ".phl[4545]" 0;
	setAttr ".phl[4546]" 0;
	setAttr ".phl[4547]" 0;
	setAttr ".phl[4548]" 0;
	setAttr ".phl[4549]" 0;
	setAttr ".phl[4550]" 0;
	setAttr ".phl[4551]" 0;
	setAttr ".phl[4552]" 0;
	setAttr ".phl[4553]" 0;
	setAttr ".phl[4554]" 0;
	setAttr ".phl[4555]" 0;
	setAttr ".phl[4556]" 0;
	setAttr ".phl[4557]" 0;
	setAttr ".phl[4558]" 0;
	setAttr ".phl[4559]" 0;
	setAttr ".phl[4560]" 0;
	setAttr ".phl[4561]" 0;
	setAttr ".phl[4562]" 0;
	setAttr ".phl[4563]" 0;
	setAttr ".phl[4564]" 0;
	setAttr ".phl[4565]" 0;
	setAttr ".phl[4566]" 0;
	setAttr ".phl[4567]" 0;
	setAttr ".phl[4568]" 0;
	setAttr ".phl[4569]" 0;
	setAttr ".phl[4570]" 0;
	setAttr ".phl[4571]" 0;
	setAttr ".phl[4572]" 0;
	setAttr ".phl[4573]" 0;
	setAttr ".phl[4574]" 0;
	setAttr ".phl[4575]" 0;
	setAttr ".phl[4576]" 0;
	setAttr ".phl[4577]" 0;
	setAttr ".phl[4578]" 0;
	setAttr ".phl[4579]" 0;
	setAttr ".phl[4580]" 0;
	setAttr ".phl[4581]" 0;
	setAttr ".phl[4582]" 0;
	setAttr ".phl[4583]" 0;
	setAttr ".phl[4584]" 0;
	setAttr ".phl[4585]" 0;
	setAttr ".phl[4586]" 0;
	setAttr ".phl[4587]" 0;
	setAttr ".phl[4588]" 0;
	setAttr ".phl[4589]" 0;
	setAttr ".phl[4590]" 0;
	setAttr ".phl[4591]" 0;
	setAttr ".phl[4592]" 0;
	setAttr ".phl[4593]" 0;
	setAttr ".phl[4594]" 0;
	setAttr ".phl[4595]" 0;
	setAttr ".phl[4596]" 0;
	setAttr ".phl[4597]" 0;
	setAttr ".phl[4598]" 0;
	setAttr ".phl[4599]" 0;
	setAttr ".phl[4600]" 0;
	setAttr ".phl[4601]" 0;
	setAttr ".phl[4602]" 0;
	setAttr ".phl[4603]" 0;
	setAttr ".phl[4604]" 0;
	setAttr ".phl[4605]" 0;
	setAttr ".phl[4606]" 0;
	setAttr ".phl[4607]" 0;
	setAttr ".phl[4608]" 0;
	setAttr ".phl[4609]" 0;
	setAttr ".phl[4610]" 0;
	setAttr ".phl[4611]" 0;
	setAttr ".phl[4612]" 0;
	setAttr ".phl[4613]" 0;
	setAttr ".phl[4614]" 0;
	setAttr ".phl[4615]" 0;
	setAttr ".phl[4616]" 0;
	setAttr ".phl[4617]" 0;
	setAttr ".phl[4618]" 0;
	setAttr ".phl[4619]" 0;
	setAttr ".phl[4620]" 0;
	setAttr ".phl[4621]" 0;
	setAttr ".phl[4622]" 0;
	setAttr ".phl[4623]" 0;
	setAttr ".phl[4624]" 0;
	setAttr ".phl[4625]" 0;
	setAttr ".phl[4626]" 0;
	setAttr ".phl[4627]" 0;
	setAttr ".phl[4628]" 0;
	setAttr ".phl[4629]" 0;
	setAttr ".phl[4630]" 0;
	setAttr ".phl[4631]" 0;
	setAttr ".phl[4632]" 0;
	setAttr ".phl[4633]" 0;
	setAttr ".phl[4634]" 0;
	setAttr ".phl[4635]" 0;
	setAttr ".phl[4636]" 0;
	setAttr ".phl[4637]" 0;
	setAttr ".phl[4638]" 0;
	setAttr ".phl[4639]" 0;
	setAttr ".phl[4640]" 0;
	setAttr ".phl[4641]" 0;
	setAttr ".phl[4642]" 0;
	setAttr ".phl[4643]" 0;
	setAttr ".phl[4644]" 0;
	setAttr ".phl[4645]" 0;
	setAttr ".phl[4646]" 0;
	setAttr ".phl[4647]" 0;
	setAttr ".phl[4648]" 0;
	setAttr ".phl[4649]" 0;
	setAttr ".phl[4650]" 0;
	setAttr ".phl[4651]" 0;
	setAttr ".phl[4652]" 0;
	setAttr ".phl[4653]" 0;
	setAttr ".phl[4654]" 0;
	setAttr ".phl[4655]" 0;
	setAttr ".phl[4656]" 0;
	setAttr ".phl[4657]" 0;
	setAttr ".phl[4658]" 0;
	setAttr ".phl[4659]" 0;
	setAttr ".phl[4660]" 0;
	setAttr ".phl[4661]" 0;
	setAttr ".phl[4662]" 0;
	setAttr ".phl[4663]" 0;
	setAttr ".phl[4664]" 0;
	setAttr ".phl[4665]" 0;
	setAttr ".phl[4666]" 0;
	setAttr ".phl[4667]" 0;
	setAttr ".phl[4668]" 0;
	setAttr ".phl[4669]" 0;
	setAttr ".phl[4670]" 0;
	setAttr ".phl[4671]" 0;
	setAttr ".phl[4672]" 0;
	setAttr ".phl[4673]" 0;
	setAttr ".phl[4674]" 0;
	setAttr ".phl[4675]" 0;
	setAttr ".phl[4676]" 0;
	setAttr ".phl[4677]" 0;
	setAttr ".phl[4678]" 0;
	setAttr ".phl[4679]" 0;
	setAttr ".phl[4680]" 0;
	setAttr ".phl[4681]" 0;
	setAttr ".phl[4682]" 0;
	setAttr ".phl[4683]" 0;
	setAttr ".phl[4684]" 0;
	setAttr ".phl[4685]" 0;
	setAttr ".phl[4686]" 0;
	setAttr ".phl[4687]" 0;
	setAttr ".phl[4688]" 0;
	setAttr ".phl[4689]" 0;
	setAttr ".phl[4690]" 0;
	setAttr ".phl[4691]" 0;
	setAttr ".phl[4692]" 0;
	setAttr ".phl[4693]" 0;
	setAttr ".phl[4694]" 0;
	setAttr ".phl[4695]" 0;
	setAttr ".phl[4696]" 0;
	setAttr ".phl[4697]" 0;
	setAttr ".phl[4698]" 0;
	setAttr ".phl[4699]" 0;
	setAttr ".phl[4700]" 0;
	setAttr ".phl[4701]" 0;
	setAttr ".phl[4702]" 0;
	setAttr ".phl[4703]" 0;
	setAttr ".phl[4704]" 0;
	setAttr ".phl[4705]" 0;
	setAttr ".phl[4706]" 0;
	setAttr ".phl[4707]" 0;
	setAttr ".phl[4708]" 0;
	setAttr ".phl[4709]" 0;
	setAttr ".phl[4710]" 0;
	setAttr ".phl[4711]" 0;
	setAttr ".phl[4712]" 0;
	setAttr ".phl[4713]" 0;
	setAttr ".phl[4714]" 0;
	setAttr ".phl[4715]" 0;
	setAttr ".phl[4716]" 0;
	setAttr ".phl[4717]" 0;
	setAttr ".phl[4718]" 0;
	setAttr ".phl[4719]" 0;
	setAttr ".phl[4720]" 0;
	setAttr ".phl[4721]" 0;
	setAttr ".phl[4722]" 0;
	setAttr ".phl[4723]" 0;
	setAttr ".phl[4724]" 0;
	setAttr ".phl[4725]" 0;
	setAttr ".phl[4726]" 0;
	setAttr ".phl[4727]" 0;
	setAttr ".phl[4728]" 0;
	setAttr ".phl[4729]" 0;
	setAttr ".phl[4730]" 0;
	setAttr ".phl[4731]" 0;
	setAttr ".phl[4732]" 0;
	setAttr ".phl[4733]" 0;
	setAttr ".phl[4734]" 0;
	setAttr ".phl[4735]" 0;
	setAttr ".phl[4736]" 0;
	setAttr ".phl[4737]" 0;
	setAttr ".phl[4738]" 0;
	setAttr ".phl[4739]" 0;
	setAttr ".phl[4740]" 0;
	setAttr ".phl[4741]" 0;
	setAttr ".phl[4742]" 0;
	setAttr ".phl[4743]" 0;
	setAttr ".phl[4744]" 0;
	setAttr ".phl[4745]" 0;
	setAttr ".phl[4746]" 0;
	setAttr ".phl[4747]" 0;
	setAttr ".phl[4748]" 0;
	setAttr ".phl[4749]" 0;
	setAttr ".phl[4750]" 0;
	setAttr ".phl[4751]" 0;
	setAttr ".phl[4752]" 0;
	setAttr ".phl[4753]" 0;
	setAttr ".phl[4754]" 0;
	setAttr ".phl[4755]" 0;
	setAttr ".phl[4756]" 0;
	setAttr ".phl[4757]" 0;
	setAttr ".phl[4758]" 0;
	setAttr ".phl[4759]" 0;
	setAttr ".phl[4760]" 0;
	setAttr ".phl[4761]" 0;
	setAttr ".phl[4762]" 0;
	setAttr ".phl[4763]" 0;
	setAttr ".phl[4764]" 0;
	setAttr ".phl[4765]" 0;
	setAttr ".phl[4766]" 0;
	setAttr ".phl[4767]" 0;
	setAttr ".phl[4768]" 0;
	setAttr ".phl[4769]" 0;
	setAttr ".phl[4770]" 0;
	setAttr ".phl[4771]" 0;
	setAttr ".phl[4772]" 0;
	setAttr ".phl[4773]" 0;
	setAttr ".phl[4774]" 0;
	setAttr ".phl[4775]" 0;
	setAttr ".phl[4776]" 0;
	setAttr ".phl[4777]" 0;
	setAttr ".phl[4778]" 0;
	setAttr ".phl[4779]" 0;
	setAttr ".phl[4780]" 0;
	setAttr ".phl[4781]" 0;
	setAttr ".phl[4782]" 0;
	setAttr ".phl[4783]" 0;
	setAttr ".phl[4784]" 0;
	setAttr ".phl[4785]" 0;
	setAttr ".phl[4786]" 0;
	setAttr ".phl[4787]" 0;
	setAttr ".phl[4788]" 0;
	setAttr ".phl[4789]" 0;
	setAttr ".phl[4790]" 0;
	setAttr ".phl[4791]" 0;
	setAttr ".phl[4792]" 0;
	setAttr ".phl[4793]" 0;
	setAttr ".phl[4794]" 0;
	setAttr ".phl[4795]" 0;
	setAttr ".phl[4796]" 0;
	setAttr ".phl[4797]" 0;
	setAttr ".phl[4798]" 0;
	setAttr ".phl[4799]" 0;
	setAttr ".phl[4800]" 0;
	setAttr ".phl[4801]" 0;
	setAttr ".phl[4802]" 0;
	setAttr ".phl[4803]" 0;
	setAttr ".phl[4804]" 0;
	setAttr ".phl[4805]" 0;
	setAttr ".phl[4806]" 0;
	setAttr ".phl[4807]" 0;
	setAttr ".phl[4808]" 0;
	setAttr ".phl[4809]" 0;
	setAttr ".phl[4810]" 0;
	setAttr ".phl[4811]" 0;
	setAttr ".phl[4812]" 0;
	setAttr ".phl[4813]" 0;
	setAttr ".phl[4814]" 0;
	setAttr ".phl[4815]" 0;
	setAttr ".phl[4816]" 0;
	setAttr ".phl[4817]" 0;
	setAttr ".phl[4818]" 0;
	setAttr ".phl[4819]" 0;
	setAttr ".phl[4820]" 0;
	setAttr ".phl[4821]" 0;
	setAttr ".phl[4822]" 0;
	setAttr ".phl[4823]" 0;
	setAttr ".phl[4824]" 0;
	setAttr ".phl[4825]" 0;
	setAttr ".phl[4826]" 0;
	setAttr ".phl[4827]" 0;
	setAttr ".phl[4828]" 0;
	setAttr ".phl[4829]" 0;
	setAttr ".phl[4830]" 0;
	setAttr ".phl[4831]" 0;
	setAttr ".phl[4832]" 0;
	setAttr ".phl[4833]" 0;
	setAttr ".phl[4834]" 0;
	setAttr ".phl[4835]" 0;
	setAttr ".phl[4836]" 0;
	setAttr ".phl[4837]" 0;
	setAttr ".phl[4838]" 0;
	setAttr ".phl[4839]" 0;
	setAttr ".phl[4840]" 0;
	setAttr ".phl[4841]" 0;
	setAttr ".phl[4842]" 0;
	setAttr ".phl[4843]" 0;
	setAttr ".phl[4844]" 0;
	setAttr ".phl[4845]" 0;
	setAttr ".phl[4846]" 0;
	setAttr ".phl[4847]" 0;
	setAttr ".phl[4848]" 0;
	setAttr ".phl[4849]" 0;
	setAttr ".phl[4850]" 0;
	setAttr ".phl[4851]" 0;
	setAttr ".phl[4852]" 0;
	setAttr ".phl[4853]" 0;
	setAttr ".phl[4854]" 0;
	setAttr ".phl[4855]" 0;
	setAttr ".phl[4856]" 0;
	setAttr ".phl[4857]" 0;
	setAttr ".phl[4858]" 0;
	setAttr ".phl[4859]" 0;
	setAttr ".phl[4860]" 0;
	setAttr ".phl[4861]" 0;
	setAttr ".phl[4862]" 0;
	setAttr ".phl[4863]" 0;
	setAttr ".phl[4864]" 0;
	setAttr ".phl[4865]" 0;
	setAttr ".phl[4866]" 0;
	setAttr ".phl[4867]" 0;
	setAttr ".phl[4868]" 0;
	setAttr ".phl[4869]" 0;
	setAttr ".phl[4870]" 0;
	setAttr ".phl[4871]" 0;
	setAttr ".phl[4872]" 0;
	setAttr ".phl[4873]" 0;
	setAttr ".phl[4874]" 0;
	setAttr ".phl[4875]" 0;
	setAttr ".phl[4876]" 0;
	setAttr ".phl[4877]" 0;
	setAttr ".phl[4878]" 0;
	setAttr ".phl[4879]" 0;
	setAttr ".phl[4880]" 0;
	setAttr ".phl[4881]" 0;
	setAttr ".phl[4882]" 0;
	setAttr ".phl[4883]" 0;
	setAttr ".phl[4884]" 0;
	setAttr ".phl[4885]" 0;
	setAttr ".phl[4886]" 0;
	setAttr ".phl[4887]" 0;
	setAttr ".phl[4888]" 0;
	setAttr ".phl[4889]" 0;
	setAttr ".phl[4890]" 0;
	setAttr ".phl[4891]" 0;
	setAttr ".phl[4892]" 0;
	setAttr ".phl[4893]" 0;
	setAttr ".phl[4894]" 0;
	setAttr ".phl[4895]" 0;
	setAttr ".phl[4896]" 0;
	setAttr ".phl[4897]" 0;
	setAttr ".phl[4898]" 0;
	setAttr ".phl[4899]" 0;
	setAttr ".phl[4900]" 0;
	setAttr ".phl[4901]" 0;
	setAttr ".phl[4902]" 0;
	setAttr ".phl[4903]" 0;
	setAttr ".phl[4904]" 0;
	setAttr ".phl[4905]" 0;
	setAttr ".phl[4906]" 0;
	setAttr ".phl[4907]" 0;
	setAttr ".phl[4908]" 0;
	setAttr ".phl[4909]" 0;
	setAttr ".phl[4910]" 0;
	setAttr ".phl[4911]" 0;
	setAttr ".phl[4912]" 0;
	setAttr ".phl[4913]" 0;
	setAttr ".phl[4914]" 0;
	setAttr ".phl[4915]" 0;
	setAttr ".phl[4916]" 0;
	setAttr ".phl[4917]" 0;
	setAttr ".phl[4918]" 0;
	setAttr ".phl[4919]" 0;
	setAttr ".phl[4920]" 0;
	setAttr ".phl[4921]" 0;
	setAttr ".phl[4922]" 0;
	setAttr ".phl[4923]" 0;
	setAttr ".phl[4924]" 0;
	setAttr ".phl[4925]" 0;
	setAttr ".phl[4926]" 0;
	setAttr ".phl[4927]" 0;
	setAttr ".phl[4928]" 0;
	setAttr ".phl[4929]" 0;
	setAttr ".phl[4930]" 0;
	setAttr ".phl[4931]" 0;
	setAttr ".phl[4932]" 0;
	setAttr ".phl[4933]" 0;
	setAttr ".phl[4934]" 0;
	setAttr ".phl[4935]" 0;
	setAttr ".phl[4936]" 0;
	setAttr ".phl[4937]" 0;
	setAttr ".phl[4938]" 0;
	setAttr ".phl[4939]" 0;
	setAttr ".phl[4940]" 0;
	setAttr ".phl[4941]" 0;
	setAttr ".phl[4942]" 0;
	setAttr ".phl[4943]" 0;
	setAttr ".phl[4944]" 0;
	setAttr ".phl[4945]" 0;
	setAttr ".phl[4946]" 0;
	setAttr ".phl[4947]" 0;
	setAttr ".phl[4948]" 0;
	setAttr ".phl[4949]" 0;
	setAttr ".phl[4950]" 0;
	setAttr ".phl[4951]" 0;
	setAttr ".phl[4952]" 0;
	setAttr ".phl[4953]" 0;
	setAttr ".phl[4954]" 0;
	setAttr ".phl[4955]" 0;
	setAttr ".phl[4956]" 0;
	setAttr ".phl[4957]" 0;
	setAttr ".phl[4958]" 0;
	setAttr ".phl[4959]" 0;
	setAttr ".phl[4960]" 0;
	setAttr ".phl[4961]" 0;
	setAttr ".phl[4962]" 0;
	setAttr ".phl[4963]" 0;
	setAttr ".phl[4964]" 0;
	setAttr ".phl[4965]" 0;
	setAttr ".phl[4966]" 0;
	setAttr ".phl[4967]" 0;
	setAttr ".phl[4968]" 0;
	setAttr ".phl[4969]" 0;
	setAttr ".phl[4970]" 0;
	setAttr ".phl[4971]" 0;
	setAttr ".phl[4972]" 0;
	setAttr ".phl[4973]" 0;
	setAttr ".phl[4974]" 0;
	setAttr ".phl[4975]" 0;
	setAttr ".phl[4976]" 0;
	setAttr ".phl[4977]" 0;
	setAttr ".phl[4978]" 0;
	setAttr ".phl[4979]" 0;
	setAttr ".phl[4980]" 0;
	setAttr ".phl[4981]" 0;
	setAttr ".phl[4982]" 0;
	setAttr ".phl[4983]" 0;
	setAttr ".phl[4984]" 0;
	setAttr ".phl[4985]" 0;
	setAttr ".phl[4986]" 0;
	setAttr ".phl[4987]" 0;
	setAttr ".phl[4988]" 0;
	setAttr ".phl[4989]" 0;
	setAttr ".phl[4990]" 0;
	setAttr ".phl[4991]" 0;
	setAttr ".phl[4992]" 0;
	setAttr ".phl[4993]" 0;
	setAttr ".phl[4994]" 0;
	setAttr ".phl[4995]" 0;
	setAttr ".phl[4996]" 0;
	setAttr ".phl[4997]" 0;
	setAttr ".phl[4998]" 0;
	setAttr ".phl[4999]" 0;
	setAttr ".phl[5000]" 0;
	setAttr ".phl[5001]" 0;
	setAttr ".phl[5002]" 0;
	setAttr ".phl[5003]" 0;
	setAttr ".phl[5004]" 0;
	setAttr ".phl[5005]" 0;
	setAttr ".phl[5006]" 0;
	setAttr ".phl[5007]" 0;
	setAttr ".phl[5008]" 0;
	setAttr ".phl[5009]" 0;
	setAttr ".phl[5010]" 0;
	setAttr ".phl[5011]" 0;
	setAttr ".phl[5012]" 0;
	setAttr ".phl[5013]" 0;
	setAttr ".phl[5014]" 0;
	setAttr ".phl[5015]" 0;
	setAttr ".phl[5016]" 0;
	setAttr ".phl[5017]" 0;
	setAttr ".phl[5018]" 0;
	setAttr ".phl[5019]" 0;
	setAttr ".phl[5020]" 0;
	setAttr ".phl[5021]" 0;
	setAttr ".phl[5022]" 0;
	setAttr ".phl[5023]" 0;
	setAttr ".phl[5024]" 0;
	setAttr ".phl[5025]" 0;
	setAttr ".phl[5026]" 0;
	setAttr ".phl[5027]" 0;
	setAttr ".phl[5028]" 0;
	setAttr ".phl[5029]" 0;
	setAttr ".phl[5030]" 0;
	setAttr ".phl[5031]" 0;
	setAttr ".phl[5032]" 0;
	setAttr ".phl[5033]" 0;
	setAttr ".phl[5034]" 0;
	setAttr ".phl[5035]" 0;
	setAttr ".phl[5036]" 0;
	setAttr ".phl[5037]" 0;
	setAttr ".phl[5038]" 0;
	setAttr ".phl[5039]" 0;
	setAttr ".phl[5040]" 0;
	setAttr ".phl[5041]" 0;
	setAttr ".phl[5042]" 0;
	setAttr ".phl[5043]" 0;
	setAttr ".phl[5044]" 0;
	setAttr ".phl[5045]" 0;
	setAttr ".phl[5046]" 0;
	setAttr ".phl[5047]" 0;
	setAttr ".phl[5048]" 0;
	setAttr ".phl[5049]" 0;
	setAttr ".phl[5050]" 0;
	setAttr ".phl[5051]" 0;
	setAttr ".phl[5052]" 0;
	setAttr ".phl[5053]" 0;
	setAttr ".phl[5054]" 0;
	setAttr ".phl[5055]" 0;
	setAttr ".phl[5056]" 0;
	setAttr ".phl[5057]" 0;
	setAttr ".phl[5058]" 0;
	setAttr ".phl[5059]" 0;
	setAttr ".phl[5060]" 0;
	setAttr ".phl[5061]" 0;
	setAttr ".phl[5062]" 0;
	setAttr ".phl[5063]" 0;
	setAttr ".phl[5064]" 0;
	setAttr ".phl[5065]" 0;
	setAttr ".phl[5066]" 0;
	setAttr ".phl[5067]" 0;
	setAttr ".phl[5068]" 0;
	setAttr ".phl[5069]" 0;
	setAttr ".phl[5070]" 0;
	setAttr ".phl[5071]" 0;
	setAttr ".phl[5072]" 0;
	setAttr ".phl[5073]" 0;
	setAttr ".phl[5074]" 0;
	setAttr ".phl[5075]" 0;
	setAttr ".phl[5076]" 0;
	setAttr ".phl[5077]" 0;
	setAttr ".phl[5078]" 0;
	setAttr ".phl[5079]" 0;
	setAttr ".phl[5080]" 0;
	setAttr ".phl[5081]" 0;
	setAttr ".phl[5082]" 0;
	setAttr ".phl[5083]" 0;
	setAttr ".phl[5084]" 0;
	setAttr ".phl[5085]" 0;
	setAttr ".phl[5086]" 0;
	setAttr ".phl[5087]" 0;
	setAttr ".phl[5088]" 0;
	setAttr ".phl[5089]" 0;
	setAttr ".phl[5090]" 0;
	setAttr ".phl[5091]" 0;
	setAttr ".phl[5092]" 0;
	setAttr ".phl[5093]" 0;
	setAttr ".phl[5094]" 0;
	setAttr ".phl[5095]" 0;
	setAttr ".phl[5096]" 0;
	setAttr ".phl[5097]" 0;
	setAttr ".phl[5098]" 0;
	setAttr ".phl[5099]" 0;
	setAttr ".phl[5100]" 0;
	setAttr ".phl[5101]" 0;
	setAttr ".phl[5102]" 0;
	setAttr ".phl[5103]" 0;
	setAttr ".phl[5104]" 0;
	setAttr ".phl[5105]" 0;
	setAttr ".phl[5106]" 0;
	setAttr ".phl[5107]" 0;
	setAttr ".phl[5108]" 0;
	setAttr ".phl[5109]" 0;
	setAttr ".phl[5110]" 0;
	setAttr ".phl[5111]" 0;
	setAttr ".phl[5112]" 0;
	setAttr ".phl[5113]" 0;
	setAttr ".phl[5114]" 0;
	setAttr ".phl[5115]" 0;
	setAttr ".phl[5116]" 0;
	setAttr ".phl[5117]" 0;
	setAttr ".phl[5118]" 0;
	setAttr ".phl[5119]" 0;
	setAttr ".phl[5120]" 0;
	setAttr ".phl[5121]" 0;
	setAttr ".phl[5122]" 0;
	setAttr ".phl[5123]" 0;
	setAttr ".phl[5124]" 0;
	setAttr ".phl[5125]" 0;
	setAttr ".phl[5126]" 0;
	setAttr ".phl[5127]" 0;
	setAttr ".phl[5128]" 0;
	setAttr ".phl[5129]" 0;
	setAttr ".phl[5130]" 0;
	setAttr ".phl[5131]" 0;
	setAttr ".phl[5132]" 0;
	setAttr ".phl[5133]" 0;
	setAttr ".phl[5134]" 0;
	setAttr ".phl[5135]" 0;
	setAttr ".phl[5136]" 0;
	setAttr ".phl[5137]" 0;
	setAttr ".phl[5138]" 0;
	setAttr ".phl[5139]" 0;
	setAttr ".phl[5140]" 0;
	setAttr ".phl[5141]" 0;
	setAttr ".phl[5142]" 0;
	setAttr ".phl[5143]" 0;
	setAttr ".phl[5144]" 0;
	setAttr ".phl[5145]" 0;
	setAttr ".phl[5146]" 0;
	setAttr ".phl[5147]" 0;
	setAttr ".phl[5148]" 0;
	setAttr ".phl[5149]" 0;
	setAttr ".phl[5150]" 0;
	setAttr ".phl[5151]" 0;
	setAttr ".phl[5152]" 0;
	setAttr ".phl[5153]" 0;
	setAttr ".phl[5154]" 0;
	setAttr ".phl[5155]" 0;
	setAttr ".phl[5156]" 0;
	setAttr ".phl[5157]" 0;
	setAttr ".phl[5158]" 0;
	setAttr ".phl[5159]" 0;
	setAttr ".phl[5160]" 0;
	setAttr ".phl[5161]" 0;
	setAttr ".phl[5162]" 0;
	setAttr ".phl[5163]" 0;
	setAttr ".phl[5164]" 0;
	setAttr ".phl[5165]" 0;
	setAttr ".phl[5166]" 0;
	setAttr ".phl[5167]" 0;
	setAttr ".phl[5168]" 0;
	setAttr ".phl[5169]" 0;
	setAttr ".phl[5170]" 0;
	setAttr ".phl[5171]" 0;
	setAttr ".phl[5172]" 0;
	setAttr ".phl[5173]" 0;
	setAttr ".phl[5174]" 0;
	setAttr ".phl[5175]" 0;
	setAttr ".phl[5176]" 0;
	setAttr ".phl[5177]" 0;
	setAttr ".phl[5178]" 0;
	setAttr ".phl[5179]" 0;
	setAttr ".phl[5180]" 0;
	setAttr ".phl[5181]" 0;
	setAttr ".phl[5182]" 0;
	setAttr ".phl[5183]" 0;
	setAttr ".phl[5184]" 0;
	setAttr ".phl[5185]" 0;
	setAttr ".phl[5186]" 0;
	setAttr ".phl[5187]" 0;
	setAttr ".phl[5188]" 0;
	setAttr ".phl[5189]" 0;
	setAttr ".phl[5190]" 0;
	setAttr ".phl[5191]" 0;
	setAttr ".phl[5192]" 0;
	setAttr ".phl[5193]" 0;
	setAttr ".phl[5194]" 0;
	setAttr ".phl[5195]" 0;
	setAttr ".phl[5196]" 0;
	setAttr ".phl[5197]" 0;
	setAttr ".phl[5198]" 0;
	setAttr ".phl[5199]" 0;
	setAttr ".phl[5200]" 0;
	setAttr ".phl[5201]" 0;
	setAttr ".phl[5202]" 0;
	setAttr ".phl[5203]" 0;
	setAttr ".phl[5204]" 0;
	setAttr ".phl[5205]" 0;
	setAttr ".phl[5206]" 0;
	setAttr ".phl[5207]" 0;
	setAttr ".phl[5208]" 0;
	setAttr ".phl[5209]" 0;
	setAttr ".phl[5210]" 0;
	setAttr ".phl[5211]" 0;
	setAttr ".phl[5212]" 0;
	setAttr ".phl[5213]" 0;
	setAttr ".phl[5214]" 0;
	setAttr ".phl[5215]" 0;
	setAttr ".phl[5216]" 0;
	setAttr ".phl[5217]" 0;
	setAttr ".phl[5218]" 0;
	setAttr ".phl[5219]" 0;
	setAttr ".phl[5220]" 0;
	setAttr ".phl[5221]" 0;
	setAttr ".phl[5222]" 0;
	setAttr ".phl[5223]" 0;
	setAttr ".phl[5224]" 0;
	setAttr ".phl[5225]" 0;
	setAttr ".phl[5226]" 0;
	setAttr ".phl[5227]" 0;
	setAttr ".phl[5228]" 0;
	setAttr ".phl[5229]" 0;
	setAttr ".phl[5230]" 0;
	setAttr ".phl[5231]" 0;
	setAttr ".phl[5232]" 0;
	setAttr ".phl[5233]" 0;
	setAttr ".phl[5234]" 0;
	setAttr ".phl[5235]" 0;
	setAttr ".phl[5236]" 0;
	setAttr ".phl[5237]" 0;
	setAttr ".phl[5238]" 0;
	setAttr ".phl[5239]" 0;
	setAttr ".phl[5240]" 0;
	setAttr ".phl[5241]" 0;
	setAttr ".phl[5242]" 0;
	setAttr ".phl[5243]" 0;
	setAttr ".phl[5244]" 0;
	setAttr ".phl[5245]" 0;
	setAttr ".phl[5246]" 0;
	setAttr ".phl[5247]" 0;
	setAttr ".phl[5248]" 0;
	setAttr ".phl[5249]" 0;
	setAttr ".phl[5250]" 0;
	setAttr ".phl[5251]" 0;
	setAttr ".phl[5252]" 0;
	setAttr ".phl[5253]" 0;
	setAttr ".phl[5254]" 0;
	setAttr ".phl[5255]" 0;
	setAttr ".phl[5256]" 0;
	setAttr ".phl[5257]" 0;
	setAttr ".phl[5258]" 0;
	setAttr ".phl[5259]" 0;
	setAttr ".phl[5260]" 0;
	setAttr ".phl[5261]" 0;
	setAttr ".phl[5262]" 0;
	setAttr ".phl[5263]" 0;
	setAttr ".phl[5264]" 0;
	setAttr ".phl[5265]" 0;
	setAttr ".phl[5266]" 0;
	setAttr ".phl[5267]" 0;
	setAttr ".phl[5268]" 0;
	setAttr ".phl[5269]" 0;
	setAttr ".phl[5270]" 0;
	setAttr ".phl[5271]" 0;
	setAttr ".phl[5272]" 0;
	setAttr ".phl[5273]" 0;
	setAttr ".phl[5274]" 0;
	setAttr ".phl[5275]" 0;
	setAttr ".phl[5276]" 0;
	setAttr ".phl[5277]" 0;
	setAttr ".phl[5278]" 0;
	setAttr ".phl[5279]" 0;
	setAttr ".phl[5280]" 0;
	setAttr ".phl[5281]" 0;
	setAttr ".phl[5282]" 0;
	setAttr ".phl[5283]" 0;
	setAttr ".phl[5284]" 0;
	setAttr ".phl[5285]" 0;
	setAttr ".phl[5286]" 0;
	setAttr ".phl[5287]" 0;
	setAttr ".phl[5288]" 0;
	setAttr ".phl[5289]" 0;
	setAttr ".phl[5290]" 0;
	setAttr ".phl[5291]" 0;
	setAttr ".phl[5292]" 0;
	setAttr ".phl[5293]" 0;
	setAttr ".phl[5294]" 0;
	setAttr ".phl[5295]" 0;
	setAttr ".phl[5296]" 0;
	setAttr ".phl[5297]" 0;
	setAttr ".phl[5298]" 0;
	setAttr ".phl[5299]" 0;
	setAttr ".phl[5300]" 0;
	setAttr ".phl[5301]" 0;
	setAttr ".phl[5302]" 0;
	setAttr ".phl[5303]" 0;
	setAttr ".phl[5304]" 0;
	setAttr ".phl[5305]" 0;
	setAttr ".phl[5306]" 0;
	setAttr ".phl[5307]" 0;
	setAttr ".phl[5308]" 0;
	setAttr ".phl[5309]" 0;
	setAttr ".phl[5310]" 0;
	setAttr ".phl[5311]" 0;
	setAttr ".phl[5312]" 0;
	setAttr ".phl[5313]" 0;
	setAttr ".phl[5314]" 0;
	setAttr ".phl[5315]" 0;
	setAttr ".phl[5316]" 0;
	setAttr ".phl[5317]" 0;
	setAttr ".phl[5318]" 0;
	setAttr ".phl[5319]" 0;
	setAttr ".phl[5320]" 0;
	setAttr ".phl[5321]" 0;
	setAttr ".phl[5322]" 0;
	setAttr ".phl[5323]" 0;
	setAttr ".phl[5324]" 0;
	setAttr ".phl[5325]" 0;
	setAttr ".phl[5326]" 0;
	setAttr ".phl[5327]" 0;
	setAttr ".phl[5328]" 0;
	setAttr ".phl[5329]" 0;
	setAttr ".phl[5330]" 0;
	setAttr ".phl[5331]" 0;
	setAttr ".phl[5332]" 0;
	setAttr ".phl[5333]" 0;
	setAttr ".phl[5334]" 0;
	setAttr ".phl[5335]" 0;
	setAttr ".phl[5336]" 0;
	setAttr ".phl[5337]" 0;
	setAttr ".phl[5338]" 0;
	setAttr ".phl[5339]" 0;
	setAttr ".phl[5340]" 0;
	setAttr ".phl[5341]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 236
		0 "|RefRNfosterParent1|Ref:prp_glasses_parentConstraint1" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses" 
		"-s -nc -r "
		0 "|RefRNfosterParent1|Ref:medic_eye_loc_L_orientConstraint1" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L" 
		"-s -nc -r "
		0 "|RefRNfosterParent1|Ref:medic_eye_loc_R_orientConstraint1" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R" 
		"-s -nc -r "
		0 "|RefRNfosterParent1|Ref:viewTarget_pointConstraint1" "|Ref:medicInfo|Ref:viewTarget" 
		"-s -nc -r "
		0 "|RefRNfosterParent1|polySurfaceShape1Deformed" "|Ref:rig_extras|Ref:polySurface1" 
		"-s -nc -r "
		1 |Ref:medicInfo "main" "main" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "plotted" "plotted" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "upperBodyControl" "upperBodyControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "pelvisControl" "pelvisControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "fkSpine0" "fkSpine0" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "fkSpine1" "fkSpine1" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "fkSpine2" "fkSpine2" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "fkSpine3" "fkSpine3" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine0" "ikSpine0" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine1" "ikSpine1" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine2" "ikSpine2" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine3" "ikSpine3" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "chestParent" "chestParent" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "neckControl" "neckControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "headControl" "headControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKshoulderControl" "lFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "lFKshoulder" "lFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKelbow" "lFKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKwrist" "lFKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKshoulder" "lIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKelbow" "lIKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKwrist" "lIKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKcontrol" "lIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lWeaponAttach" "lWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "lElbowControl" "lElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "lIKupLeg" "lIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKknee" "lIKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKankle" "lIKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKtoe" "lIKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKtoeEnd" "lIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKupLeg" "lFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKknee" "lFKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKankle" "lFKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKtoe" "lFKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lKneeControl" "lKneeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFootControl" "lFootControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lToeControl" "lToeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKshoulderControl" "rFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "rFKshoulder" "rFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKelbow" "rFKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKwrist" "rFKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKshoulder" "rIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKelbow" "rIKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKwrist" "rIKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKcontrol" "rIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rWeaponAttach" "rWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "rElbowControl" "rElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "rIKupLeg" "rIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKknee" "rIKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKankle" "rIKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKtoe" "rIKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKtoeEnd" "rIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKupLeg" "rFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKknee" "rFKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKankle" "rFKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKtoe" "rFKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rKneeControl" "rKneeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFootControl" "rFootControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rToeControl" "rToeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L 
		"zooPrimOut" "zooPrimOut" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R 
		"zooPrimOut" "zooPrimOut" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 Ref:zooRegister_zoo "zooRegzoovisman0" "zooRegzoovisman0" " -ci 1 -at \"message\""
		
		1 Ref:zooRegister_zoo "zooRegshaders0" "zooRegshaders0" " -ci 1 -at \"message\""
		
		2 "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape" "instObjGroups.objectGroups" 
		" -s 20"
		2 "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"translate" " -type \"double3\" -0.984379 -78.958721 -3.83643"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"rotatePivot" " -type \"double3\" 0.984379 78.958721 4.373515"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"scalePivot" " -type \"double3\" 0.984379 78.958721 4.373515"
		2 "bindPose1" "worldMatrix" " -s 82"
		2 "bindPose1" "worldMatrix[0]" " -type \"matrix\" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1"
		
		2 "bindPose1" "xformMatrix" " -s 82"
		2 "bindPose1" "xformMatrix[0]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[1]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 48.466884 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.999367 0 0 0.0355692 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[2]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -4.279883 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0333367 0 0 0.999444 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[3]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -6.217113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0167492 0 0 0.99986 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[4]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -6.0888 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.143949 0 0 0.989585 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[5]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -5.102509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0457175 0 0 0.998954 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[10]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -3.495106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0558435 0 0 0.99844 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[68]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -3.168686 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0486227 0 0 0.998817 1 1 1 1"
		
		2 "bindPose1" "global" " -s 82"
		2 "bindPose1" "g[0:68]" " 1 0 0 0 0 0 0 0"
		2 "bindPose1" "g[70:82]" ""
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L" 
		"visibility" " 1"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L" 
		"zooPrimOut" " 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:medic_eye_loc_LShape" 
		"visibility" " -k 0 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:group1" 
		"visibility" " 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R" 
		"visibility" " 1"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R" 
		"zooPrimOut" " 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R|Ref:medic_eye_loc_RShape" 
		"visibility" " -k 0 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R|Ref:group2" 
		"visibility" " 0"
		2 "|Ref:medicInfo|Ref:a_meshes" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape" "instObjGroups.objectGroups" 
		" -s 18"
		2 "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:medicInfo|Ref:a_meshes|Ref:hand_a_L" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:a_meshes|Ref:hand_a_R" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:game_meshes" "visibility" " 0"
		2 "|Ref:rig_extras|Ref:polySurface1" "visibility" " 1"
		2 "|Ref:rig_extras|Ref:polySurface1|Ref:polySurfaceShape1" "intermediateObject" 
		" 1"
		2 "|Ref:rig_extras|Ref:medic_head1" "visibility" " 0"
		2 "|Ref:rig_extras|Ref:medic_head2" "visibility" " 0"
		3 "Ref:skinCluster12.outputGeometry[0]" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.inMesh" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.translateX" 
		"RefRN.placeHolderList[144]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.translateY" 
		"RefRN.placeHolderList[145]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.translateZ" 
		"RefRN.placeHolderList[146]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotatePivot" 
		"RefRN.placeHolderList[147]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotatePivotTranslate" 
		"RefRN.placeHolderList[148]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateX" 
		"RefRN.placeHolderList[149]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateY" 
		"RefRN.placeHolderList[150]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateZ" 
		"RefRN.placeHolderList[151]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateOrder" 
		"RefRN.placeHolderList[152]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.jointOrient" 
		"RefRN.placeHolderList[153]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.parentInverseMatrix" 
		"RefRN.placeHolderList[154]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medicHead.instObjGroups" "RefRN.placeHolderList[1022]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medicHeadTongue.instObjGroups" "RefRN.placeHolderList[1889]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.inMesh" 
		"RefRN.placeHolderList[2753]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[748]" 
		"RefRN.placeHolderList[3602]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[748].objectGroupId" 
		"RefRN.placeHolderList[3603]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[748].objectGrpColor" 
		"RefRN.placeHolderList[3604]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[749]" 
		"RefRN.placeHolderList[3605]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[749].objectGroupId" 
		"RefRN.placeHolderList[3606]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[749].objectGrpColor" 
		"RefRN.placeHolderList[3607]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[750]" 
		"RefRN.placeHolderList[3608]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[750].objectGroupId" 
		"RefRN.placeHolderList[3609]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[750].objectGrpColor" 
		"RefRN.placeHolderList[3610]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[751]" 
		"RefRN.placeHolderList[3611]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[751].objectGroupId" 
		"RefRN.placeHolderList[3612]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[751].objectGrpColor" 
		"RefRN.placeHolderList[3613]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[752]" 
		"RefRN.placeHolderList[3614]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[752].objectGroupId" 
		"RefRN.placeHolderList[3615]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[752].objectGrpColor" 
		"RefRN.placeHolderList[3616]" ""
		5 4 "RefRN" "|Ref:medicInfo.main" "RefRN.placeHolderList[3617]" ""
		5 4 "RefRN" "|Ref:medicInfo.plotted" "RefRN.placeHolderList[3618]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.upperBodyControl" "RefRN.placeHolderList[3619]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.pelvisControl" "RefRN.placeHolderList[3620]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine0" "RefRN.placeHolderList[3621]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine1" "RefRN.placeHolderList[3622]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine2" "RefRN.placeHolderList[3623]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine3" "RefRN.placeHolderList[3624]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine0" "RefRN.placeHolderList[3625]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine1" "RefRN.placeHolderList[3626]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine2" "RefRN.placeHolderList[3627]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine3" "RefRN.placeHolderList[3628]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.chestParent" "RefRN.placeHolderList[3629]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.neckControl" "RefRN.placeHolderList[3630]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.headControl" "RefRN.placeHolderList[3631]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKshoulderControl" "RefRN.placeHolderList[3632]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKshoulder" "RefRN.placeHolderList[3633]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKelbow" "RefRN.placeHolderList[3634]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKwrist" "RefRN.placeHolderList[3635]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKshoulder" "RefRN.placeHolderList[3636]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKelbow" "RefRN.placeHolderList[3637]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKwrist" "RefRN.placeHolderList[3638]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKcontrol" "RefRN.placeHolderList[3639]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lWeaponAttach" "RefRN.placeHolderList[3640]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lElbowControl" "RefRN.placeHolderList[3641]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKupLeg" "RefRN.placeHolderList[3642]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKknee" "RefRN.placeHolderList[3643]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lIKankle" "RefRN.placeHolderList[3644]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKtoe" "RefRN.placeHolderList[3645]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lIKtoeEnd" "RefRN.placeHolderList[3646]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKupLeg" "RefRN.placeHolderList[3647]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKknee" "RefRN.placeHolderList[3648]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lFKankle" "RefRN.placeHolderList[3649]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKtoe" "RefRN.placeHolderList[3650]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lKneeControl" "RefRN.placeHolderList[3651]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFootControl" "RefRN.placeHolderList[3652]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lToeControl" "RefRN.placeHolderList[3653]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKshoulderControl" "RefRN.placeHolderList[3654]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKshoulder" "RefRN.placeHolderList[3655]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKelbow" "RefRN.placeHolderList[3656]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKwrist" "RefRN.placeHolderList[3657]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKshoulder" "RefRN.placeHolderList[3658]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKelbow" "RefRN.placeHolderList[3659]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKwrist" "RefRN.placeHolderList[3660]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKcontrol" "RefRN.placeHolderList[3661]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rWeaponAttach" "RefRN.placeHolderList[3662]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rElbowControl" "RefRN.placeHolderList[3663]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKupLeg" "RefRN.placeHolderList[3664]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKknee" "RefRN.placeHolderList[3665]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rIKankle" "RefRN.placeHolderList[3666]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKtoe" "RefRN.placeHolderList[3667]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rIKtoeEnd" "RefRN.placeHolderList[3668]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKupLeg" "RefRN.placeHolderList[3669]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKknee" "RefRN.placeHolderList[3670]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rFKankle" "RefRN.placeHolderList[3671]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKtoe" "RefRN.placeHolderList[3672]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rKneeControl" "RefRN.placeHolderList[3673]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFootControl" "RefRN.placeHolderList[3674]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rToeControl" "RefRN.placeHolderList[3675]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateY" 
		"RefRN.placeHolderList[3770]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateX" 
		"RefRN.placeHolderList[3771]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateZ" 
		"RefRN.placeHolderList[3772]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateOrder" 
		"RefRN.placeHolderList[3773]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.parentInverseMatrix" 
		"RefRN.placeHolderList[3774]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.message" 
		"RefRN.placeHolderList[3775]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateY" 
		"RefRN.placeHolderList[3776]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateX" 
		"RefRN.placeHolderList[3777]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateZ" 
		"RefRN.placeHolderList[3778]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateOrder" 
		"RefRN.placeHolderList[3779]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3780]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.message" 
		"RefRN.placeHolderList[3781]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:glasses.instObjGroups" "RefRN.placeHolderList[4490]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[794]" 
		"RefRN.placeHolderList[4493]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[794].objectGroupId" 
		"RefRN.placeHolderList[4494]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[794].objectGrpColor" 
		"RefRN.placeHolderList[4495]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[795]" 
		"RefRN.placeHolderList[4496]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[795].objectGroupId" 
		"RefRN.placeHolderList[4497]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[795].objectGrpColor" 
		"RefRN.placeHolderList[4498]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[796]" 
		"RefRN.placeHolderList[4499]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[796].objectGroupId" 
		"RefRN.placeHolderList[4500]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[796].objectGrpColor" 
		"RefRN.placeHolderList[4501]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[798]" 
		"RefRN.placeHolderList[4502]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[798].objectGroupId" 
		"RefRN.placeHolderList[4503]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.instObjGroups.objectGroups[798].objectGrpColor" 
		"RefRN.placeHolderList[4504]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:body_mesh_a|Ref:body_mesh_aShape.inMesh" 
		"RefRN.placeHolderList[4505]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:hand_a_L.instObjGroups" 
		"RefRN.placeHolderList[4506]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:hand_a_L.instObjGroups" 
		"RefRN.placeHolderList[4507]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:hand_a_R.instObjGroups" 
		"RefRN.placeHolderList[4508]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:a_meshes|Ref:hand_a_R.instObjGroups" 
		"RefRN.placeHolderList[4509]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:viewTarget.translateX" "RefRN.placeHolderList[4526]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:viewTarget.translateY" "RefRN.placeHolderList[4527]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:viewTarget.translateZ" "RefRN.placeHolderList[4528]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:viewTarget.parentInverseMatrix" "RefRN.placeHolderList[4529]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:viewTarget.rotatePivot" "RefRN.placeHolderList[4530]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:viewTarget.rotatePivotTranslate" "RefRN.placeHolderList[4531]" 
		""
		5 3 "RefRN" "|Ref:rig_extras|Ref:polySurface1|Ref:polySurfaceShape1.worldMesh" 
		"RefRN.placeHolderList[4532]" ""
		5 4 "RefRN" "Ref:zooRegister_zoo.zooRegzoovisman0" "RefRN.placeHolderList[4533]" 
		""
		5 4 "RefRN" "Ref:zooRegister_zoo.zooRegshaders0" "RefRN.placeHolderList[4534]" 
		""
		5 3 "RefRN" "Ref:skinCluster12.outputGeometry[0]" "RefRN.placeHolderList[4537]" 
		"Ref:body_mesh_aShape.i"
		5 4 "RefRN" "Ref:lambert6SG.dagSetMembers" "RefRN.placeHolderList[4538]" 
		""
		"Ref:HeadRN" 1
		5 3 "RefRN" "|Ref:medicInfo|Ref:Head:medicHeadMesh.instObjGroups" "RefRN.placeHolderList[155]" 
		""
		"RefRN" 1148
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_backpack_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_hippouch_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_hippouch_0_B_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_2_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_1_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_L_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_2_M_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_1_M_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_M_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_2_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_1_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_R_parentConstraint1" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:medic|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:medic|Ref:bip_pelvis" 
		"-s -r "
		2 "|Ref:medic|Ref:bip_pelvis" "rotateX" " -av 0"
		2 "|Ref:medic|Ref:bip_pelvis" "rotateY" " -av 0"
		2 "|Ref:medic|Ref:bip_pelvis" "rotateZ" " -av 0"
		2 "|Ref:medic|Ref:bip_pelvis" "bindPose" " -type \"matrix\" 1 0 0 0 0 -0.99747 0.0710934 0 0 -0.0710934 -0.99747 0 0 48.466884 0 1"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0" "bindPose" " -type \"matrix\" 1 0 0 0 0 -0.990515 0.137403 0 0 -0.137403 -0.990515 0 0 52.735937 -0.304271 1"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotateX" " -av"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotateY" " -av"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotateZ" " -av"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "bindPose" 
		" -type \"matrix\" 1 0 0 0 0 -0.985357 0.170502 0 0 -0.170502 -0.985357 0 0 58.894082 -1.158522 1"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotateX" " -av"
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotateY" " -av"
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotateZ" " -av"
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -0.993098 -0.117292 0 0 0.117292 -0.993098 0 0 64.893726 -2.196675 1"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -0.978233 -0.20751 0 0 0.20751 -0.978233 0 0 69.961015 -1.598194 1"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -0.995272 -0.0971305 0 0 0.0971305 -0.995272 0 0 73.380043 -0.872924 1"
		
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -1 0 0 0 0 -1 0 0 76.533746 -0.565148 1"
		2 "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"lockInfluenceWeights" " 0"
		2 "|Ref:medic|Ref:body_mesh|Ref:body_meshShape" "instObjGroups.objectGroups" 
		" -s 10"
		2 "|Ref:medic|Ref:body_mesh|Ref:body_meshShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:mesh_layer" "visibility" " 1"
		2 "Ref:skeleton_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "visibility" " 1"
		2 "Ref:tweak6" "vlist[0].vertex" " -s 247"
		2 "Ref:tweak6" "vlist[0].vertex[318]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[319]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1219]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1221]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1222]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1223]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1224]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1225]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1226]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1227]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1228]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1229]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1230]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1231]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1232]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1233]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1234]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1235]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1236]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1237]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1238]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1239]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1240]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1243]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1244]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1245]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1246]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1247]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1248]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1249]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1250]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1251]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1252]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1253]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1254]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1255]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1256]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1257]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1258]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1260]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1261]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1262]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1263]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1264]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1265]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1266]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1267]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1268]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1269]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1270]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1271]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1272]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1273]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1277]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1278]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1279]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1280]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1281]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1282]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1283]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1284]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1285]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1286]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1287]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1288]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1289]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1290]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1291]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1292]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1293]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1300]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1301]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1302]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1303]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1304]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1305]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1306]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1307]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1308]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1309]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1310]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1311]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1312]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1313]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1314]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1315]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1316]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1317]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1318]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1319]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1320]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1321]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1322]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1323]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1324]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1325]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1326]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1327]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1328]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1329]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1330]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1331]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1332]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1333]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1334]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1335]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1336]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1337]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1338]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1339]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1340]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1341]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1342]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1343]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1344]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1345]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1346]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1347]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1348]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1349]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1350]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1351]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1352]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1355]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1356]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1357]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1358]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1359]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1360]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1361]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1362]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1363]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1364]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1365]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1366]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1367]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1368]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1369]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1370]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1371]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1372]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1373]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1374]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1375]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1376]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1377]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1378]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1379]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1380]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1381]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1382]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1383]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1384]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1385]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1386]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1387]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1388]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1389]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1390]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1391]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1392]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1393]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1394]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1395]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1396]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1397]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1398]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1400]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1405]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1406]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1407]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1408]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1409]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1410]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1411]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1412]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1414]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1415]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1416]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1417]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1418]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1419]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1420]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1421]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1422]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1423]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1424]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1425]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1426]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1427]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1428]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1429]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1430]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1433]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1436]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1437]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1438]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1439]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1440]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1441]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1442]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1443]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1444]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1445]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1446]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1447]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1448]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1449]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1450]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1451]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1452]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1453]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1454]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1457]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1458]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1459]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1460]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1461]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1462]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1463]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1464]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1465]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1466]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1467]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1468]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1469]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1470]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1471]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1472]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1473]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1475]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1476]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1478]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1479]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1480]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1481]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1482]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1483]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1484]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1486]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1487]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1488]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1531]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1554]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1555]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1556]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1557]" " -type \"float3\" 0 2.56439e-006 0"
		
		3 "Ref:skinCluster6.outputGeometry[0]" "|Ref:medic|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[4539]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[4540]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[4541]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[4542]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[4543]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[4544]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[4545]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis.rotatePivotTranslate" "RefRN.placeHolderList[4546]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[4547]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[4548]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[4549]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[4550]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.translateX" "RefRN.placeHolderList[4551]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.translateY" "RefRN.placeHolderList[4552]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" "RefRN.placeHolderList[4553]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[4554]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[4555]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" "RefRN.placeHolderList[4556]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" "RefRN.placeHolderList[4557]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" "RefRN.placeHolderList[4558]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[4559]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[4560]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[4561]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[4562]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[4563]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[4564]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[4565]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[4566]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[4567]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[4568]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[4569]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[4570]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[4571]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[4572]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.scale" 
		"RefRN.placeHolderList[4573]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotate" 
		"RefRN.placeHolderList[4574]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[4575]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[4576]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[4577]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translate" 
		"RefRN.placeHolderList[4578]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[4579]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[4580]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[4581]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[4582]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[4583]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[4584]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[4585]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentMatrix" 
		"RefRN.placeHolderList[4586]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[4587]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[4588]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[4589]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[4590]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[4591]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[4592]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[4593]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[4594]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[4595]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[4596]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[4597]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[4598]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[4599]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[4600]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[4601]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[4602]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[4603]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[4604]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[4605]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[4606]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[4607]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[4608]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[4609]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[4610]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[4611]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[4612]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[4613]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[4614]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[4615]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[4616]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[4617]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[4618]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[4619]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[4620]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[4621]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[4622]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[4623]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[4624]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[4625]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[4626]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[4627]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[4628]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[4629]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[4630]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[4631]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[4632]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4633]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[4634]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[4635]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[4636]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[4637]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[4638]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[4639]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4640]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[4641]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[4642]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[4643]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[4644]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[4645]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4646]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4647]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[4648]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[4649]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[4650]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[4651]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[4652]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[4653]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[4654]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4655]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[4656]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[4657]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[4658]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[4659]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[4660]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[4661]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[4662]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[4663]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[4664]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[4665]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4666]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[4667]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[4668]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[4669]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4670]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[4671]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[4672]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[4673]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[4674]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[4675]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[4676]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4677]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[4678]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[4679]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[4680]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[4681]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4682]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[4683]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[4684]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[4685]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[4686]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[4687]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4688]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[4689]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[4690]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[4691]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[4692]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4693]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[4694]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[4695]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[4696]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[4697]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[4698]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4699]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[4700]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[4701]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[4702]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[4703]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4704]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[4705]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[4706]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[4707]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[4708]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[4709]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4710]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[4711]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[4712]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[4713]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[4714]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4715]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[4716]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[4717]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[4718]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[4719]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[4720]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4721]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[4722]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[4723]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[4724]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[4725]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4726]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[4727]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[4728]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[4729]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[4730]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[4731]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4732]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[4733]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[4734]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[4735]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[4736]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4737]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[4738]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[4739]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[4740]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[4741]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[4742]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4743]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[4744]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[4745]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[4746]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[4747]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4748]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[4749]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[4750]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[4751]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[4752]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[4753]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4754]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[4755]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[4756]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[4757]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[4758]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4759]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[4760]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[4761]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[4762]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[4763]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[4764]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4765]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[4766]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[4767]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[4768]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[4769]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4770]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[4771]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[4772]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[4773]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[4774]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[4775]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4776]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[4777]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[4778]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[4779]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[4780]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4781]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[4782]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[4783]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[4784]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[4785]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[4786]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4787]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[4788]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[4789]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[4790]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[4791]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4792]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[4793]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[4794]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[4795]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[4796]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[4797]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4798]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[4799]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[4800]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[4801]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[4802]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4803]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[4804]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[4805]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[4806]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[4807]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[4808]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4809]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[4810]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[4811]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[4812]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[4813]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4814]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[4815]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[4816]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[4817]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[4818]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[4819]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4820]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[4821]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[4822]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[4823]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[4824]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4825]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[4826]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[4827]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[4828]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[4829]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[4830]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4831]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[4832]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[4833]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[4834]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[4835]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[4836]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[4837]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[4838]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[4839]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[4840]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[4841]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[4842]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[4843]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[4844]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4845]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[4846]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[4847]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[4848]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[4849]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[4850]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[4851]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4852]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.message" 
		"RefRN.placeHolderList[4853]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[4854]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[4855]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[4856]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[4857]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4858]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4859]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[4860]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[4861]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[4862]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[4863]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[4864]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[4865]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[4866]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4867]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.message" 
		"RefRN.placeHolderList[4868]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[4869]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[4870]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[4871]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[4872]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[4873]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[4874]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[4875]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[4876]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[4877]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4878]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.message" 
		"RefRN.placeHolderList[4879]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[4880]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[4881]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4882]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[4883]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[4884]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[4885]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[4886]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[4887]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[4888]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4889]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[4890]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[4891]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[4892]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[4893]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4894]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[4895]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[4896]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[4897]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[4898]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[4899]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4900]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[4901]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[4902]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[4903]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[4904]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4905]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[4906]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[4907]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[4908]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[4909]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[4910]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4911]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[4912]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[4913]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[4914]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[4915]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4916]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[4917]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[4918]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[4919]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[4920]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[4921]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4922]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[4923]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[4924]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[4925]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[4926]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4927]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[4928]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[4929]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[4930]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[4931]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[4932]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4933]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[4934]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[4935]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[4936]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[4937]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4938]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[4939]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[4940]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[4941]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[4942]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[4943]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4944]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[4945]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[4946]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[4947]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[4948]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4949]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[4950]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[4951]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[4952]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[4953]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[4954]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4955]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[4956]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[4957]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[4958]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[4959]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4960]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[4961]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[4962]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[4963]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[4964]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[4965]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4966]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[4967]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[4968]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[4969]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[4970]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4971]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[4972]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[4973]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[4974]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[4975]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[4976]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4977]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[4978]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[4979]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[4980]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[4981]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4982]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[4983]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[4984]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[4985]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[4986]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[4987]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4988]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[4989]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[4990]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[4991]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[4992]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[4993]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[4994]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[4995]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[4996]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[4997]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[4998]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[4999]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[5000]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[5001]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[5002]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[5003]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5004]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[5005]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[5006]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[5007]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[5008]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[5009]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5010]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[5011]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[5012]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[5013]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[5014]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5015]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[5016]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[5017]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[5018]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[5019]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[5020]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5021]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[5022]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[5023]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[5024]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[5025]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5026]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[5027]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[5028]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[5029]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[5030]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[5031]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5032]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[5033]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[5034]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[5035]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[5036]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5037]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[5038]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[5039]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[5040]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[5041]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[5042]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5043]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[5044]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[5045]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[5046]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[5047]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5048]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[5049]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[5050]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[5051]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[5052]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[5053]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5054]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateZ" 
		"RefRN.placeHolderList[5055]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateX" 
		"RefRN.placeHolderList[5056]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateY" 
		"RefRN.placeHolderList[5057]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.translateX" 
		"RefRN.placeHolderList[5058]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.translateY" 
		"RefRN.placeHolderList[5059]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.translateZ" 
		"RefRN.placeHolderList[5060]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateOrder" 
		"RefRN.placeHolderList[5061]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.parentInverseMatrix" 
		"RefRN.placeHolderList[5062]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotatePivot" 
		"RefRN.placeHolderList[5063]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotatePivotTranslate" 
		"RefRN.placeHolderList[5064]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.jointOrient" 
		"RefRN.placeHolderList[5065]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.scale" "RefRN.placeHolderList[5066]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.message" "RefRN.placeHolderList[5067]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[5068]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[5069]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[5070]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[5071]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[5072]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[5073]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5074]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5075]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5076]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotate" "RefRN.placeHolderList[5077]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" "RefRN.placeHolderList[5078]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" "RefRN.placeHolderList[5079]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" "RefRN.placeHolderList[5080]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" "RefRN.placeHolderList[5081]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" "RefRN.placeHolderList[5082]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[5083]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[5084]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[5085]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" "RefRN.placeHolderList[5086]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" "RefRN.placeHolderList[5087]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5088]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.message" 
		"RefRN.placeHolderList[5089]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[5090]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[5091]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[5092]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[5093]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[5094]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5095]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.message" 
		"RefRN.placeHolderList[5096]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[5097]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[5098]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[5099]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[5100]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[5101]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5102]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[5103]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[5104]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[5105]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[5106]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[5107]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5108]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.scale" "RefRN.placeHolderList[5109]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.message" "RefRN.placeHolderList[5110]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[5111]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[5112]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[5113]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[5114]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[5115]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[5116]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5117]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5118]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5119]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotate" "RefRN.placeHolderList[5120]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" "RefRN.placeHolderList[5121]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" "RefRN.placeHolderList[5122]" 
		""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" "RefRN.placeHolderList[5123]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" "RefRN.placeHolderList[5124]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" "RefRN.placeHolderList[5125]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[5126]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[5127]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[5128]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" "RefRN.placeHolderList[5129]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" "RefRN.placeHolderList[5130]" 
		""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5131]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.message" 
		"RefRN.placeHolderList[5132]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[5133]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[5134]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[5135]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[5136]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[5137]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5138]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.message" 
		"RefRN.placeHolderList[5139]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[5140]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[5141]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[5142]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[5143]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[5144]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5145]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[5146]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[5147]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[5148]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[5149]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[5150]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5151]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.translateX" 
		"RefRN.placeHolderList[5152]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.translateY" 
		"RefRN.placeHolderList[5153]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.translateZ" 
		"RefRN.placeHolderList[5154]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotatePivot" 
		"RefRN.placeHolderList[5155]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5156]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateX" 
		"RefRN.placeHolderList[5157]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateY" 
		"RefRN.placeHolderList[5158]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateZ" 
		"RefRN.placeHolderList[5159]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateOrder" 
		"RefRN.placeHolderList[5160]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.jointOrient" 
		"RefRN.placeHolderList[5161]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5162]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.translateX" 
		"RefRN.placeHolderList[5163]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.translateY" 
		"RefRN.placeHolderList[5164]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.translateZ" 
		"RefRN.placeHolderList[5165]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotatePivot" 
		"RefRN.placeHolderList[5166]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotatePivotTranslate" 
		"RefRN.placeHolderList[5167]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateX" 
		"RefRN.placeHolderList[5168]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateY" 
		"RefRN.placeHolderList[5169]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateZ" 
		"RefRN.placeHolderList[5170]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateOrder" 
		"RefRN.placeHolderList[5171]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.jointOrient" 
		"RefRN.placeHolderList[5172]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_hippouch_0_B.parentInverseMatrix" 
		"RefRN.placeHolderList[5173]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateX" 
		"RefRN.placeHolderList[5174]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateY" 
		"RefRN.placeHolderList[5175]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateZ" 
		"RefRN.placeHolderList[5176]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateX" 
		"RefRN.placeHolderList[5177]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateY" 
		"RefRN.placeHolderList[5178]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateZ" 
		"RefRN.placeHolderList[5179]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateOrder" 
		"RefRN.placeHolderList[5180]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5181]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivot" 
		"RefRN.placeHolderList[5182]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5183]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L.jointOrient" 
		"RefRN.placeHolderList[5184]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.translateX" 
		"RefRN.placeHolderList[5185]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.translateY" 
		"RefRN.placeHolderList[5186]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.translateZ" 
		"RefRN.placeHolderList[5187]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.rotatePivot" 
		"RefRN.placeHolderList[5188]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5189]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.rotateX" 
		"RefRN.placeHolderList[5190]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.rotateY" 
		"RefRN.placeHolderList[5191]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.rotateZ" 
		"RefRN.placeHolderList[5192]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.rotateOrder" 
		"RefRN.placeHolderList[5193]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.jointOrient" 
		"RefRN.placeHolderList[5194]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5195]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.translateX" 
		"RefRN.placeHolderList[5196]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.translateY" 
		"RefRN.placeHolderList[5197]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.translateZ" 
		"RefRN.placeHolderList[5198]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.rotatePivot" 
		"RefRN.placeHolderList[5199]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5200]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.rotateX" 
		"RefRN.placeHolderList[5201]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.rotateY" 
		"RefRN.placeHolderList[5202]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.rotateZ" 
		"RefRN.placeHolderList[5203]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.rotateOrder" 
		"RefRN.placeHolderList[5204]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.jointOrient" 
		"RefRN.placeHolderList[5205]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5206]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateX" 
		"RefRN.placeHolderList[5207]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateY" 
		"RefRN.placeHolderList[5208]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateZ" 
		"RefRN.placeHolderList[5209]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotatePivot" 
		"RefRN.placeHolderList[5210]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5211]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateX" 
		"RefRN.placeHolderList[5212]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateY" 
		"RefRN.placeHolderList[5213]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateZ" 
		"RefRN.placeHolderList[5214]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateOrder" 
		"RefRN.placeHolderList[5215]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.jointOrient" 
		"RefRN.placeHolderList[5216]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5217]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.translateX" 
		"RefRN.placeHolderList[5218]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.translateY" 
		"RefRN.placeHolderList[5219]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.translateZ" 
		"RefRN.placeHolderList[5220]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.rotatePivot" 
		"RefRN.placeHolderList[5221]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5222]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.rotateX" 
		"RefRN.placeHolderList[5223]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.rotateY" 
		"RefRN.placeHolderList[5224]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.rotateZ" 
		"RefRN.placeHolderList[5225]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.rotateOrder" 
		"RefRN.placeHolderList[5226]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.jointOrient" 
		"RefRN.placeHolderList[5227]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5228]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.translateX" 
		"RefRN.placeHolderList[5229]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.translateY" 
		"RefRN.placeHolderList[5230]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.translateZ" 
		"RefRN.placeHolderList[5231]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.rotatePivot" 
		"RefRN.placeHolderList[5232]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5233]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.rotateX" 
		"RefRN.placeHolderList[5234]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.rotateY" 
		"RefRN.placeHolderList[5235]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.rotateZ" 
		"RefRN.placeHolderList[5236]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.rotateOrder" 
		"RefRN.placeHolderList[5237]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.jointOrient" 
		"RefRN.placeHolderList[5238]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5239]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.translateX" 
		"RefRN.placeHolderList[5240]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.translateY" 
		"RefRN.placeHolderList[5241]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.translateZ" 
		"RefRN.placeHolderList[5242]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.rotatePivot" 
		"RefRN.placeHolderList[5243]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.rotatePivotTranslate" 
		"RefRN.placeHolderList[5244]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.rotateX" 
		"RefRN.placeHolderList[5245]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.rotateY" 
		"RefRN.placeHolderList[5246]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.rotateZ" 
		"RefRN.placeHolderList[5247]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.rotateOrder" 
		"RefRN.placeHolderList[5248]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.jointOrient" 
		"RefRN.placeHolderList[5249]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M.parentInverseMatrix" 
		"RefRN.placeHolderList[5250]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.translateX" 
		"RefRN.placeHolderList[5251]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.translateY" 
		"RefRN.placeHolderList[5252]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.translateZ" 
		"RefRN.placeHolderList[5253]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.rotatePivot" 
		"RefRN.placeHolderList[5254]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.rotatePivotTranslate" 
		"RefRN.placeHolderList[5255]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.rotateX" 
		"RefRN.placeHolderList[5256]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.rotateY" 
		"RefRN.placeHolderList[5257]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.rotateZ" 
		"RefRN.placeHolderList[5258]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.rotateOrder" 
		"RefRN.placeHolderList[5259]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.jointOrient" 
		"RefRN.placeHolderList[5260]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M.parentInverseMatrix" 
		"RefRN.placeHolderList[5261]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.translateX" 
		"RefRN.placeHolderList[5262]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.translateY" 
		"RefRN.placeHolderList[5263]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.translateZ" 
		"RefRN.placeHolderList[5264]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.rotatePivot" 
		"RefRN.placeHolderList[5265]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.rotatePivotTranslate" 
		"RefRN.placeHolderList[5266]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.rotateX" 
		"RefRN.placeHolderList[5267]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.rotateY" 
		"RefRN.placeHolderList[5268]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.rotateZ" 
		"RefRN.placeHolderList[5269]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.rotateOrder" 
		"RefRN.placeHolderList[5270]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.jointOrient" 
		"RefRN.placeHolderList[5271]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M.parentInverseMatrix" 
		"RefRN.placeHolderList[5272]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateX" 
		"RefRN.placeHolderList[5273]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateY" 
		"RefRN.placeHolderList[5274]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateZ" 
		"RefRN.placeHolderList[5275]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotatePivot" 
		"RefRN.placeHolderList[5276]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5277]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateX" 
		"RefRN.placeHolderList[5278]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateY" 
		"RefRN.placeHolderList[5279]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateZ" 
		"RefRN.placeHolderList[5280]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateOrder" 
		"RefRN.placeHolderList[5281]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.jointOrient" 
		"RefRN.placeHolderList[5282]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5283]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.translateX" 
		"RefRN.placeHolderList[5284]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.translateY" 
		"RefRN.placeHolderList[5285]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.translateZ" 
		"RefRN.placeHolderList[5286]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.rotatePivot" 
		"RefRN.placeHolderList[5287]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5288]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.rotateX" 
		"RefRN.placeHolderList[5289]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.rotateY" 
		"RefRN.placeHolderList[5290]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.rotateZ" 
		"RefRN.placeHolderList[5291]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.rotateOrder" 
		"RefRN.placeHolderList[5292]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.jointOrient" 
		"RefRN.placeHolderList[5293]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5294]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.translateX" 
		"RefRN.placeHolderList[5295]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.translateY" 
		"RefRN.placeHolderList[5296]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.translateZ" 
		"RefRN.placeHolderList[5297]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.rotatePivot" 
		"RefRN.placeHolderList[5298]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5299]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.rotateX" 
		"RefRN.placeHolderList[5300]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.rotateY" 
		"RefRN.placeHolderList[5301]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.rotateZ" 
		"RefRN.placeHolderList[5302]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.rotateOrder" 
		"RefRN.placeHolderList[5303]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.jointOrient" 
		"RefRN.placeHolderList[5304]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5305]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateX" 
		"RefRN.placeHolderList[5306]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateY" 
		"RefRN.placeHolderList[5307]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateZ" 
		"RefRN.placeHolderList[5308]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateX" 
		"RefRN.placeHolderList[5309]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateY" 
		"RefRN.placeHolderList[5310]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateZ" 
		"RefRN.placeHolderList[5311]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateOrder" 
		"RefRN.placeHolderList[5312]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5313]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivot" 
		"RefRN.placeHolderList[5314]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5315]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R.jointOrient" 
		"RefRN.placeHolderList[5316]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.translateX" 
		"RefRN.placeHolderList[5317]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.translateY" 
		"RefRN.placeHolderList[5318]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.translateZ" 
		"RefRN.placeHolderList[5319]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.rotatePivot" 
		"RefRN.placeHolderList[5320]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5321]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.rotateX" 
		"RefRN.placeHolderList[5322]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.rotateY" 
		"RefRN.placeHolderList[5323]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.rotateZ" 
		"RefRN.placeHolderList[5324]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.rotateOrder" 
		"RefRN.placeHolderList[5325]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.jointOrient" 
		"RefRN.placeHolderList[5326]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5327]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.translateX" 
		"RefRN.placeHolderList[5328]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.translateY" 
		"RefRN.placeHolderList[5329]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.translateZ" 
		"RefRN.placeHolderList[5330]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.rotatePivot" 
		"RefRN.placeHolderList[5331]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5332]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.rotateX" 
		"RefRN.placeHolderList[5333]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.rotateY" 
		"RefRN.placeHolderList[5334]" ""
		5 4 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.rotateZ" 
		"RefRN.placeHolderList[5335]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.rotateOrder" 
		"RefRN.placeHolderList[5336]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.jointOrient" 
		"RefRN.placeHolderList[5337]" ""
		5 3 "RefRN" "|Ref:medic|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5338]" ""
		5 0 "RefRN" "Ref:skinCluster6.outputGeometry[0]" "|Ref:medic|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		"RefRN.placeHolderList[5339]" "RefRN.placeHolderList[5340]" "Ref:body_meshShape.i"
		
		5 1 "RefRN" "Ref:skinCluster6.outputGeometry[0]" "RefRN.placeHolderList[5341]" 
		"Ref:body_meshShape.i";
lockNode;
createNode reference -n "_UNKNOWN_REF_NODE_";
	setAttr -s 625 ".phl";
	setAttr ".phl[0]" -type "double3" -0.61488360213104321 0 0 ;
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
	setAttr ".phl[62]" -type "double3" 0 0 0 ;
	setAttr ".phl[63]" -type "double3" 0 0 0 ;
	setAttr ".phl[64]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".phl[65]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" -type "double3" 3.0704392197127133 0 0 ;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" -type "double3" 0 0 0 ;
	setAttr ".phl[75]" -type "double3" 0 0 0 ;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" -type "double3" -0.066685750879088068 0 0 ;
	setAttr ".phl[81]" -type "matrix" 1 0 0 0 0 -0.99746966224589495 -0.071093409673893215 0
		 0 0.071093409673893215 -0.99746966224589495 0 0 0 0 1;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" -type "double3" 0 0 0 ;
	setAttr ".phl[86]" -type "double3" 0 0 0 ;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" -type "double3" -0.033499989591771848 0 0 ;
	setAttr ".phl[92]" -type "matrix" 1 0 0 0 0 -0.99051521114828456 -0.13740311671817743 0
		 0 0.13740311671817743 -0.99051521114828456 0 0 0 0 1;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" -type "double3" 0 0 0 ;
	setAttr ".phl[97]" -type "double3" 0 0 0 ;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" -type "double3" 0.28890131030356248 0 0 ;
	setAttr ".phl[103]" -type "matrix" 1 0 0 0 0 -0.98535731854750297 -0.17050206680528607 0
		 0 0.17050206680528607 -0.98535731854750297 0 0 0 0 1;
	setAttr ".phl[104]" -type "double3" 0 0 0 ;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" -type "double3" 0 0 0 ;
	setAttr ".phl[109]" -type "double3" 0 0 0 ;
	setAttr ".phl[110]" -type "double3" 0 0 0 ;
	setAttr ".phl[111]" -type "double3" 0 0 0 ;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" -type "matrix" 1 0 0 0 0 -0.9930975274313123 -0.11729152147454788 0
		 0 0.11729152147454788 -0.9930975274313123 0 0 0 0 1;
	setAttr ".phl[117]" -type "double3" 0.091466885484453406 0 0 ;
	setAttr ".phl[118]" -type "matrix" 1 0 0 0 0 -0.99309752743131186 0.11729152147454783 0
		 0 -0.11729152147454783 -0.99309752743131186 0 0 0 0 1;
	setAttr ".phl[119]" -type "double3" 0 -3.4951064070112388 0 ;
	setAttr ".phl[120]" -type "double3" 0 -3.4951064070112388 0 ;
	setAttr ".phl[121]" -type "double3" 0 0 0 ;
	setAttr ".phl[122]" -type "double3" 0 0 0 ;
	setAttr ".phl[123]" -type "double3" 0 0 0 ;
	setAttr ".phl[124]" -type "double3" 0 0 0 ;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" -type "matrix" 1 0 0 0 0 -0.9782328637422717 -0.20751015467825795 0
		 0 0.20751015467825795 -0.9782328637422717 0 0 0 0 1;
	setAttr ".phl[130]" -type "matrix" 1 0 0 0 0 -0.9782328637422717 -0.20751015467825795 0
		 0 0.20751015467825795 -0.9782328637422717 0 0 0 0 1;
	setAttr ".phl[131]" -type "double3" -0.11174517959771674 0 0 ;
	setAttr ".phl[132]" -type "matrix" 1 0 0 0 0 -0.97823286374227125 0.20751015467825787 0
		 0 -0.20751015467825787 -0.97823286374227125 0 0 0 0 1;
	setAttr ".phl[133]" -type "double3" 0 -3.1686859790241999 0 ;
	setAttr ".phl[134]" -type "double3" 0 0 0 ;
	setAttr ".phl[135]" -type "double3" 0 0 0 ;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" -type "matrix" 1 0 0 0 0 -0.99527165796674888 -0.097130463028440472 0
		 0 0.097130463028440472 -0.99527165796674888 0 0 3.4190279496145659 0.7252700711358725 1;
	setAttr ".phl[141]" -type "double3" -0.097283841842359428 0 0 ;
	setAttr ".phl[142]" -type "matrix" 1 0 0 0 0 -0.99527165796674844 0.097130463028440431 0
		 0 -0.097130463028440431 -0.99527165796674844 0 0 3.4733074338776389 0.38974897831981931 1;
	setAttr ".phl[143]" -type "double3" 1.3056311276335917 -1.3189471361414604 -3.2608284407790658 ;
	setAttr ".phl[144]" -type "double3" 0 0 0 ;
	setAttr ".phl[145]" -type "double3" 0 0 0 ;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" -type "matrix" 1 0 0 0 0 -0.9782328637422717 -0.20751015467825795 0
		 0 0.20751015467825795 -0.9782328637422717 0 0 0 0 1;
	setAttr ".phl[151]" -type "double3" -2.7029707392326872 -0.26561048862892378 -1.2808556815464063 ;
	setAttr ".phl[152]" -type "matrix" 1 0 0 0 0 -0.97823286374227125 0.20751015467825787 0
		 0 -0.20751015467825787 -0.97823286374227125 0 0 0 0 1;
	setAttr ".phl[153]" -type "double3" 1.6146174064424201e-008 -8.747576311996351 8.5651485903781577e-011 ;
	setAttr ".phl[154]" -type "double3" 1.6146174064424201e-008 -8.747576311996351 8.5651485903781577e-011 ;
	setAttr ".phl[155]" -type "double3" 0 0 0 ;
	setAttr ".phl[156]" -type "double3" 0 0 0 ;
	setAttr ".phl[157]" -type "double3" 0 0 0 ;
	setAttr ".phl[158]" -type "double3" 0 0 0 ;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" -type "matrix" 0.27586969268349359 0.9590009144860584 -0.064908848962363319 0
		 -0.83567784390779409 0.27266288440111242 0.47675726808480456 0 0.47490889006243642 -0.077279994079772568 0.87663524264924175 0
		 1.3056311276335917 0.61358241998700225 3.463544468028712 1;
	setAttr ".phl[164]" -type "matrix" 0.27586969268349359 0.9590009144860584 -0.064908848962363319 0
		 -0.83567784390779409 0.27266288440111242 0.47675726808480456 0 0.47490889006243642 -0.077279994079772568 0.87663524264924175 0
		 1.3056311276335917 0.61358241998700225 3.463544468028712 1;
	setAttr ".phl[165]" -type "double3" -0.27950942883427737 -0.33071126289257835 -0.82186895086544864 ;
	setAttr ".phl[166]" -type "matrix" 0.27586969268349359 -0.8356778439077942 0.47490889006243664 0
		 0.95900091448605818 0.27266288440111247 -0.077279994079772568 0 -0.064908848962363278 0.47675726808480456 0.87663524264924186 0
		 -0.72379547506868147 -0.72748414523933524 -3.6089033290281782 1;
	setAttr ".phl[167]" -type "double3" 0 0 0 ;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" -type "matrix" 0.910759176691471 0.40358139578219154 -0.087405829615489067 0
		 -0.40494439006381805 0.9143383618128289 0.0023240209281754978 0 0.08085643467353755 0.033277876974507341 0.99617007577820449 0
		 8.6157868439565117 -1.7715569532831918 -0.70692611781496284 1;
	setAttr ".phl[174]" -type "double3" -0.31276466479059145 0 0 ;
	setAttr ".phl[175]" -type "double3" -0.31276466479059145 0 0 ;
	setAttr ".phl[176]" -type "matrix" 0.91075917669147133 -0.40494439006381838 0.080856434673537619 0
		 0.40358139578219149 0.91433836181282913 0.033277876974507369 0 -0.087405829615488997 0.0023240209281755052 0.9961700757782046 0
		 -7.1937289684418397 5.1103599420613968 0.066530492588519854 1;
	setAttr ".phl[177]" -type "double3" 0 -11.535652681714781 0 ;
	setAttr ".phl[178]" -type "double3" 0 0 0 ;
	setAttr ".phl[179]" -type "double3" 0 0 0 ;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" -type "matrix" 0.910759176691471 0.40358139578219154 -0.087405829615489067 0
		 -0.41017788396742522 0.85974136865430262 -0.30430064496880677 0 -0.04766367145194679 0.31299654311657266 0.94855750401375061 0
		 13.795018447690154 -13.465928467507002 -0.73665030447932922 1;
	setAttr ".phl[185]" -type "double3" 0 0 0 ;
	setAttr ".phl[186]" -type "matrix" 0.91075917669147111 -0.41017788396742544 -0.047663671451946804 0
		 0.40358139578219138 0.85974136865430262 0.31299654311657271 0 -0.087405829615488997 -0.30430064496880671 0.94855750401375039 0
		 -7.1937289684418371 17.011464084251028 5.5710654612968691 1;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" -type "double3" 0 0 0 ;
	setAttr ".phl[191]" -type "double3" 0 0 0 ;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" -type "double3" -0.1958146826117296 0.068457405325977272 -0.46759183216199995 ;
	setAttr ".phl[197]" -type "matrix" 0.91075917669147111 -0.41017788396742544 -0.047663671451946804 0
		 0.40358139578219138 0.85974136865430262 0.31299654311657271 0 -0.087405829615488997 -0.30430064496880671 0.94855750401375039 0
		 -7.1937289684418406 28.547116765965807 5.5710654612968691 1;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" -type "double3" 0 0 0 ;
	setAttr ".phl[202]" -type "double3" 0 0 0 ;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" -type "double3" 0.03680954108832165 0 0 ;
	setAttr ".phl[208]" -type "matrix" 0.99880073325622776 0.039489144711449042 0.028943094112080348 0
		 -0.048604908107911127 0.87082723218335756 0.48918043153390178 0 -0.0058871176855940354 -0.49000055014033506 0.87170224429418863 0
		 -19.624698808332845 20.990571167242773 8.4847805658293947 1;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" -type "double3" 0 0 0 ;
	setAttr ".phl[213]" -type "double3" 0 0 0 ;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" -type "double3" -0.30607457970212371 0 0 ;
	setAttr ".phl[219]" -type "matrix" 0.99880073325622765 0.040527536415149279 0.027470239149691676 0
		 -0.048604908107911127 0.88823977963403655 0.4568015507673982 0 -0.0058871176855940354 -0.45758891230863208 0.88914438038912391 0
		 -19.624698808332841 21.2886026204663 7.7065542004994176 1;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" -type "double3" 0 0 0 ;
	setAttr ".phl[224]" -type "double3" 0 0 0 ;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" -type "double3" 1.548563692132094 1.409217470307129 1.1201125425448866 ;
	setAttr ".phl[230]" -type "matrix" 0.91075917669147111 -0.41017788396742544 -0.047663671451946804 0
		 0.40358139578219138 0.85974136865430262 0.31299654311657271 0 -0.087405829615488997 -0.30430064496880671 0.94855750401375039 0
		 -7.1937289684418406 28.547116765965807 5.5710654612968691 1;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" -type "double3" 0 0 0 ;
	setAttr ".phl[235]" -type "double3" 0 0 0 ;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" -type "double3" 0.74241577504705236 0 0 ;
	setAttr ".phl[241]" -type "matrix" 0.051465026772589052 -0.0027398371488521413 0.99867103908729327 0
		 -0.15613691194521048 0.98767685711890374 0.010755958345865589 0 -0.98639374275565517 -0.1564829677764395 0.050403026182636444 0
		 -1.8686034070868549 23.580236840242119 -18.390354383759217 1;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" -type "double3" 0 0 0 ;
	setAttr ".phl[246]" -type "double3" 0 0 0 ;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" -type "double3" -0.033989701731991874 0 0 ;
	setAttr ".phl[252]" -type "matrix" 0.051465026772589066 0.67315263106276235 0.73771057082881564 0
		 -0.15613691194521045 0.73502910390566067 -0.65981321685750993 0 -0.98639374275565528 -0.081226545568069991 0.14293226559307035 0
		 -1.8686034070868551 4.9416368856948312 -29.492591081356416 1;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" -type "double3" 0 0 0 ;
	setAttr ".phl[257]" -type "double3" 0 0 0 ;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" -type "double3" 2.1006684344429378 1.3823351435261808 1.7662901453189974 ;
	setAttr ".phl[263]" -type "matrix" 0.91075917669147111 -0.41017788396742544 -0.047663671451946804 0
		 0.40358139578219138 0.85974136865430262 0.31299654311657271 0 -0.087405829615488997 -0.30430064496880671 0.94855750401375039 0
		 -7.1937289684418406 28.547116765965807 5.5710654612968691 1;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" -type "double3" 0 0 0 ;
	setAttr ".phl[268]" -type "double3" 0 0 0 ;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" -type "double3" 0.92289017544739116 0 0 ;
	setAttr ".phl[274]" -type "matrix" -0.061707078572023635 -0.087420013518961601 0.99425850647125502 0
		 -0.16413949739556388 0.98348296635664212 0.076285518160863014 0 -0.98450518629859807 -0.15848973507039582 -0.07503693776053183 0
		 0.035733371237672611 25.056577844504069 -16.42836000164435 1;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" -type "double3" 0 0 0 ;
	setAttr ".phl[279]" -type "double3" 0 0 0 ;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" -type "double3" 0.23022226077777344 0 0 ;
	setAttr ".phl[285]" -type "matrix" -0.061707078572023663 0.74001167655398936 0.66975738519098116 0
		 -0.16413949739556388 0.65437606939959814 -0.73813967864616536 0 -0.98450518629859829 -0.15548208372956182 0.081085509126327421 0
		 0.035733371237673395 2.0229607383295929 -29.89365711104109 1;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" -type "double3" 0 0 0 ;
	setAttr ".phl[290]" -type "double3" 0 0 0 ;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" -type "double3" 2.2618869357529183 1.3091345175756568 1.9862782999923638 ;
	setAttr ".phl[296]" -type "matrix" 0.91075917669147111 -0.41017788396742544 -0.047663671451946804 0
		 0.40358139578219138 0.85974136865430262 0.31299654311657271 0 -0.087405829615488997 -0.30430064496880671 0.94855750401375039 0
		 -7.1937289684418406 28.547116765965807 5.5710654612968691 1;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" -type "double3" 0 0 0 ;
	setAttr ".phl[301]" -type "double3" 0 0 0 ;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" -type "double3" 0.92300584780587547 0 0 ;
	setAttr ".phl[307]" -type "matrix" -0.14613442656469114 -0.13686629881458276 0.9797511651544013 0
		 -0.14100048513488916 0.983153438406693 0.11631070346628883 0 -0.97916474230046435 -0.12114839164386139 -0.16297077847813921 0
		 2.1261535076400206 25.86137614534838 -14.97975559299605 1;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" -type "double3" 0 0 0 ;
	setAttr ".phl[312]" -type "double3" 0 0 0 ;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" -type "double3" 0.068781662685968692 0 0 ;
	setAttr ".phl[318]" -type "matrix" -0.14613442656469108 0.69868354156099033 0.70034708404076407 0
		 -0.14100048513488914 0.68600868123694014 -0.71380035896550231 0 -0.97916474230046435 -0.20306008475164691 -0.0017347669350981504 0
		 2.1261535076400206 3.6602837641793977 -29.661526874434074 1;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" -type "double3" 0 0 0 ;
	setAttr ".phl[323]" -type "double3" 0 0 0 ;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" -type "double3" 2.3913871704110834 1.1558430551499299 1.9808218754782703 ;
	setAttr ".phl[329]" -type "matrix" 0.91075917669147111 -0.41017788396742544 -0.047663671451946804 0
		 0.40358139578219138 0.85974136865430262 0.31299654311657271 0 -0.087405829615488997 -0.30430064496880671 0.94855750401375039 0
		 -7.1937289684418406 28.547116765965807 5.5710654612968691 1;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" -type "double3" 0 0 0 ;
	setAttr ".phl[334]" -type "double3" 0 0 0 ;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" -type "double3" 0.83939136177749329 0 0 ;
	setAttr ".phl[340]" -type "matrix" -0.25440257913285547 0.017090322162186544 0.96694738668603042 0
		 -0.033420111577638689 0.99909130122682921 -0.026451237306015871 0 -0.9665207829491762 -0.039044752544658938 -0.25360024334774783 0
		 6.612550899761156 23.154027292395504 -17.829458018577352 1;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" -type "double3" 0 0 0 ;
	setAttr ".phl[345]" -type "double3" 0 0 0 ;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" -type "double3" -0.013617842688876561 0 0 ;
	setAttr ".phl[351]" -type "matrix" -0.25440257913285547 0.731052667805004 0.63312030817668252 0
		 -0.033420111577638689 0.64762300348633595 -0.76122765418597049 0 -0.9665207829491762 -0.21481722987349797 -0.14032510066551637 0
		 6.6125508997611551 2.1956057628715544 -29.140656623131424 1;
	setAttr ".phl[352]" -type "double3" -1.30563 -1.3189499195291319 -3.2608275823352866 ;
	setAttr ".phl[353]" -type "double3" 0 0 0 ;
	setAttr ".phl[354]" -type "double3" 0 0 0 ;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" -type "matrix" 1 0 0 0 0 -0.9782328637422717 -0.20751015467825795 0
		 0 0.20751015467825795 -0.9782328637422717 0 0 0 0 1;
	setAttr ".phl[360]" -type "double3" 0.43862191435710574 0.26561048862892378 1.2808556815464063 ;
	setAttr ".phl[361]" -type "matrix" 1 0 0 0 0 -0.97823286374227125 0.20751015467825787 0
		 0 -0.20751015467825787 -0.97823286374227125 0 0 0 0 1;
	setAttr ".phl[362]" -type "double3" -3.8918858525693878e-005 8.7475688768357287 
		4.9475289642941789e-007 ;
	setAttr ".phl[363]" -type "double3" -3.8918858525693878e-005 8.7475688768357287 
		4.9475289642941789e-007 ;
	setAttr ".phl[364]" -type "double3" 0 0 0 ;
	setAttr ".phl[365]" -type "double3" 0 0 0 ;
	setAttr ".phl[366]" -type "double3" 0 0 0 ;
	setAttr ".phl[367]" -type "double3" 0 0 0 ;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" -type "matrix" 0.27586969268349359 -0.95900091448605851 0.064908848962363347 0
		 -0.83567784390779443 -0.27266288440111253 -0.47675726808480434 0 0.4749088900624362 0.077279994079772429 -0.87663524264924197 0
		 -1.3056300000000001 0.61358532092409623 3.4635442058520018 1;
	setAttr ".phl[373]" -type "matrix" 0.27586969268349359 -0.95900091448605851 0.064908848962363347 0
		 -0.83567784390779443 -0.27266288440111253 -0.47675726808480434 0 0.4749088900624362 0.077279994079772429 -0.87663524264924197 0
		 -1.3056300000000001 0.61358532092409623 3.4635442058520018 1;
	setAttr ".phl[374]" -type "double3" -0.27950942883427732 -0.3307112628925778 -0.82186895086544831 ;
	setAttr ".phl[375]" -type "matrix" 0.27586969268349348 -0.83567784390779398 0.47490889006243614 0
		 -0.95900091448605784 -0.27266288440111236 0.077279994079772402 0 0.064908848962363333 -0.47675726808480406 -0.87663524264924175 0
		 0.72379796300766297 0.72748575356096579 3.6089023394872144 1;
	setAttr ".phl[376]" -type "double3" 0 0 0 ;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" -type "matrix" 0.91075917669147133 -0.40358139578219182 0.08740582961548933 0
		 -0.40494439006381838 -0.91433836181282913 -0.0023240209281755048 0 0.080856434673537592 -0.033277876974507535 -0.99617007577820449 0
		 -8.6157900000000005 -1.7715146790759158 -0.70692579414799539 1;
	setAttr ".phl[383]" -type "double3" -0.31276466479059145 0 0 ;
	setAttr ".phl[384]" -type "double3" -0.31276466479059145 0 0 ;
	setAttr ".phl[385]" -type "matrix" 0.91075917669147077 -0.40494439006381833 0.080856434673537814 0
		 -0.40358139578219149 -0.91433836181282868 -0.033277876974507466 0 0.087405829615489081 -0.0023240209281753573 -0.99617007577820438 0
		 7.1937488756306029 -5.1103225664018641 -0.066528508178877857 1;
	setAttr ".phl[386]" -type "double3" -1.9303702735840034e-005 11.535682219505452 
		1.4603536936053096e-005 ;
	setAttr ".phl[387]" -type "double3" 0 0 0 ;
	setAttr ".phl[388]" -type "double3" 0 0 0 ;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" -type "matrix" 0.91075917669147133 -0.40358139578219182 0.08740582961548933 0
		 -0.41017788396742555 -0.85974136865430284 0.30430064496880677 0 -0.047663671451946846 -0.31299654311657288 -0.94855750401375061 0
		 -13.795 -13.465914679075924 -0.73664579414799614 1;
	setAttr ".phl[394]" -type "double3" 0 0 0 ;
	setAttr ".phl[395]" -type "matrix" 0.91075917669147077 -0.41017788396742555 -0.047663671451946617 0
		 -0.40358139578219143 -0.8597413686543024 -0.31299654311657266 0 0.087405829615489067 0.30430064496880682 -0.94855750401375039 0
		 7.1937173375637444 -17.011446035428637 -5.5710559879723309 1;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" -type "double3" 0 0 0 ;
	setAttr ".phl[400]" -type "double3" 0 0 0 ;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" -type "double3" -0.19581468261173104 0.068457405325977119 -0.46759183216200023 ;
	setAttr ".phl[406]" -type "matrix" 0.91075917669147077 -0.41017788396742555 -0.047663671451946617 0
		 -0.40358139578219143 -0.8597413686543024 -0.31299654311657266 0 0.087405829615489067 0.30430064496880682 -0.94855750401375039 0
		 7.1937366412664776 -28.547128254934094 -5.571070591509268 1;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" -type "double3" 0 0 0 ;
	setAttr ".phl[411]" -type "double3" 0 0 0 ;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" -type "double3" 0.036809541088327687 0 0 ;
	setAttr ".phl[417]" -type "matrix" 0.99880073325622698 0.039489144711449084 0.02894309411208049 0
		 0.048604908107911168 -0.87082723218335623 -0.48918043153390289 0 0.0058871176855937752 0.49000055014033628 -0.87170224429418741 0
		 19.624711158796433 -20.990576998862732 -8.4847861017093802 1;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" -type "double3" 0 0 0 ;
	setAttr ".phl[422]" -type "double3" 0 0 0 ;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" -type "double3" -0.30607457970212892 0 0 ;
	setAttr ".phl[428]" -type "matrix" 0.99880073325622698 0.040527536415149494 0.027470239149691576 0
		 0.048604908107911182 -0.88823977963403822 -0.45680155076739409 0 0.0058871176855937761 0.45758891230862808 -0.8891443803891258 0
		 19.624711158796433 -21.288608651863189 -7.7065595180185147 1;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" -type "double3" 0 0 0 ;
	setAttr ".phl[433]" -type "double3" 0 0 0 ;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" -type "double3" 1.5485636921320953 1.409217470307129 1.1201125425448886 ;
	setAttr ".phl[439]" -type "matrix" 0.91075917669147077 -0.41017788396742555 -0.047663671451946617 0
		 -0.40358139578219143 -0.8597413686543024 -0.31299654311657266 0 0.087405829615489067 0.30430064496880682 -0.94855750401375039 0
		 7.1937366412664776 -28.547128254934094 -5.571070591509268 1;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" -type "double3" 0 0 0 ;
	setAttr ".phl[444]" -type "double3" 0 0 0 ;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" -type "double3" 0.74241577504705292 0 0 ;
	setAttr ".phl[450]" -type "matrix" 0.051465026772588733 -0.0027398371488529145 0.99867103908729327 0
		 0.1561369119452107 -0.98767685711890341 -0.010755958345866427 0 0.98639374275565539 0.15648296777643958 -0.050403026182636333 0
		 1.8686073443950046 -23.580244836932152 18.390366119953761 1;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" -type "double3" 0 0 0 ;
	setAttr ".phl[455]" -type "double3" 0 0 0 ;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" -type "double3" -0.033989701731991867 0 0 ;
	setAttr ".phl[461]" -type "matrix" 0.051465026772588754 0.67315263106276235 0.73771057082881575 0
		 0.15613691194521076 -0.73502910390566056 0.65981321685750938 0 0.9863937427556555 0.081226545568070033 -0.14293226559307037 0
		 1.8686073443950044 -4.9416348434676607 29.492605135345965 1;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" -type "double3" 0 0 0 ;
	setAttr ".phl[466]" -type "double3" 0 0 0 ;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" -type "double3" 2.1006684344429405 1.3823351435261806 1.7662901453189999 ;
	setAttr ".phl[472]" -type "matrix" 0.91075917669147077 -0.41017788396742555 -0.047663671451946617 0
		 -0.40358139578219143 -0.8597413686543024 -0.31299654311657266 0 0.087405829615489067 0.30430064496880682 -0.94855750401375039 0
		 7.1937366412664776 -28.547128254934094 -5.571070591509268 1;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" -type "double3" 0 0 0 ;
	setAttr ".phl[477]" -type "double3" 0 0 0 ;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" -type "double3" 0.92289017544738983 0 0 ;
	setAttr ".phl[483]" -type "matrix" -0.061707078572023968 -0.087420013518961268 0.99425850647125491 0
		 0.16413949739556416 -0.9834829663566419 -0.076285518160862709 0 0.98450518629859818 0.15848973507039615 0.075036937760532024 0
		 -0.035730722525481248 -25.056586813442429 16.428371391559981 1;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" -type "double3" 0 0 0 ;
	setAttr ".phl[488]" -type "double3" 0 0 0 ;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" -type "double3" 0.23022226077777502 0 0 ;
	setAttr ".phl[494]" -type "matrix" -0.061707078572023982 0.7400116765539887 0.66975738519098182 0
		 0.16413949739556419 -0.65437606939959869 0.73813967864616459 0 0.98450518629859829 0.15548208372956226 -0.081085509126327379 0
		 -0.0357307225254812 -2.0229570695068224 29.893671136438492 1;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" -type "double3" 0 0 0 ;
	setAttr ".phl[499]" -type "double3" 0 0 0 ;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" -type "double3" 2.2618869357529157 1.3091345175756581 1.9862782999923607 ;
	setAttr ".phl[505]" -type "matrix" 0.91075917669147077 -0.41017788396742555 -0.047663671451946617 0
		 -0.40358139578219143 -0.8597413686543024 -0.31299654311657266 0 0.087405829615489067 0.30430064496880682 -0.94855750401375039 0
		 7.1937366412664776 -28.547128254934094 -5.571070591509268 1;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" -type "double3" 0 0 0 ;
	setAttr ".phl[510]" -type "double3" 0 0 0 ;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" -type "double3" 0.92300584780587558 0 0 ;
	setAttr ".phl[516]" -type "matrix" -0.14613442656469 -0.13686629881458268 0.97975116515440086 0
		 0.14100048513488955 -0.98315343840669256 -0.11631070346628891 0 0.97916474230046435 0.121148391643862 0.16297077847813796 0
		 -2.1261520723826952 -25.861385778374046 14.979766653401208 1;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" -type "double3" 0 0 0 ;
	setAttr ".phl[521]" -type "double3" 0 0 0 ;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" -type "double3" 0.068781662685973521 0 0 ;
	setAttr ".phl[527]" -type "matrix" -0.14613442656469003 0.69868354156099033 0.70034708404076385 0
		 0.14100048513488958 -0.68600868123693981 0.7138003589655022 0 0.97916474230046435 0.2030600847516463 0.0017347669350968725 0
		 -2.1261520723826948 -3.6602807572197049 29.661541230127696 1;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" -type "double3" 0 0 0 ;
	setAttr ".phl[532]" -type "double3" 0 0 0 ;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" -type "double3" 2.3913871704110834 1.1558430551499301 1.9808218754782703 ;
	setAttr ".phl[538]" -type "matrix" 0.91075917669147077 -0.41017788396742555 -0.047663671451946617 0
		 -0.40358139578219143 -0.8597413686543024 -0.31299654311657266 0 0.087405829615489067 0.30430064496880682 -0.94855750401375039 0
		 7.1937366412664776 -28.547128254934094 -5.571070591509268 1;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" -type "double3" 0 0 0 ;
	setAttr ".phl[543]" -type "double3" 0 0 0 ;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" -type "double3" 0.83939136177749407 0 0 ;
	setAttr ".phl[549]" -type "matrix" -0.2544025791328553 0.017090322162186353 0.96694738668603031 0
		 0.033420111577639001 -0.99909130122682877 0.026451237306015521 0 0.96652078294917665 0.039044752544658973 0.25360024334774756 0
		 -6.6125516858277988 -23.154035387614517 17.829470308298166 1;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" -type "double3" 0 0 0 ;
	setAttr ".phl[554]" -type "double3" 0 0 0 ;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" -type "double3" -0.013617842688892868 0 0 ;
	setAttr ".phl[560]" -type "matrix" -0.25440257913285541 0.73105266780500455 0.63312030817668208 0
		 0.033420111577639022 -0.64762300348633539 0.76122765418597049 0 0.96652078294917676 0.21481722987349794 0.14032510066551598 0
		 -6.6125516858278006 -2.1956020233354461 29.140670856391015 1;
	setAttr ".phl[561]" -type "double3" 5.8124405809158732 4.4369142408673454 0.31623554455148151 ;
	setAttr ".phl[562]" -type "double3" 5.8124405809158732 4.4369142408673454 0.31623554455148151 ;
	setAttr ".phl[563]" -type "double3" 0 0 0 ;
	setAttr ".phl[564]" -type "double3" 0 0 0 ;
	setAttr ".phl[565]" -type "double3" 0 0 0 ;
	setAttr ".phl[566]" -type "double3" 0 0 0 ;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" -type "matrix" 1 0 0 0 0 -0.99746966224589517 0.071093409673893229 0
		 0 -0.071093409673893229 -0.99746966224589517 0 0 0 0 1;
	setAttr ".phl[572]" -type "matrix" 1 0 0 0 0 -0.99746966224589517 0.071093409673893229 0
		 0 -0.071093409673893229 -0.99746966224589517 0 0 0 0 1;
	setAttr ".phl[573]" -type "double3" -2.9706628837484055 -0.34007951137812659 -0.025865745760052468 ;
	setAttr ".phl[574]" -type "matrix" 1 0 0 0 0 -0.99746966224589495 -0.071093409673893215 0
		 0 0.071093409673893215 -0.99746966224589495 0 0 0 0 1;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" -type "double3" 0.057314808518485201 0 0 ;
	setAttr ".phl[580]" -type "matrix" 0.94241280419893803 0.03123350990837629 0.33299035172313529 0
		 0.00060589031011461876 0.99546880180378561 -0.095086789472916267 0 -0.33445140062320877 0.08981276353691578 0.938123620919458 0
		 -5.4750233242347495 4.2464711537742685 -2.3584488008806503 1;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" -type "double3" -1.1087252407649804 0.058898395297724969 -0.009678647627764091 ;
	setAttr ".phl[586]" -type "matrix" 0.94241280419893803 0.050257053923361258 0.33065440419392322 0
		 0.00060589031011461182 0.98838730035179079 -0.15195452411899518 0 -0.33445140062320872 0.14340422948519527 0.93143839709716203 0
		 -5.4750233242347495 22.477220430539369 -3.6520179468423044 1;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" -type "double3" -0.61488360213104365 0 0 ;
	setAttr ".phl[592]" -type "matrix" 0.92078526268708638 -0.31862490228905771 0.22501704748654411 0
		 0 0.5768634476885206 0.81684059811012832 0 -0.39006986556035472 -0.75213478470431105 0.53116736121445274 0
		 -5.6649935235740942 22.683662502888019 36.591155579286848 1;
	setAttr ".phl[593]" -type "double3" -5.81244 4.436928207806794 0.31623654002772028 ;
	setAttr ".phl[594]" -type "double3" -5.81244 4.436928207806794 0.31623654002772028 ;
	setAttr ".phl[595]" -type "double3" 0 0 0 ;
	setAttr ".phl[596]" -type "double3" 0 0 0 ;
	setAttr ".phl[597]" -type "double3" 0 0 0 ;
	setAttr ".phl[598]" -type "double3" 0 0 0 ;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" -type "matrix" 1 0 0 0 0 -0.99746966224589517 0.071093409673893229 0
		 0 -0.071093409673893229 -0.99746966224589517 0 0 0 0 1;
	setAttr ".phl[604]" -type "matrix" 1 0 0 0 0 -0.99746966224589517 0.071093409673893229 0
		 0 -0.071093409673893229 -0.99746966224589517 0 0 0 0 1;
	setAttr ".phl[605]" -type "double3" 0.17092976984138672 0.34007951137812636 0.025865745760052451 ;
	setAttr ".phl[606]" -type "matrix" 1 0 0 0 0 -0.99746966224589495 -0.071093409673893215 0
		 0 0.071093409673893215 -0.99746966224589495 0 0 0 0 1;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" -type "double3" 0.057314808518485194 0 0 ;
	setAttr ".phl[612]" -type "matrix" 0.94241280419893814 0.031233509908375947 0.33299035172313524 0
		 -0.00060589031011463307 -0.99546880180378594 0.095086789472915309 0 0.33445140062320861 -0.089812763536914905 -0.93812362091945867 0
		 5.4750227682882917 -4.2464851108409736 2.35844993888169 1;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" -type "double3" -1.1087252407649786 0.058898395297725128 -0.0096786476277638638 ;
	setAttr ".phl[618]" -type "matrix" 0.94241280419893814 0.050257053923360898 0.33065440419392317 0
		 -0.00060589031011463307 -0.98838730035179112 0.15195452411899427 0 0.33445140062320861 -0.14340422948519441 -0.93143839709716258 0
		 5.4750249529296671 -22.477182136109271 3.6520104386749144 1;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" -type "double3" -0.61488360213104321 0 0 ;
	setAttr ".phl[624]" -type "matrix" 0.9207852626870866 -0.31862490228905782 0.2250170474865443 0
		 -1.3877787807814459e-016 -0.5768634476885216 -0.81684059811012866 0 0.39006986556035483 0.75213478470431161 -0.53116736121445374 0
		 5.6649952107605381 -22.683660329951724 -36.591152765626063 1;
	setAttr ".ed" -type "dataReferenceEdits" 
		"_UNKNOWN_REF_NODE_"
		"_UNKNOWN_REF_NODE_" 625
		5 3 "_UNKNOWN_REF_NODE_" "main.main" "_UNKNOWN_REF_NODE_.placeHolderList[0]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "plotted.plotted" "_UNKNOWN_REF_NODE_.placeHolderList[1]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "UpperbodyControl.upperBodyControl" "_UNKNOWN_REF_NODE_.placeHolderList[2]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "PelvisControl.pelvisControl" "_UNKNOWN_REF_NODE_.placeHolderList[3]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0FKcontrol.fkSpine0" "_UNKNOWN_REF_NODE_.placeHolderList[4]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1FKcontrol.fkSpine1" "_UNKNOWN_REF_NODE_.placeHolderList[5]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2FKcontrol.fkSpine2" "_UNKNOWN_REF_NODE_.placeHolderList[6]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3FKcontrol.fkSpine3" "_UNKNOWN_REF_NODE_.placeHolderList[7]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0ik.ikSpine0" "_UNKNOWN_REF_NODE_.placeHolderList[8]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1ik.ikSpine1" "_UNKNOWN_REF_NODE_.placeHolderList[9]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2ik.ikSpine2" "_UNKNOWN_REF_NODE_.placeHolderList[10]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3ik.ikSpine3" "_UNKNOWN_REF_NODE_.placeHolderList[11]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "chestParent.chestParent" "_UNKNOWN_REF_NODE_.placeHolderList[12]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "neckControl.neckControl" "_UNKNOWN_REF_NODE_.placeHolderList[13]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "headControl.headControl" "_UNKNOWN_REF_NODE_.placeHolderList[14]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "lShoulderControl.lFKshoulderControl" "_UNKNOWN_REF_NODE_.placeHolderList[15]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LFK.lFKshoulder" "_UNKNOWN_REF_NODE_.placeHolderList[16]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_LFK.lFKelbow" "_UNKNOWN_REF_NODE_.placeHolderList[17]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_LFK.lFKwrist" "_UNKNOWN_REF_NODE_.placeHolderList[18]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LIK.lIKshoulder" "_UNKNOWN_REF_NODE_.placeHolderList[19]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_LIK.lIKelbow" "_UNKNOWN_REF_NODE_.placeHolderList[20]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_LIK.lIKwrist" "_UNKNOWN_REF_NODE_.placeHolderList[21]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "likHandControl.lIKcontrol" "_UNKNOWN_REF_NODE_.placeHolderList[22]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "likHandControlWeaponGroup.lWeaponAttach" "_UNKNOWN_REF_NODE_.placeHolderList[23]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "lElbowControl.lElbowControl" "_UNKNOWN_REF_NODE_.placeHolderList[24]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LIK.lIKupLeg" "_UNKNOWN_REF_NODE_.placeHolderList[25]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_LIK.lIKknee" "_UNKNOWN_REF_NODE_.placeHolderList[26]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_LIK.lIKankle" "_UNKNOWN_REF_NODE_.placeHolderList[27]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_LIK.lIKtoe" "_UNKNOWN_REF_NODE_.placeHolderList[28]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toeEnd_LIK.lIKtoeEnd" "_UNKNOWN_REF_NODE_.placeHolderList[29]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LFK.lFKupLeg" "_UNKNOWN_REF_NODE_.placeHolderList[30]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_LFK.lFKknee" "_UNKNOWN_REF_NODE_.placeHolderList[31]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_LFK.lFKankle" "_UNKNOWN_REF_NODE_.placeHolderList[32]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_LFK.lFKtoe" "_UNKNOWN_REF_NODE_.placeHolderList[33]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "lkneeControl.lKneeControl" "_UNKNOWN_REF_NODE_.placeHolderList[34]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "lFootControl.lFootControl" "_UNKNOWN_REF_NODE_.placeHolderList[35]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "lToeControl.lToeControl" "_UNKNOWN_REF_NODE_.placeHolderList[36]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rShoulderControl.rFKshoulderControl" "_UNKNOWN_REF_NODE_.placeHolderList[37]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RFK.rFKshoulder" "_UNKNOWN_REF_NODE_.placeHolderList[38]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_RFK.rFKelbow" "_UNKNOWN_REF_NODE_.placeHolderList[39]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_RFK.rFKwrist" "_UNKNOWN_REF_NODE_.placeHolderList[40]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RIK.rIKshoulder" "_UNKNOWN_REF_NODE_.placeHolderList[41]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_RIK.rIKelbow" "_UNKNOWN_REF_NODE_.placeHolderList[42]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_RIK.rIKwrist" "_UNKNOWN_REF_NODE_.placeHolderList[43]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rikHandControl.rIKcontrol" "_UNKNOWN_REF_NODE_.placeHolderList[44]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rikHandControlWeaponGroup.rWeaponAttach" "_UNKNOWN_REF_NODE_.placeHolderList[45]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rElbowControl.rElbowControl" "_UNKNOWN_REF_NODE_.placeHolderList[46]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RIK.rIKupLeg" "_UNKNOWN_REF_NODE_.placeHolderList[47]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_RIK.rIKknee" "_UNKNOWN_REF_NODE_.placeHolderList[48]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_RIK.rIKankle" "_UNKNOWN_REF_NODE_.placeHolderList[49]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_RIK.rIKtoe" "_UNKNOWN_REF_NODE_.placeHolderList[50]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toeEnd_RIK.rIKtoeEnd" "_UNKNOWN_REF_NODE_.placeHolderList[51]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RFK.rFKupLeg" "_UNKNOWN_REF_NODE_.placeHolderList[52]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_RFK.rFKknee" "_UNKNOWN_REF_NODE_.placeHolderList[53]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_RFK.rFKankle" "_UNKNOWN_REF_NODE_.placeHolderList[54]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_RFK.rFKtoe" "_UNKNOWN_REF_NODE_.placeHolderList[55]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rkneeControl.rKneeControl" "_UNKNOWN_REF_NODE_.placeHolderList[56]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rFootControl.rFootControl" "_UNKNOWN_REF_NODE_.placeHolderList[57]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "rToeControl.rToeControl" "_UNKNOWN_REF_NODE_.placeHolderList[58]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_pointConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[59]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_pointConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[60]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_pointConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[61]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_pointConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[62]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_pointConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[63]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[64]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_pointConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[65]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[66]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[67]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[68]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[69]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pelvis_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[70]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[71]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[72]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[73]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[74]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[75]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[76]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[77]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[78]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[79]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[80]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_0_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[81]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[82]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[83]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[84]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[85]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[86]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[87]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[88]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[89]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[90]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[91]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_1_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[92]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[93]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[94]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[95]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[96]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[97]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[98]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[99]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[100]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[101]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[102]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_2_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[103]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "neckControlLockParent_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[104]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[105]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[106]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[107]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "neckControlLockParent_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[108]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[109]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "neckControlLockParent_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[110]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[111]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[112]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[113]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[114]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[115]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "neckControlLockParent_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[116]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[117]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_spine_3_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[118]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControlLockParent_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[119]" ""
		5 4 "_UNKNOWN_REF_NODE_" "neckControl_pointConstraint1.tg[0].tt" "_UNKNOWN_REF_NODE_.placeHolderList[120]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControlLockParent_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[121]" ""
		5 4 "_UNKNOWN_REF_NODE_" "neckControl_pointConstraint1.tg[0].trp" "_UNKNOWN_REF_NODE_.placeHolderList[122]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControlLockParent_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[123]" ""
		5 4 "_UNKNOWN_REF_NODE_" "neckControl_pointConstraint1.tg[0].trt" "_UNKNOWN_REF_NODE_.placeHolderList[124]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_neck_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[125]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_neck_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[126]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_neck_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[127]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_neck_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[128]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControlLockParent_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[129]" ""
		5 4 "_UNKNOWN_REF_NODE_" "neckControl_pointConstraint1.tg[0].tpm" "_UNKNOWN_REF_NODE_.placeHolderList[130]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_neck_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[131]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_neck_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[132]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControl_pointConstraint1.tg[0].tt" "_UNKNOWN_REF_NODE_.placeHolderList[133]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControl_pointConstraint1.tg[0].trp" "_UNKNOWN_REF_NODE_.placeHolderList[134]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControl_pointConstraint1.tg[0].trt" "_UNKNOWN_REF_NODE_.placeHolderList[135]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_head_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[136]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_head_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[137]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_head_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[138]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_head_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[139]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "headControl_pointConstraint1.tg[0].tpm" "_UNKNOWN_REF_NODE_.placeHolderList[140]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_head_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[141]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_head_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[142]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "lShoulderControl_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[143]" ""
		5 4 "_UNKNOWN_REF_NODE_" "lShoulderControl_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[144]" ""
		5 4 "_UNKNOWN_REF_NODE_" "lShoulderControl_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[145]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_L_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[146]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_L_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[147]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_L_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[148]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_L_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[149]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "lShoulderControl_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[150]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_L_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[151]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_L_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[152]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[153]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[154]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[155]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[156]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[157]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[158]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_L_orientConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[159]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_L_orientConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[160]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_L_orientConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[161]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_L_orientConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[162]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[163]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[164]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_L_orientConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[165]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_L_orientConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[166]" ""
		5 4 "_UNKNOWN_REF_NODE_" "likHandControl_orientConstraint1.tg[0].tr" 
		"_UNKNOWN_REF_NODE_.placeHolderList[167]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_L_orientConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[168]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_L_orientConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[169]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_L_orientConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[170]" ""
		5 4 "_UNKNOWN_REF_NODE_" "likHandControl_orientConstraint1.tg[0].tro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[171]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_L_orientConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[172]" ""
		5 4 "_UNKNOWN_REF_NODE_" "likHandControl_orientConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[173]" ""
		5 4 "_UNKNOWN_REF_NODE_" "likHandControl_orientConstraint1.tg[0].tjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[174]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_L_orientConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[175]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_L_orientConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[176]" ""
		5 4 "_UNKNOWN_REF_NODE_" "lHandControl_pointConstraint1.tg[0].tt" "_UNKNOWN_REF_NODE_.placeHolderList[177]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "lHandControl_pointConstraint1.tg[0].trp" "_UNKNOWN_REF_NODE_.placeHolderList[178]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "lHandControl_pointConstraint1.tg[0].trt" "_UNKNOWN_REF_NODE_.placeHolderList[179]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_L_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[180]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_L_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[181]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_L_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[182]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_L_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[183]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "lHandControl_pointConstraint1.tg[0].tpm" "_UNKNOWN_REF_NODE_.placeHolderList[184]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_L_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[185]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_L_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[186]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[187]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[188]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[189]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[190]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[191]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[192]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[193]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[194]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[195]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[196]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[197]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[198]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[199]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[200]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[201]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[202]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[203]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[204]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[205]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[206]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[207]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[208]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[209]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[210]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[211]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[212]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[213]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[214]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[215]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[216]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[217]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[218]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[219]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[220]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[221]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[222]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[223]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[224]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[225]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[226]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[227]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[228]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[229]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[230]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[231]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[232]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[233]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[234]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[235]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[236]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[237]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[238]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[239]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[240]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[241]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[242]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[243]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[244]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[245]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[246]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[247]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[248]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[249]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[250]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[251]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[252]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.ctx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[253]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.cty" 
		"_UNKNOWN_REF_NODE_.placeHolderList[254]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.ctz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[255]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.crp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[256]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.crt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[257]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[258]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[259]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[260]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[261]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[262]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[263]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.ctx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[264]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.cty" 
		"_UNKNOWN_REF_NODE_.placeHolderList[265]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.ctz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[266]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.crp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[267]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.crt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[268]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[269]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[270]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[271]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[272]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[273]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[274]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.ctx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[275]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.cty" 
		"_UNKNOWN_REF_NODE_.placeHolderList[276]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.ctz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[277]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.crp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[278]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.crt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[279]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[280]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[281]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[282]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[283]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[284]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[285]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[286]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[287]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[288]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[289]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[290]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[291]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[292]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[293]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[294]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[295]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_L_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[296]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[297]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[298]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[299]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[300]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[301]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[302]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[303]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[304]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[305]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[306]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_L_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[307]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[308]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[309]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[310]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[311]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[312]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[313]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[314]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[315]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[316]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[317]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_L_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[318]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[319]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[320]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[321]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[322]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[323]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[324]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[325]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[326]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[327]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[328]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[329]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[330]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[331]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[332]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[333]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[334]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[335]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[336]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[337]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[338]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[339]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[340]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[341]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[342]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[343]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[344]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[345]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[346]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[347]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[348]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[349]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[350]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_L_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[351]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rShoulderControl_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[352]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rShoulderControl_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[353]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rShoulderControl_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[354]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_R_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[355]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_R_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[356]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_R_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[357]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_R_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[358]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "rShoulderControl_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[359]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_R_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[360]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_collar_R_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[361]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[362]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[363]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[364]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[365]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[366]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[367]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_R_orientConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[368]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_R_orientConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[369]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_R_orientConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[370]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_R_orientConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[371]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[372]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[373]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_R_orientConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[374]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_upperArm_R_orientConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[375]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rikHandControl_orientConstraint1.tg[0].tr" 
		"_UNKNOWN_REF_NODE_.placeHolderList[376]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_R_orientConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[377]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_R_orientConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[378]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_R_orientConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[379]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rikHandControl_orientConstraint1.tg[0].tro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[380]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_R_orientConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[381]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rikHandControl_orientConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[382]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rikHandControl_orientConstraint1.tg[0].tjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[383]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_R_orientConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[384]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_lowerArm_R_orientConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[385]" ""
		5 4 "_UNKNOWN_REF_NODE_" "rHandControl_pointConstraint1.tg[0].tt" "_UNKNOWN_REF_NODE_.placeHolderList[386]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "rHandControl_pointConstraint1.tg[0].trp" "_UNKNOWN_REF_NODE_.placeHolderList[387]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "rHandControl_pointConstraint1.tg[0].trt" "_UNKNOWN_REF_NODE_.placeHolderList[388]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_R_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[389]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_R_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[390]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_R_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[391]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_R_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[392]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "rHandControl_pointConstraint1.tg[0].tpm" "_UNKNOWN_REF_NODE_.placeHolderList[393]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_R_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[394]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hand_R_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[395]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[396]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[397]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[398]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[399]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[400]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[401]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[402]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[403]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[404]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[405]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_0_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[406]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[407]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[408]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[409]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[410]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[411]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[412]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[413]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[414]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[415]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[416]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_1_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[417]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[418]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[419]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[420]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[421]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[422]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[423]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[424]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[425]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[426]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[427]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_thumb_2_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[428]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[429]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[430]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[431]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[432]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[433]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[434]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[435]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[436]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[437]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[438]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_0_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[439]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[440]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[441]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[442]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[443]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[444]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[445]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[446]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[447]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[448]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[449]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_1_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[450]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[451]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[452]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[453]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[454]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[455]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[456]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[457]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[458]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[459]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[460]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_index_2_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[461]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.ctx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[462]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.cty" 
		"_UNKNOWN_REF_NODE_.placeHolderList[463]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.ctz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[464]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.crp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[465]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.crt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[466]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[467]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[468]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[469]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[470]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[471]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_0_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[472]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.ctx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[473]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.cty" 
		"_UNKNOWN_REF_NODE_.placeHolderList[474]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.ctz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[475]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.crp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[476]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.crt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[477]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[478]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[479]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[480]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[481]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[482]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_1_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[483]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.ctx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[484]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.cty" 
		"_UNKNOWN_REF_NODE_.placeHolderList[485]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.ctz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[486]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.crp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[487]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.crt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[488]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.crx" 
		"_UNKNOWN_REF_NODE_.placeHolderList[489]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.cry" 
		"_UNKNOWN_REF_NODE_.placeHolderList[490]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.crz" 
		"_UNKNOWN_REF_NODE_.placeHolderList[491]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.cro" 
		"_UNKNOWN_REF_NODE_.placeHolderList[492]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.cjo" 
		"_UNKNOWN_REF_NODE_.placeHolderList[493]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_middle_2_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[494]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[495]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[496]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[497]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[498]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[499]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[500]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[501]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[502]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[503]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[504]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_0_R_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[505]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[506]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[507]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[508]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[509]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[510]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[511]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[512]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[513]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[514]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[515]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_1_R_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[516]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[517]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[518]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[519]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[520]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[521]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[522]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[523]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[524]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[525]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[526]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_ring_2_R_parentConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[527]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[528]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[529]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[530]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[531]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[532]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[533]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[534]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[535]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[536]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[537]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_0_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[538]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[539]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[540]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[541]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[542]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[543]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[544]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[545]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[546]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[547]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[548]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_1_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[549]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.ctx" "_UNKNOWN_REF_NODE_.placeHolderList[550]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.cty" "_UNKNOWN_REF_NODE_.placeHolderList[551]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.ctz" "_UNKNOWN_REF_NODE_.placeHolderList[552]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.crp" "_UNKNOWN_REF_NODE_.placeHolderList[553]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.crt" "_UNKNOWN_REF_NODE_.placeHolderList[554]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[555]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[556]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[557]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[558]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[559]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_pinky_2_R_parentConstraint1.cpim" 
		"_UNKNOWN_REF_NODE_.placeHolderList[560]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[561]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[562]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[563]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[564]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[565]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[566]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_L_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[567]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_L_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[568]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_L_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[569]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_L_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[570]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[571]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[572]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_L_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[573]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_L_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[574]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_L_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[575]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_L_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[576]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_L_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[577]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_L_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[578]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_L_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[579]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_L_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[580]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_L_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[581]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_L_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[582]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_L_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[583]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_L_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[584]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_L_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[585]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_L_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[586]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_L_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[587]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_L_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[588]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_L_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[589]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_L_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[590]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_L_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[591]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_L_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[592]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[593]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[594]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[595]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp" 
		"_UNKNOWN_REF_NODE_.placeHolderList[596]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[597]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt" 
		"_UNKNOWN_REF_NODE_.placeHolderList[598]" ""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_R_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[599]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_R_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[600]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_R_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[601]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_R_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[602]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[603]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm" 
		"_UNKNOWN_REF_NODE_.placeHolderList[604]" ""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_R_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[605]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_hip_R_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[606]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_R_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[607]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_R_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[608]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_R_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[609]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_R_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[610]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_R_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[611]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_knee_R_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[612]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_R_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[613]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_R_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[614]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_R_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[615]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_R_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[616]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_R_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[617]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_foot_R_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[618]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_R_orientConstraint1.crx" "_UNKNOWN_REF_NODE_.placeHolderList[619]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_R_orientConstraint1.cry" "_UNKNOWN_REF_NODE_.placeHolderList[620]" 
		""
		5 3 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_R_orientConstraint1.crz" "_UNKNOWN_REF_NODE_.placeHolderList[621]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_R_orientConstraint1.cro" "_UNKNOWN_REF_NODE_.placeHolderList[622]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_R_orientConstraint1.cjo" "_UNKNOWN_REF_NODE_.placeHolderList[623]" 
		""
		5 4 "_UNKNOWN_REF_NODE_" "Ref:bip_toe_R_orientConstraint1.cpim" "_UNKNOWN_REF_NODE_.placeHolderList[624]" 
		"";
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 56 ".dsm";
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
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.9782328637422717 -0.20751015467825767 0
		 0 0.20751015467825767 -0.9782328637422717 0 0 69.961014679075859 -1.5981942058520004 1;
createNode ikSCsolver -n "ikSCsolver";
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
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
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
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 15;
	setAttr ".tol" 0.00155;
createNode objectSet -n "hand_L";
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
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode surfaceShader -n "zooShader_purple";
	setAttr ".oc" -type "float3" 0.69999999 0 1 ;
	setAttr ".ot" -type "float3" 0.64999998 0.64999998 0.64999998 ;
createNode shadingEngine -n "zooShader_purpleSG";
	addAttr -ci true -h true -m -sn "isc" -ln "ignoredShadingConnections" -bt "IGSC" 
		-at "long";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr ".isc[0]"  4194304;
createNode materialInfo -n "materialInfo1";
createNode condition -n "switch_medic_eye_aim_ctrl_to_space_0";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_medic_eye_aim_ctrl_to_space_1";
	addAttr -ci true -sn "zooPrimOut" -ln "zooPrimOut" -min 0 -max 1 -at "bool";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode time -n "medic_eyes_prim";
	addAttr -ci true -sn "zooBrand" -ln "zooBrand" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_primitive" -ln "zooBrand_primitive" -dt "string";
	addAttr -ci true -sn "zooBrand_id" -ln "zooBrand_id" -dt "string";
	addAttr -ci true -sn "zooBrand_char" -ln "zooBrand_char" -dt "string";
	addAttr -ci true -sn "zooCSTinput0" -ln "zooCSTinput0" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCSTinput1" -ln "zooCSTinput1" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooBrand_options" -ln "zooBrand_options" -dt "string";
	addAttr -ci true -sn "zooBrand_version" -ln "zooBrand_version" -dt "string";
	addAttr -ci true -sn "zooCSTcontrol0" -ln "zooCSTcontrol0" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCSTcontrol1" -ln "zooCSTcontrol1" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCSTcontrol2" -ln "zooCSTcontrol2" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCSTcontrol3" -ln "zooCSTcontrol3" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooCSTcontrol4" -ln "zooCSTcontrol4" -min 0 -max 1 -at "bool";
	setAttr ".o" 0;
	setAttr ".zooBrand_primitive" -type "string" "eyes";
	setAttr ".zooBrand_id" -type "string" "0";
	setAttr ".zooBrand_char" -type "string" "medic";
	setAttr ".zooBrand_options" -type "string" " -head headControl -scale 1.5";
	setAttr ".zooBrand_version" -type "string" "5";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :lightList1;
	setAttr -s 2 ".ln";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 87 ".dsm";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -l on ".bfs";
	setAttr -k on ".mbf";
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
	setAttr -s 3 ".sol";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[4539]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[4540]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[4541]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[4542]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[4543]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[4544]";
connectAttr "RefRN.phl[4545]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[4546]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[4547]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[4548]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "RefRN.phl[4549]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[4550]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[4551]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[4552]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[4553]";
connectAttr "RefRN.phl[4554]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[4555]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[4556]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[4557]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[4558]";
connectAttr "RefRN.phl[4559]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[4560]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[4561]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[4562]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[4563]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[4564]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[4565]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[4566]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[4567]";
connectAttr "RefRN.phl[4568]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[4569]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "RefRN.phl[4570]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[4571]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[4572]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "RefRN.phl[4573]" "locator1_parentConstraint1.tg[0].ts";
connectAttr "RefRN.phl[4574]" "locator1_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[4575]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[4576]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[4577]";
connectAttr "RefRN.phl[4578]" "locator1_parentConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[4579]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[4580]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[4581]";
connectAttr "RefRN.phl[4582]" "locator1_parentConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4583]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[4584]" "locator1_parentConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4585]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "RefRN.phl[4586]" "locator1_parentConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4587]" "locator1_parentConstraint1.tg[0].tro";
connectAttr "RefRN.phl[4588]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[4589]" "locator1_parentConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[4590]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[4591]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[4592]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[4593]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[4594]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[4595]";
connectAttr "RefRN.phl[4596]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[4597]" "neckControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[4598]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "RefRN.phl[4599]" "neckControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[4600]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[4601]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[4602]";
connectAttr "RefRN.phl[4603]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[4604]" "neckControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[4605]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[4606]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[4607]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4608]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4609]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4610]" "headControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[4611]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4612]" "headControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[4613]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[4614]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[4615]";
connectAttr "RefRN.phl[4616]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[4617]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4618]" "headControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[4619]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[4620]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[4621]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4622]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4623]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[4624]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[4625]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[4626]";
connectAttr "RefRN.phl[4627]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[4628]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4629]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[4630]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "RefRN.phl[4631]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4632]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4633]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[4634]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[4635]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[4636]";
connectAttr "RefRN.phl[4637]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[4638]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4639]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[4640]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[4641]" "lElbowControl.zooTrig1";
connectAttr "RefRN.phl[4642]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4643]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4644]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4645]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4646]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4647]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4648]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4649]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[4650]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[4651]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[4652]";
connectAttr "RefRN.phl[4653]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[4654]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[4655]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[4656]" "lElbowControl.zooTrig2";
connectAttr "RefRN.phl[4657]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4658]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[4659]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[4660]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[4661]";
connectAttr "RefRN.phl[4662]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[4663]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[4664]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[4665]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[4666]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[4667]" "lElbowControl.zooTrig3";
connectAttr "RefRN.phl[4668]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4669]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4670]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4671]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[4672]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[4673]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[4674]";
connectAttr "RefRN.phl[4675]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[4676]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[4677]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[4678]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[4679]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[4680]";
connectAttr "RefRN.phl[4681]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4682]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[4683]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[4684]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[4685]";
connectAttr "RefRN.phl[4686]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4687]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4688]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[4689]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[4690]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[4691]";
connectAttr "RefRN.phl[4692]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4693]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[4694]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[4695]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[4696]";
connectAttr "RefRN.phl[4697]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4698]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4699]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[4700]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[4701]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[4702]";
connectAttr "RefRN.phl[4703]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4704]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[4705]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[4706]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[4707]";
connectAttr "RefRN.phl[4708]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4709]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4710]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[4711]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[4712]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[4713]";
connectAttr "RefRN.phl[4714]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4715]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[4716]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[4717]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[4718]";
connectAttr "RefRN.phl[4719]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4720]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4721]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[4722]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[4723]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[4724]";
connectAttr "RefRN.phl[4725]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4726]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[4727]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[4728]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[4729]";
connectAttr "RefRN.phl[4730]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4731]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4732]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[4733]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[4734]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[4735]";
connectAttr "RefRN.phl[4736]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4737]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[4738]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[4739]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[4740]";
connectAttr "RefRN.phl[4741]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4742]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4743]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[4744]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[4745]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[4746]";
connectAttr "RefRN.phl[4747]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4748]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[4749]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[4750]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[4751]";
connectAttr "RefRN.phl[4752]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4753]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4754]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[4755]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[4756]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[4757]";
connectAttr "RefRN.phl[4758]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4759]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[4760]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[4761]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[4762]";
connectAttr "RefRN.phl[4763]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4764]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4765]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[4766]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[4767]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[4768]";
connectAttr "RefRN.phl[4769]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4770]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[4771]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[4772]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[4773]";
connectAttr "RefRN.phl[4774]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4775]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4776]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[4777]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[4778]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[4779]";
connectAttr "RefRN.phl[4780]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4781]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[4782]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[4783]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[4784]";
connectAttr "RefRN.phl[4785]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4786]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4787]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[4788]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[4789]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[4790]";
connectAttr "RefRN.phl[4791]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4792]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[4793]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[4794]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[4795]";
connectAttr "RefRN.phl[4796]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4797]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4798]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[4799]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[4800]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[4801]";
connectAttr "RefRN.phl[4802]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4803]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[4804]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[4805]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[4806]";
connectAttr "RefRN.phl[4807]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4808]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4809]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[4810]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[4811]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[4812]";
connectAttr "RefRN.phl[4813]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4814]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[4815]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[4816]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[4817]";
connectAttr "RefRN.phl[4818]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4819]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4820]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[4821]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[4822]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[4823]";
connectAttr "RefRN.phl[4824]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4825]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[4826]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[4827]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[4828]";
connectAttr "RefRN.phl[4829]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4830]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4831]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[4832]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[4833]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[4834]";
connectAttr "RefRN.phl[4835]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[4836]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[4837]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[4838]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[4839]";
connectAttr "RefRN.phl[4840]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[4841]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[4842]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[4843]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4844]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4845]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[4846]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[4847]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[4848]";
connectAttr "RefRN.phl[4849]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[4850]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4851]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[4852]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[4853]" "rElbowControl.zooTrig1";
connectAttr "RefRN.phl[4854]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4855]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4856]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4857]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4858]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4859]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4860]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4861]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[4862]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[4863]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[4864]";
connectAttr "RefRN.phl[4865]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[4866]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[4867]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[4868]" "rElbowControl.zooTrig2";
connectAttr "RefRN.phl[4869]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[4870]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[4871]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[4872]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[4873]";
connectAttr "RefRN.phl[4874]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[4875]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[4876]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[4877]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[4878]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[4879]" "rElbowControl.zooTrig3";
connectAttr "RefRN.phl[4880]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[4881]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[4882]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[4883]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[4884]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[4885]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[4886]";
connectAttr "RefRN.phl[4887]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[4888]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[4889]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[4890]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[4891]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[4892]";
connectAttr "RefRN.phl[4893]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4894]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[4895]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[4896]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[4897]";
connectAttr "RefRN.phl[4898]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4899]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4900]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[4901]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[4902]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[4903]";
connectAttr "RefRN.phl[4904]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4905]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[4906]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[4907]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[4908]";
connectAttr "RefRN.phl[4909]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4910]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4911]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[4912]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[4913]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[4914]";
connectAttr "RefRN.phl[4915]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4916]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[4917]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[4918]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[4919]";
connectAttr "RefRN.phl[4920]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4921]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4922]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[4923]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[4924]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[4925]";
connectAttr "RefRN.phl[4926]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4927]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[4928]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[4929]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[4930]";
connectAttr "RefRN.phl[4931]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4932]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4933]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[4934]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[4935]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[4936]";
connectAttr "RefRN.phl[4937]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4938]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[4939]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[4940]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[4941]";
connectAttr "RefRN.phl[4942]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4943]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4944]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[4945]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[4946]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[4947]";
connectAttr "RefRN.phl[4948]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4949]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[4950]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[4951]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[4952]";
connectAttr "RefRN.phl[4953]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4954]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4955]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[4956]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[4957]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[4958]";
connectAttr "RefRN.phl[4959]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4960]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[4961]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[4962]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[4963]";
connectAttr "RefRN.phl[4964]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4965]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4966]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[4967]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[4968]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[4969]";
connectAttr "RefRN.phl[4970]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4971]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[4972]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[4973]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[4974]";
connectAttr "RefRN.phl[4975]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4976]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4977]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[4978]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[4979]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[4980]";
connectAttr "RefRN.phl[4981]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4982]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[4983]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[4984]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[4985]";
connectAttr "RefRN.phl[4986]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4987]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4988]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[4989]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[4990]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[4991]";
connectAttr "RefRN.phl[4992]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[4993]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[4994]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[4995]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[4996]";
connectAttr "RefRN.phl[4997]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[4998]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[4999]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[5000]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[5001]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[5002]";
connectAttr "RefRN.phl[5003]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5004]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[5005]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[5006]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[5007]";
connectAttr "RefRN.phl[5008]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5009]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5010]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[5011]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[5012]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[5013]";
connectAttr "RefRN.phl[5014]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5015]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[5016]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[5017]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[5018]";
connectAttr "RefRN.phl[5019]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5020]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5021]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[5022]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[5023]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[5024]";
connectAttr "RefRN.phl[5025]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5026]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[5027]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[5028]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[5029]";
connectAttr "RefRN.phl[5030]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5031]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5032]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[5033]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[5034]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[5035]";
connectAttr "RefRN.phl[5036]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5037]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[5038]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[5039]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[5040]";
connectAttr "RefRN.phl[5041]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5042]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5043]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[5044]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[5045]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[5046]";
connectAttr "RefRN.phl[5047]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5048]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[5049]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[5050]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[5051]";
connectAttr "RefRN.phl[5052]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5053]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5054]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_backpack_parentConstraint1.crz" "RefRN.phl[5055]";
connectAttr "Ref:prp_backpack_parentConstraint1.crx" "RefRN.phl[5056]";
connectAttr "Ref:prp_backpack_parentConstraint1.cry" "RefRN.phl[5057]";
connectAttr "Ref:prp_backpack_parentConstraint1.ctx" "RefRN.phl[5058]";
connectAttr "Ref:prp_backpack_parentConstraint1.cty" "RefRN.phl[5059]";
connectAttr "Ref:prp_backpack_parentConstraint1.ctz" "RefRN.phl[5060]";
connectAttr "RefRN.phl[5061]" "Ref:prp_backpack_parentConstraint1.cro";
connectAttr "RefRN.phl[5062]" "Ref:prp_backpack_parentConstraint1.cpim";
connectAttr "RefRN.phl[5063]" "Ref:prp_backpack_parentConstraint1.crp";
connectAttr "RefRN.phl[5064]" "Ref:prp_backpack_parentConstraint1.crt";
connectAttr "RefRN.phl[5065]" "Ref:prp_backpack_parentConstraint1.cjo";
connectAttr "RefRN.phl[5066]" "locatorKneeL_parentConstraint1.tg[0].ts";
connectAttr "RefRN.phl[5067]" "lkneeControl.zooTrig1";
connectAttr "RefRN.phl[5068]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5069]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5070]" "locatorKneeL_parentConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5071]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5072]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5073]" "locatorKneeL_parentConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5074]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5075]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5076]" "locatorKneeL_parentConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5077]" "locatorKneeL_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[5078]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[5079]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[5080]";
connectAttr "RefRN.phl[5081]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5082]" "locatorKneeL_parentConstraint1.tg[0].tro";
connectAttr "RefRN.phl[5083]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5084]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5085]" "locatorKneeL_parentConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5086]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5087]" "locatorKneeL_parentConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[5088]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5089]" "lkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[5090]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[5091]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[5092]";
connectAttr "RefRN.phl[5093]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5094]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5095]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5096]" "lkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[5097]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[5098]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[5099]";
connectAttr "RefRN.phl[5100]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5101]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5102]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[5103]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[5104]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[5105]";
connectAttr "RefRN.phl[5106]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5107]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5108]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5109]" "locatorKneeR_parentConstraint1.tg[0].ts";
connectAttr "RefRN.phl[5110]" "rkneeControl.zooTrig1";
connectAttr "RefRN.phl[5111]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5112]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5113]" "locatorKneeR_parentConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5114]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5115]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5116]" "locatorKneeR_parentConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5117]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5118]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5119]" "locatorKneeR_parentConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5120]" "locatorKneeR_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[5121]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[5122]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[5123]";
connectAttr "RefRN.phl[5124]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5125]" "locatorKneeR_parentConstraint1.tg[0].tro";
connectAttr "RefRN.phl[5126]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5127]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5128]" "locatorKneeR_parentConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5129]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5130]" "locatorKneeR_parentConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[5131]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5132]" "rkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[5133]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[5134]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[5135]";
connectAttr "RefRN.phl[5136]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5137]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5138]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5139]" "rkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[5140]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[5141]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[5142]";
connectAttr "RefRN.phl[5143]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5144]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5145]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[5146]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[5147]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[5148]";
connectAttr "RefRN.phl[5149]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5150]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5151]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.ctx" "RefRN.phl[5152]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.cty" "RefRN.phl[5153]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.ctz" "RefRN.phl[5154]";
connectAttr "RefRN.phl[5155]" "Ref:prp_hippouch_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5156]" "Ref:prp_hippouch_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.crx" "RefRN.phl[5157]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.cry" "RefRN.phl[5158]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.crz" "RefRN.phl[5159]";
connectAttr "RefRN.phl[5160]" "Ref:prp_hippouch_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5161]" "Ref:prp_hippouch_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5162]" "Ref:prp_hippouch_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.ctx" "RefRN.phl[5163]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.cty" "RefRN.phl[5164]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.ctz" "RefRN.phl[5165]";
connectAttr "RefRN.phl[5166]" "Ref:prp_hippouch_0_B_parentConstraint1.crp";
connectAttr "RefRN.phl[5167]" "Ref:prp_hippouch_0_B_parentConstraint1.crt";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.crx" "RefRN.phl[5168]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.cry" "RefRN.phl[5169]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.crz" "RefRN.phl[5170]";
connectAttr "RefRN.phl[5171]" "Ref:prp_hippouch_0_B_parentConstraint1.cro";
connectAttr "RefRN.phl[5172]" "Ref:prp_hippouch_0_B_parentConstraint1.cjo";
connectAttr "RefRN.phl[5173]" "Ref:prp_hippouch_0_B_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctx" "RefRN.phl[5174]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cty" "RefRN.phl[5175]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctz" "RefRN.phl[5176]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crx" "RefRN.phl[5177]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cry" "RefRN.phl[5178]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crz" "RefRN.phl[5179]";
connectAttr "RefRN.phl[5180]" "Ref:prp_coat_front_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5181]" "Ref:prp_coat_front_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[5182]" "Ref:prp_coat_front_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5183]" "Ref:prp_coat_front_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[5184]" "Ref:prp_coat_front_0_L_parentConstraint1.cjo";
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.ctx" "RefRN.phl[5185]";
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.cty" "RefRN.phl[5186]";
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.ctz" "RefRN.phl[5187]";
connectAttr "RefRN.phl[5188]" "Ref:prp_coat_front_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5189]" "Ref:prp_coat_front_1_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.crx" "RefRN.phl[5190]";
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.cry" "RefRN.phl[5191]";
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.crz" "RefRN.phl[5192]";
connectAttr "RefRN.phl[5193]" "Ref:prp_coat_front_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5194]" "Ref:prp_coat_front_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5195]" "Ref:prp_coat_front_1_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.ctx" "RefRN.phl[5196]";
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.cty" "RefRN.phl[5197]";
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.ctz" "RefRN.phl[5198]";
connectAttr "RefRN.phl[5199]" "Ref:prp_coat_front_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5200]" "Ref:prp_coat_front_2_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.crx" "RefRN.phl[5201]";
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.cry" "RefRN.phl[5202]";
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.crz" "RefRN.phl[5203]";
connectAttr "RefRN.phl[5204]" "Ref:prp_coat_front_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5205]" "Ref:prp_coat_front_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5206]" "Ref:prp_coat_front_2_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.ctx" "RefRN.phl[5207]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.cty" "RefRN.phl[5208]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.ctz" "RefRN.phl[5209]";
connectAttr "RefRN.phl[5210]" "Ref:prp_coat_back_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5211]" "Ref:prp_coat_back_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.crx" "RefRN.phl[5212]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.cry" "RefRN.phl[5213]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.crz" "RefRN.phl[5214]";
connectAttr "RefRN.phl[5215]" "Ref:prp_coat_back_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5216]" "Ref:prp_coat_back_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5217]" "Ref:prp_coat_back_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.ctx" "RefRN.phl[5218]";
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.cty" "RefRN.phl[5219]";
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.ctz" "RefRN.phl[5220]";
connectAttr "RefRN.phl[5221]" "Ref:prp_coat_back_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5222]" "Ref:prp_coat_back_1_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.crx" "RefRN.phl[5223]";
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.cry" "RefRN.phl[5224]";
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.crz" "RefRN.phl[5225]";
connectAttr "RefRN.phl[5226]" "Ref:prp_coat_back_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5227]" "Ref:prp_coat_back_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5228]" "Ref:prp_coat_back_1_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.ctx" "RefRN.phl[5229]";
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.cty" "RefRN.phl[5230]";
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.ctz" "RefRN.phl[5231]";
connectAttr "RefRN.phl[5232]" "Ref:prp_coat_back_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5233]" "Ref:prp_coat_back_2_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.crx" "RefRN.phl[5234]";
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.cry" "RefRN.phl[5235]";
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.crz" "RefRN.phl[5236]";
connectAttr "RefRN.phl[5237]" "Ref:prp_coat_back_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5238]" "Ref:prp_coat_back_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5239]" "Ref:prp_coat_back_2_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.ctx" "RefRN.phl[5240]";
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.cty" "RefRN.phl[5241]";
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.ctz" "RefRN.phl[5242]";
connectAttr "RefRN.phl[5243]" "Ref:prp_coat_back_0_M_parentConstraint1.crp";
connectAttr "RefRN.phl[5244]" "Ref:prp_coat_back_0_M_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.crx" "RefRN.phl[5245]";
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.cry" "RefRN.phl[5246]";
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.crz" "RefRN.phl[5247]";
connectAttr "RefRN.phl[5248]" "Ref:prp_coat_back_0_M_parentConstraint1.cro";
connectAttr "RefRN.phl[5249]" "Ref:prp_coat_back_0_M_parentConstraint1.cjo";
connectAttr "RefRN.phl[5250]" "Ref:prp_coat_back_0_M_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.ctx" "RefRN.phl[5251]";
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.cty" "RefRN.phl[5252]";
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.ctz" "RefRN.phl[5253]";
connectAttr "RefRN.phl[5254]" "Ref:prp_coat_back_1_M_parentConstraint1.crp";
connectAttr "RefRN.phl[5255]" "Ref:prp_coat_back_1_M_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.crx" "RefRN.phl[5256]";
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.cry" "RefRN.phl[5257]";
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.crz" "RefRN.phl[5258]";
connectAttr "RefRN.phl[5259]" "Ref:prp_coat_back_1_M_parentConstraint1.cro";
connectAttr "RefRN.phl[5260]" "Ref:prp_coat_back_1_M_parentConstraint1.cjo";
connectAttr "RefRN.phl[5261]" "Ref:prp_coat_back_1_M_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.ctx" "RefRN.phl[5262]";
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.cty" "RefRN.phl[5263]";
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.ctz" "RefRN.phl[5264]";
connectAttr "RefRN.phl[5265]" "Ref:prp_coat_back_2_M_parentConstraint1.crp";
connectAttr "RefRN.phl[5266]" "Ref:prp_coat_back_2_M_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.crx" "RefRN.phl[5267]";
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.cry" "RefRN.phl[5268]";
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.crz" "RefRN.phl[5269]";
connectAttr "RefRN.phl[5270]" "Ref:prp_coat_back_2_M_parentConstraint1.cro";
connectAttr "RefRN.phl[5271]" "Ref:prp_coat_back_2_M_parentConstraint1.cjo";
connectAttr "RefRN.phl[5272]" "Ref:prp_coat_back_2_M_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.ctx" "RefRN.phl[5273]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.cty" "RefRN.phl[5274]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.ctz" "RefRN.phl[5275]";
connectAttr "RefRN.phl[5276]" "Ref:prp_coat_back_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5277]" "Ref:prp_coat_back_0_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.crx" "RefRN.phl[5278]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.cry" "RefRN.phl[5279]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.crz" "RefRN.phl[5280]";
connectAttr "RefRN.phl[5281]" "Ref:prp_coat_back_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5282]" "Ref:prp_coat_back_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5283]" "Ref:prp_coat_back_0_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.ctx" "RefRN.phl[5284]";
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.cty" "RefRN.phl[5285]";
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.ctz" "RefRN.phl[5286]";
connectAttr "RefRN.phl[5287]" "Ref:prp_coat_back_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5288]" "Ref:prp_coat_back_1_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.crx" "RefRN.phl[5289]";
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.cry" "RefRN.phl[5290]";
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.crz" "RefRN.phl[5291]";
connectAttr "RefRN.phl[5292]" "Ref:prp_coat_back_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5293]" "Ref:prp_coat_back_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5294]" "Ref:prp_coat_back_1_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.ctx" "RefRN.phl[5295]";
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.cty" "RefRN.phl[5296]";
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.ctz" "RefRN.phl[5297]";
connectAttr "RefRN.phl[5298]" "Ref:prp_coat_back_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5299]" "Ref:prp_coat_back_2_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.crx" "RefRN.phl[5300]";
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.cry" "RefRN.phl[5301]";
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.crz" "RefRN.phl[5302]";
connectAttr "RefRN.phl[5303]" "Ref:prp_coat_back_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5304]" "Ref:prp_coat_back_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5305]" "Ref:prp_coat_back_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctx" "RefRN.phl[5306]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cty" "RefRN.phl[5307]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctz" "RefRN.phl[5308]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crx" "RefRN.phl[5309]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cry" "RefRN.phl[5310]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crz" "RefRN.phl[5311]";
connectAttr "RefRN.phl[5312]" "Ref:prp_coat_front_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5313]" "Ref:prp_coat_front_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[5314]" "Ref:prp_coat_front_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5315]" "Ref:prp_coat_front_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[5316]" "Ref:prp_coat_front_0_R_parentConstraint1.cjo";
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.ctx" "RefRN.phl[5317]";
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.cty" "RefRN.phl[5318]";
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.ctz" "RefRN.phl[5319]";
connectAttr "RefRN.phl[5320]" "Ref:prp_coat_front_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5321]" "Ref:prp_coat_front_1_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.crx" "RefRN.phl[5322]";
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.cry" "RefRN.phl[5323]";
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.crz" "RefRN.phl[5324]";
connectAttr "RefRN.phl[5325]" "Ref:prp_coat_front_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5326]" "Ref:prp_coat_front_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5327]" "Ref:prp_coat_front_1_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.ctx" "RefRN.phl[5328]";
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.cty" "RefRN.phl[5329]";
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.ctz" "RefRN.phl[5330]";
connectAttr "RefRN.phl[5331]" "Ref:prp_coat_front_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5332]" "Ref:prp_coat_front_2_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.crx" "RefRN.phl[5333]";
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.cry" "RefRN.phl[5334]";
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.crz" "RefRN.phl[5335]";
connectAttr "RefRN.phl[5336]" "Ref:prp_coat_front_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5337]" "Ref:prp_coat_front_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5338]" "Ref:prp_coat_front_2_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[5339]" "RefRN.phl[5340]";
connectAttr "RefRN.phl[5341]" "RefRN.phl[2753]";
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
connectAttr "control_coatFront0L_0.s" "control_coatFront0L_1.is";
connectAttr "control_coatFront0L_1.tx" "effector10.tx";
connectAttr "control_coatFront0L_1.ty" "effector10.ty";
connectAttr "control_coatFront0L_1.tz" "effector10.tz";
connectAttr "control_coatFront0L_0.msg" "ikHandle1.hsj";
connectAttr "effector10.hp" "ikHandle1.hee";
connectAttr "ikSCsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_pointConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "coatLControl.t" "ikHandle1_pointConstraint1.tg[0].tt";
connectAttr "coatLControl.rp" "ikHandle1_pointConstraint1.tg[0].trp";
connectAttr "coatLControl.rpt" "ikHandle1_pointConstraint1.tg[0].trt";
connectAttr "coatLControl.pm" "ikHandle1_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeL_parentConstraint1.ctx" "locatorKneeL.tx";
connectAttr "locatorKneeL_parentConstraint1.cty" "locatorKneeL.ty";
connectAttr "locatorKneeL_parentConstraint1.ctz" "locatorKneeL.tz";
connectAttr "locatorKneeL_parentConstraint1.crx" "locatorKneeL.rx";
connectAttr "locatorKneeL_parentConstraint1.cry" "locatorKneeL.ry";
connectAttr "locatorKneeL_parentConstraint1.crz" "locatorKneeL.rz";
connectAttr "locatorKneeL_parentConstraint1.w0" "locatorKneeL_parentConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeL.ro" "locatorKneeL_parentConstraint1.cro";
connectAttr "locatorKneeL.pim" "locatorKneeL_parentConstraint1.cpim";
connectAttr "locatorKneeL.rp" "locatorKneeL_parentConstraint1.crp";
connectAttr "locatorKneeL.rpt" "locatorKneeL_parentConstraint1.crt";
connectAttr "control_coatFront0R_0.s" "control_coatFront0R_1.is";
connectAttr "control_coatFront0R_1.tx" "effector11.tx";
connectAttr "control_coatFront0R_1.ty" "effector11.ty";
connectAttr "control_coatFront0R_1.tz" "effector11.tz";
connectAttr "control_coatFront0R_0.msg" "ikHandle2.hsj";
connectAttr "effector11.hp" "ikHandle2.hee";
connectAttr "ikSCsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_pointConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_pointConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_pointConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "coatRControl.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "coatRControl.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "coatRControl.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "coatRControl.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeR_parentConstraint1.ctx" "locatorKneeR.tx";
connectAttr "locatorKneeR_parentConstraint1.cty" "locatorKneeR.ty";
connectAttr "locatorKneeR_parentConstraint1.ctz" "locatorKneeR.tz";
connectAttr "locatorKneeR_parentConstraint1.crx" "locatorKneeR.rx";
connectAttr "locatorKneeR_parentConstraint1.cry" "locatorKneeR.ry";
connectAttr "locatorKneeR_parentConstraint1.crz" "locatorKneeR.rz";
connectAttr "locatorKneeR_parentConstraint1.w0" "locatorKneeR_parentConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeR.ro" "locatorKneeR_parentConstraint1.cro";
connectAttr "locatorKneeR.pim" "locatorKneeR_parentConstraint1.cpim";
connectAttr "locatorKneeR.rp" "locatorKneeR_parentConstraint1.crp";
connectAttr "locatorKneeR.rpt" "locatorKneeR_parentConstraint1.crt";
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
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tpm"
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
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tpm"
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
connectAttr "poleVectorGroup_pointConstraint1.ctx" "poleVectorGroup.tx";
connectAttr "poleVectorGroup_pointConstraint1.cty" "poleVectorGroup.ty";
connectAttr "poleVectorGroup_pointConstraint1.ctz" "poleVectorGroup.tz";
connectAttr "rkneeControlvisExp.out[0]" "rkneeControl.v" -l on;
connectAttr "lkneeControlvisExp.out[0]" "lkneeControl.v" -l on;
connectAttr "lElbowControlvisExp.out[0]" "lElbowControl.v" -l on;
connectAttr "rElbowControlvisExp.out[0]" "rElbowControl.v" -l on;
connectAttr "poleVectorGroup.pim" "poleVectorGroup_pointConstraint1.cpim";
connectAttr "poleVectorGroup.rp" "poleVectorGroup_pointConstraint1.crp";
connectAttr "poleVectorGroup.rpt" "poleVectorGroup_pointConstraint1.crt";
connectAttr "UpperbodyControl.t" "poleVectorGroup_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "poleVectorGroup_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "poleVectorGroup_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "poleVectorGroup_pointConstraint1.tg[0].tpm";
connectAttr "poleVectorGroup_pointConstraint1.w0" "poleVectorGroup_pointConstraint1.tg[0].tw"
		;
connectAttr "locator1_parentConstraint1.ctx" "locator1.tx";
connectAttr "locator1_parentConstraint1.cty" "locator1.ty";
connectAttr "locator1_parentConstraint1.ctz" "locator1.tz";
connectAttr "locator1_parentConstraint1.crx" "locator1.rx";
connectAttr "locator1_parentConstraint1.cry" "locator1.ry";
connectAttr "locator1_parentConstraint1.crz" "locator1.rz";
connectAttr "locator1_parentConstraint1.w0" "locator1_parentConstraint1.tg[0].tw"
		;
connectAttr "locator1.ro" "locator1_parentConstraint1.cro";
connectAttr "locator1.pim" "locator1_parentConstraint1.cpim";
connectAttr "locator1.rp" "locator1_parentConstraint1.crp";
connectAttr "locator1.rpt" "locator1_parentConstraint1.crt";
connectAttr "RefRN.phl[147]" "Ref:prp_glasses_parentConstraint1.crp";
connectAttr "RefRN.phl[148]" "Ref:prp_glasses_parentConstraint1.crt";
connectAttr "RefRN.phl[152]" "Ref:prp_glasses_parentConstraint1.cro";
connectAttr "RefRN.phl[153]" "Ref:prp_glasses_parentConstraint1.cjo";
connectAttr "RefRN.phl[154]" "Ref:prp_glasses_parentConstraint1.cpim";
connectAttr "Ref:prp_glassesControl.t" "Ref:prp_glasses_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_glassesControl.rp" "Ref:prp_glasses_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_glassesControl.rpt" "Ref:prp_glasses_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_glassesControl.r" "Ref:prp_glasses_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_glassesControl.ro" "Ref:prp_glasses_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_glassesControl.s" "Ref:prp_glasses_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_glassesControl.pm" "Ref:prp_glasses_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_glasses_parentConstraint1.w0" "Ref:prp_glasses_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsCircle1_pointConstraint1.ctx" "nurbsCircle1.tx";
connectAttr "nurbsCircle1_pointConstraint1.cty" "nurbsCircle1.ty";
connectAttr "nurbsCircle1_pointConstraint1.ctz" "nurbsCircle1.tz";
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
connectAttr "nurbsCircle1.pim" "nurbsCircle1_pointConstraint1.cpim";
connectAttr "nurbsCircle1.rp" "nurbsCircle1_pointConstraint1.crp";
connectAttr "nurbsCircle1.rpt" "nurbsCircle1_pointConstraint1.crt";
connectAttr "UpperbodyControl.t" "nurbsCircle1_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "nurbsCircle1_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "nurbsCircle1_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "nurbsCircle1_pointConstraint1.tg[0].tpm";
connectAttr "nurbsCircle1_pointConstraint1.w0" "nurbsCircle1_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.ctx" "Ref:prp_coat_front_1_LControlZeroGroup.tx"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.cty" "Ref:prp_coat_front_1_LControlZeroGroup.ty"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.ctz" "Ref:prp_coat_front_1_LControlZeroGroup.tz"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup.ro" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup.pim" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup.rp" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup.rpt" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "PelvisControl.t" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "PelvisControl.rp" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "PelvisControl.rpt" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "PelvisControl.r" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "PelvisControl.ro" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "PelvisControl.s" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "PelvisControl.pm" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.w0" "Ref:prp_coat_front_1_LControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.ctx" "Ref:prp_coat_front_1_RControlZeroGroup.tx"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.cty" "Ref:prp_coat_front_1_RControlZeroGroup.ty"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.ctz" "Ref:prp_coat_front_1_RControlZeroGroup.tz"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup.ro" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup.pim" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup.rp" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup.rpt" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "PelvisControl.t" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "PelvisControl.rp" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "PelvisControl.rpt" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "PelvisControl.r" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "PelvisControl.ro" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "PelvisControl.s" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "PelvisControl.pm" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.w0" "Ref:prp_coat_front_1_RControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.ctx" "Ref:prp_coat_back_0_LControlZeroGroup.tx"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.cty" "Ref:prp_coat_back_0_LControlZeroGroup.ty"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.ctz" "Ref:prp_coat_back_0_LControlZeroGroup.tz"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup.ro" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup.pim" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup.rp" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup.rpt" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "PelvisControl.t" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "PelvisControl.rp" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "PelvisControl.rpt" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "PelvisControl.r" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "PelvisControl.ro" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "PelvisControl.s" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "PelvisControl.pm" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.w0" "Ref:prp_coat_back_0_LControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.ctx" "Ref:prp_coat_back_0_MControlZeroGroup.tx"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.cty" "Ref:prp_coat_back_0_MControlZeroGroup.ty"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.ctz" "Ref:prp_coat_back_0_MControlZeroGroup.tz"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup.ro" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup.pim" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup.rp" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup.rpt" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "PelvisControl.t" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "PelvisControl.rp" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "PelvisControl.rpt" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "PelvisControl.r" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "PelvisControl.ro" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "PelvisControl.s" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "PelvisControl.pm" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.w0" "Ref:prp_coat_back_0_MControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.ctx" "Ref:prp_coat_back_0_RControlZeroGroup.tx"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.cty" "Ref:prp_coat_back_0_RControlZeroGroup.ty"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.ctz" "Ref:prp_coat_back_0_RControlZeroGroup.tz"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup.ro" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup.pim" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup.rp" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup.rpt" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "PelvisControl.t" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "PelvisControl.rp" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "PelvisControl.rpt" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "PelvisControl.r" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "PelvisControl.ro" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "PelvisControl.s" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "PelvisControl.pm" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.w0" "Ref:prp_coat_back_0_RControlZeroGroup_parentConstraint1.tg[0].tw"
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
connectAttr "control_coatFront0R_0.t" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "control_coatFront0R_0.rp" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "control_coatFront0R_0.rpt" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "control_coatFront0R_0.r" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "control_coatFront0R_0.ro" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "control_coatFront0R_0.s" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "control_coatFront0R_0.pm" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "control_coatFront0R_0.jo" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.w0" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_1_RControl.t" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_1_RControl.rp" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_1_RControl.rpt" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_1_RControl.r" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_1_RControl.ro" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_1_RControl.s" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_1_RControl.pm" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_1_R_parentConstraint1.w0" "Ref:prp_coat_front_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_2_RControl.t" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_2_RControl.rp" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_2_RControl.rpt" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_2_RControl.r" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_2_RControl.ro" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_2_RControl.s" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_2_RControl.pm" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_2_R_parentConstraint1.w0" "Ref:prp_coat_front_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_RControl.t" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_0_RControl.rp" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_0_RControl.rpt" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_0_RControl.r" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_0_RControl.ro" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_0_RControl.s" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_0_RControl.pm" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.w0" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_1_RControl.t" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_1_RControl.rp" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_1_RControl.rpt" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_1_RControl.r" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_1_RControl.ro" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_1_RControl.s" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_1_RControl.pm" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_1_R_parentConstraint1.w0" "Ref:prp_coat_back_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_2_RControl.t" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_2_RControl.rp" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_2_RControl.rpt" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_2_RControl.r" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_2_RControl.ro" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_2_RControl.s" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_2_RControl.pm" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_2_R_parentConstraint1.w0" "Ref:prp_coat_back_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_MControl.t" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_0_MControl.rp" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_0_MControl.rpt" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_0_MControl.r" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_0_MControl.ro" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_0_MControl.s" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_0_MControl.pm" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_M_parentConstraint1.w0" "Ref:prp_coat_back_0_M_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_1_MControl.t" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_1_MControl.rp" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_1_MControl.rpt" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_1_MControl.r" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_1_MControl.ro" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_1_MControl.s" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_1_MControl.pm" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_1_M_parentConstraint1.w0" "Ref:prp_coat_back_1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_2_MControl.t" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_2_MControl.rp" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_2_MControl.rpt" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_2_MControl.r" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_2_MControl.ro" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_2_MControl.s" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_2_MControl.pm" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_2_M_parentConstraint1.w0" "Ref:prp_coat_back_2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_LControl.t" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_0_LControl.rp" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_0_LControl.rpt" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_0_LControl.r" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_0_LControl.ro" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_0_LControl.s" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_0_LControl.pm" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.w0" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_1_LControl.t" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_1_LControl.rp" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_1_LControl.rpt" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_1_LControl.r" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_1_LControl.ro" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_1_LControl.s" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_1_LControl.pm" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_1_L_parentConstraint1.w0" "Ref:prp_coat_back_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_2_LControl.t" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_2_LControl.rp" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_2_LControl.rpt" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_2_LControl.r" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_2_LControl.ro" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_2_LControl.s" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_2_LControl.pm" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_2_L_parentConstraint1.w0" "Ref:prp_coat_back_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "control_coatFront0L_0.t" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "control_coatFront0L_0.rp" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "control_coatFront0L_0.rpt" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "control_coatFront0L_0.r" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "control_coatFront0L_0.ro" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "control_coatFront0L_0.s" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "control_coatFront0L_0.pm" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "control_coatFront0L_0.jo" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.w0" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_1_LControl.t" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_1_LControl.rp" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_1_LControl.rpt" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_1_LControl.r" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_1_LControl.ro" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_1_LControl.s" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_1_LControl.pm" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_1_L_parentConstraint1.w0" "Ref:prp_coat_front_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_2_LControl.t" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_2_LControl.rp" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_2_LControl.rpt" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_2_LControl.r" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_2_LControl.ro" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_2_LControl.s" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_2_LControl.pm" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_2_L_parentConstraint1.w0" "Ref:prp_coat_front_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_hippouch_0_BControl.t" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_hippouch_0_BControl.rp" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_hippouch_0_BControl.rpt" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_hippouch_0_BControl.r" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_hippouch_0_BControl.ro" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_hippouch_0_BControl.s" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_hippouch_0_BControl.pm" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.w0" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_hippouch_0_LControl.t" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_hippouch_0_LControl.rp" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_hippouch_0_LControl.rpt" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_hippouch_0_LControl.r" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_hippouch_0_LControl.ro" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_hippouch_0_LControl.s" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_hippouch_0_LControl.pm" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.w0" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tw"
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
connectAttr "BackPackControl.t" "Ref:prp_backpack_parentConstraint1.tg[0].tt";
connectAttr "BackPackControl.rp" "Ref:prp_backpack_parentConstraint1.tg[0].trp";
connectAttr "BackPackControl.rpt" "Ref:prp_backpack_parentConstraint1.tg[0].trt"
		;
connectAttr "BackPackControl.r" "Ref:prp_backpack_parentConstraint1.tg[0].tr";
connectAttr "BackPackControl.ro" "Ref:prp_backpack_parentConstraint1.tg[0].tro";
connectAttr "BackPackControl.s" "Ref:prp_backpack_parentConstraint1.tg[0].ts";
connectAttr "BackPackControl.pm" "Ref:prp_backpack_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_backpack_parentConstraint1.w0" "Ref:prp_backpack_parentConstraint1.tg[0].tw"
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "zooShader_purpleSG.msg" "lightLinker1.lnk[2].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Ref:prp_glasses_parentConstraint1.ctx" "RefRN.phl[144]";
connectAttr "Ref:prp_glasses_parentConstraint1.cty" "RefRN.phl[145]";
connectAttr "Ref:prp_glasses_parentConstraint1.ctz" "RefRN.phl[146]";
connectAttr "Ref:prp_glasses_parentConstraint1.crx" "RefRN.phl[149]";
connectAttr "Ref:prp_glasses_parentConstraint1.cry" "RefRN.phl[150]";
connectAttr "Ref:prp_glasses_parentConstraint1.crz" "RefRN.phl[151]";
connectAttr "main.main" "RefRN.phl[3617]";
connectAttr "plotted.plotted" "RefRN.phl[3618]";
connectAttr "UpperbodyControl.upperBodyControl" "RefRN.phl[3619]";
connectAttr "PelvisControl.pelvisControl" "RefRN.phl[3620]";
connectAttr "Ref:bip_spine_0FKcontrol.fkSpine0" "RefRN.phl[3621]";
connectAttr "Ref:bip_spine_1FKcontrol.fkSpine1" "RefRN.phl[3622]";
connectAttr "Ref:bip_spine_2FKcontrol.fkSpine2" "RefRN.phl[3623]";
connectAttr "Ref:bip_spine_3FKcontrol.fkSpine3" "RefRN.phl[3624]";
connectAttr "Ref:bip_spine_0ik.ikSpine0" "RefRN.phl[3625]";
connectAttr "Ref:bip_spine_1ik.ikSpine1" "RefRN.phl[3626]";
connectAttr "Ref:bip_spine_2ik.ikSpine2" "RefRN.phl[3627]";
connectAttr "Ref:bip_spine_3ik.ikSpine3" "RefRN.phl[3628]";
connectAttr "chestParent.chestParent" "RefRN.phl[3629]";
connectAttr "neckControl.neckControl" "RefRN.phl[3630]";
connectAttr "headControl.headControl" "RefRN.phl[3631]";
connectAttr "lShoulderControl.lFKshoulderControl" "RefRN.phl[3632]";
connectAttr "Ref:bip_upperArm_LFK.lFKshoulder" "RefRN.phl[3633]";
connectAttr "Ref:bip_lowerArm_LFK.lFKelbow" "RefRN.phl[3634]";
connectAttr "Ref:bip_hand_LFK.lFKwrist" "RefRN.phl[3635]";
connectAttr "Ref:bip_upperArm_LIK.lIKshoulder" "RefRN.phl[3636]";
connectAttr "Ref:bip_lowerArm_LIK.lIKelbow" "RefRN.phl[3637]";
connectAttr "Ref:bip_hand_LIK.lIKwrist" "RefRN.phl[3638]";
connectAttr "likHandControl.lIKcontrol" "RefRN.phl[3639]";
connectAttr "likHandControlWeaponGroup.lWeaponAttach" "RefRN.phl[3640]";
connectAttr "lElbowControl.lElbowControl" "RefRN.phl[3641]";
connectAttr "Ref:bip_hip_LIK.lIKupLeg" "RefRN.phl[3642]";
connectAttr "Ref:bip_knee_LIK.lIKknee" "RefRN.phl[3643]";
connectAttr "Ref:bip_foot_LIK.lIKankle" "RefRN.phl[3644]";
connectAttr "Ref:bip_toe_LIK.lIKtoe" "RefRN.phl[3645]";
connectAttr "Ref:bip_toeEnd_LIK.lIKtoeEnd" "RefRN.phl[3646]";
connectAttr "Ref:bip_hip_LFK.lFKupLeg" "RefRN.phl[3647]";
connectAttr "Ref:bip_knee_LFK.lFKknee" "RefRN.phl[3648]";
connectAttr "Ref:bip_foot_LFK.lFKankle" "RefRN.phl[3649]";
connectAttr "Ref:bip_toe_LFK.lFKtoe" "RefRN.phl[3650]";
connectAttr "lkneeControl.lKneeControl" "RefRN.phl[3651]";
connectAttr "lFootControl.lFootControl" "RefRN.phl[3652]";
connectAttr "lToeControl.lToeControl" "RefRN.phl[3653]";
connectAttr "rShoulderControl.rFKshoulderControl" "RefRN.phl[3654]";
connectAttr "Ref:bip_upperArm_RFK.rFKshoulder" "RefRN.phl[3655]";
connectAttr "Ref:bip_lowerArm_RFK.rFKelbow" "RefRN.phl[3656]";
connectAttr "Ref:bip_hand_RFK.rFKwrist" "RefRN.phl[3657]";
connectAttr "Ref:bip_upperArm_RIK.rIKshoulder" "RefRN.phl[3658]";
connectAttr "Ref:bip_lowerArm_RIK.rIKelbow" "RefRN.phl[3659]";
connectAttr "Ref:bip_hand_RIK.rIKwrist" "RefRN.phl[3660]";
connectAttr "rikHandControl.rIKcontrol" "RefRN.phl[3661]";
connectAttr "rikHandControlWeaponGroup.rWeaponAttach" "RefRN.phl[3662]";
connectAttr "rElbowControl.rElbowControl" "RefRN.phl[3663]";
connectAttr "Ref:bip_hip_RIK.rIKupLeg" "RefRN.phl[3664]";
connectAttr "Ref:bip_knee_RIK.rIKknee" "RefRN.phl[3665]";
connectAttr "Ref:bip_foot_RIK.rIKankle" "RefRN.phl[3666]";
connectAttr "Ref:bip_toe_RIK.rIKtoe" "RefRN.phl[3667]";
connectAttr "Ref:bip_toeEnd_RIK.rIKtoeEnd" "RefRN.phl[3668]";
connectAttr "Ref:bip_hip_RFK.rFKupLeg" "RefRN.phl[3669]";
connectAttr "Ref:bip_knee_RFK.rFKknee" "RefRN.phl[3670]";
connectAttr "Ref:bip_foot_RFK.rFKankle" "RefRN.phl[3671]";
connectAttr "Ref:bip_toe_RFK.rFKtoe" "RefRN.phl[3672]";
connectAttr "rkneeControl.rKneeControl" "RefRN.phl[3673]";
connectAttr "rFootControl.rFootControl" "RefRN.phl[3674]";
connectAttr "rToeControl.rToeControl" "RefRN.phl[3675]";
connectAttr "RefRN.phl[4537]" "RefRN.phl[4505]";
connectAttr "zooShader_purple.msg" "RefRN.phl[4534]";
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
connectAttr "lHandControl.iog" "plotted.dsm" -na;
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
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "plotted.dsm" -na;
connectAttr "rkneeControl.iog" "plotted.dsm" -na;
connectAttr "rFootControl.iog" "plotted.dsm" -na;
connectAttr "rToeControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_hippouch_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_hippouch_0_BControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_2_RControl.iog" "plotted.dsm" -na;
connectAttr "coatLControl.iog" "plotted.dsm" -na;
connectAttr "coatRControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_MControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_1_MControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_2_MControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_glassesControl.iog" "plotted.dsm" -na;
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
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_3.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_3.ft"
		;
connectAttr "zooShader_purple.oc" "zooShader_purpleSG.ss";
connectAttr "zooShader_purpleSG.msg" "materialInfo1.sg";
connectAttr "zooShader_purple.msg" "materialInfo1.m";
connectAttr "zooShader_purple.msg" "materialInfo1.t" -na;
connectAttr "medic_eyes_prim.msg" "switch_medic_eye_aim_ctrl_to_space_0.zooPrimOut"
		;
connectAttr "medic_eyes_prim.msg" "switch_medic_eye_aim_ctrl_to_space_1.zooPrimOut"
		;
connectAttr "RefRN.phl[3775]" "medic_eyes_prim.zooCSTinput1";
connectAttr "RefRN.phl[3781]" "medic_eyes_prim.zooCSTinput0";
connectAttr "zooShader_purpleSG.pa" ":renderPartition.st" -na;
connectAttr "zooShader_purple.msg" ":defaultShaderList1.s" -na;
connectAttr "switch_bip_upperArm_RFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_medic_eye_aim_ctrl_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_medic_eye_aim_ctrl_to_space_1.msg" ":defaultRenderUtilityList1.u"
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
connectAttr "Ref:prp_hippouch_0_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_hippouch_0_BControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_front_1_LControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_front_2_LControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_front_1_RControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_front_2_RControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "coatLControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "coatRControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_1_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_2_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_0_MControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_1_MControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_2_MControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_0_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_1_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_back_2_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_glassesControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BackPackControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of medic_rig.ma
