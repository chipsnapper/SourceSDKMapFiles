//Maya ASCII 2008 scene
//Name: spy_rig.ma
//Last modified: Fri, Oct 09, 2009 07:17:37 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "spy_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "spy_reference.ma";
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
	setAttr ".t" -type "double3" 3.3414056744982386 68.037196430390253 92.424771406060074 ;
	setAttr ".r" -type "double3" -7.5383527292392003 364.19999999954211 4.9829986461385279e-017 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 1.4210854715202004e-014 0 ;
	setAttr ".rpt" -type "double3" 9.3402964651768652e-016 -2.6768171987152274e-016 
		1.6500719716035614e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 86.507517622294515;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.54481530082960106 66.877836654118525 5.3673215120943851 ;
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
	setAttr ".t" -type "double3" 1500.0999999999999 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000;
	setAttr ".coi" 1500.0999999999999;
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
	setAttr ".rp" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
	setAttr ".sp" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
	setAttr ".hdl" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
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
		7.836116248912238 45.448848031532144 -8.6633094979020626
		11.08194187554388 45.448848031532144 -0.82719324898981006
		7.8361162489122425 45.448848031532144 7.0089229999224312
		3.4541083832369569e-015 45.448848031532144 10.254748626554068
		-7.8361162489122416 45.448848031532144 7.0089229999224338
		-11.081941875543881 45.448848031532144 -0.82719324898980762
		-7.8361162489122442 45.448848031532144 -8.6633094979020502
		-5.9521101886435596e-015 45.448848031532144 -11.909135124533691
		7.836116248912238 45.448848031532144 -8.6633094979020626
		11.08194187554388 45.448848031532144 -0.82719324898981006
		7.8361162489122425 45.448848031532144 7.0089229999224312
		7.836116248912238 46.28218136486548 -8.6633094979020626
		11.08194187554388 46.28218136486548 -0.82719324898981006
		7.8361162489122425 46.28218136486548 7.0089229999224312
		3.4541083832369569e-015 46.28218136486548 10.254748626554068
		-7.8361162489122416 46.28218136486548 7.0089229999224338
		-11.081941875543881 46.28218136486548 -0.82719324898980762
		-7.8361162489122442 46.28218136486548 -8.6633094979020502
		-5.9521101886435596e-015 46.28218136486548 -11.909135124533691
		7.836116248912238 46.28218136486548 -8.6633094979020626
		11.08194187554388 46.28218136486548 -0.82719324898981006
		7.8361162489122425 46.28218136486548 7.0089229999224312
		7.836116248912238 47.115514698198808 -8.6633094979020626
		11.08194187554388 47.115514698198808 -0.82719324898980995
		7.8361162489122425 47.115514698198808 7.0089229999224312
		3.4541083832369569e-015 47.115514698198808 10.254748626554068
		-7.8361162489122416 47.115514698198808 7.0089229999224338
		-11.081941875543881 47.115514698198808 -0.82719324898980751
		-7.8361162489122442 47.115514698198808 -8.6633094979020502
		-5.9521101886435596e-015 47.115514698198808 -11.909135124533691
		7.836116248912238 47.115514698198808 -8.6633094979020626
		11.08194187554388 47.115514698198808 -0.82719324898980995
		7.8361162489122425 47.115514698198808 7.0089229999224312
		7.836116248912238 47.948848031532144 -8.6633094979020626
		11.08194187554388 47.948848031532144 -0.82719324898980995
		7.8361162489122425 47.948848031532144 7.0089229999224312
		3.4541083832369569e-015 47.948848031532144 10.254748626554068
		-7.8361162489122416 47.948848031532144 7.0089229999224338
		-11.081941875543881 47.948848031532144 -0.82719324898980751
		-7.8361162489122442 47.948848031532144 -8.6633094979020502
		-5.9521101886435596e-015 47.948848031532144 -11.909135124533691
		7.836116248912238 47.948848031532144 -8.6633094979020626
		11.08194187554388 47.948848031532144 -0.82719324898980995
		7.8361162489122425 47.948848031532144 7.0089229999224312
		
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
	setAttr ".t" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
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
		-2.5583221124545886e-015 -5.0061221243833431 -10.012244248766688
		10.012244248766688 -5.006122124383344 -9.1957934422959308e-016
		1.3541078356965009e-015 -5.0061221243833449 10.012244248766688
		-10.012244248766688 -5.006122124383344 1.4181088573916891e-015
		-2.5583221124545886e-015 -5.0061221243833431 -10.012244248766688
		10.012244248766688 -5.006122124383344 -9.1957934422959308e-016
		1.3541078356965009e-015 -5.0061221243833449 10.012244248766688
		-2.5583221124545886e-015 -1.6687073747944474 -10.012244248766688
		10.012244248766688 -1.6687073747944481 -7.1522837884523906e-016
		1.3541078356965009e-015 -1.6687073747944488 10.012244248766688
		-10.012244248766688 -1.6687073747944481 1.6224598227760431e-015
		-2.5583221124545886e-015 -1.6687073747944474 -10.012244248766688
		10.012244248766688 -1.6687073747944481 -7.1522837884523906e-016
		1.3541078356965009e-015 -1.6687073747944488 10.012244248766688
		-2.5583221124545886e-015 1.6687073747944488 -10.012244248766688
		10.012244248766688 1.6687073747944481 -5.1087741346088504e-016
		1.3541078356965009e-015 1.6687073747944474 10.012244248766688
		-10.012244248766688 1.6687073747944481 1.8268107881603969e-015
		-2.5583221124545886e-015 1.6687073747944488 -10.012244248766688
		10.012244248766688 1.6687073747944481 -5.1087741346088504e-016
		1.3541078356965009e-015 1.6687073747944474 10.012244248766688
		-2.5583221124545886e-015 5.0061221243833449 -10.012244248766688
		10.012244248766688 5.006122124383344 -3.0652644807653103e-016
		1.3541078356965009e-015 5.0061221243833431 10.012244248766688
		-10.012244248766688 5.006122124383344 2.0311617535447513e-015
		-2.5583221124545886e-015 5.0061221243833449 -10.012244248766688
		10.012244248766688 5.006122124383344 -3.0652644807653103e-016
		1.3541078356965009e-015 5.0061221243833431 10.012244248766688
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 5.0051288550555881 0.054513224238779912 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -51.703976886587732 0.77268002475103137 ;
	setAttr ".rp" -type "double3" 0 51.703976886587732 -0.77268002475103137 ;
	setAttr ".sp" -type "double3" 0 51.703976886587732 -0.77268002475103137 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 54.607691269990625 -1.3359268096252945 ;
createNode transform -n "Ref:prp_coat_front_0_LControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 18.581172114966591 -46.185452326073438 2.8507859118370389 ;
	setAttr ".r" -type "double3" -150.36210095101293 -67.378043832554752 161.28510570606818 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 8.0614333152770961 47.41368293762207 0.33424150943756087 ;
	setAttr ".rpt" -type "double3" -18.581172114966577 -0.51339570545870594 -2.0235926628472303 ;
	setAttr ".sp" -type "double3" 8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr ".spt" -type "double3" -3.5527136788004997e-015 0 -5.5511151231257815e-017 ;
createNode transform -n "Ref:prp_coat_front_0_LControl" -p "Ref:prp_coat_front_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_front_0_LControlShape" -p "Ref:prp_coat_front_0_LControl";
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
		-5.7491853075117283e-016 -5.629890234048546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.629890234048546e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -5.629890234048546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.629890234048546e-016 2.25
		-5.7491853075117283e-016 -2.5354771560197826 -2.25
		2.25 -2.5354771560197826 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354771560197822 2.25
		-2.25 -2.5354771560197826 3.5695323650011823e-016
		-5.7491853075117283e-016 -2.5354771560197826 -2.25
		2.25 -2.5354771560197826 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354771560197822 2.25
		-5.7491853075117283e-016 -5.0709543120395653 -2.25
		2.25 -5.0709543120395653 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709543120395653 2.25
		-2.25 -5.0709543120395653 4.1818355419123709e-016
		-5.7491853075117283e-016 -5.0709543120395653 -2.25
		2.25 -5.0709543120395653 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709543120395653 2.25
		-5.7491853075117283e-016 -7.6064314680593483 -2.25
		2.25 -7.6064314680593483 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064314680593483 2.25
		-2.25 -7.6064314680593483 4.7941387188235596e-016
		-5.7491853075117283e-016 -7.6064314680593483 -2.25
		2.25 -7.6064314680593483 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064314680593483 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_0_LControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 4.1384463234423601 -47.021896879026258 -1.2714754694172705 ;
	setAttr ".r" -type "double3" 1.6129064459649036 -11.350123110633755 5.9154661699872557 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 3.7543477326084851 45.803989843346493 -4.801860307894267 ;
	setAttr ".rpt" -type "double3" -4.138446323442361 0.32304884749411666 2.0986687184070814 ;
	setAttr ".sp" -type "double3" 3.7543477326084851 45.8039898433465 -4.801860307894267 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
createNode transform -n "Ref:prp_coat_back_0_LControl" -p "Ref:prp_coat_back_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 3.7543477326084851 45.8039898433465 -4.801860307894267 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_back_0_LControlShape" -p "Ref:prp_coat_back_0_LControl";
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
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-2.25 -3.2390315157312219 3.5695323650011823e-016
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-2.25 -6.4780630314624439 4.1818355419123709e-016
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		-2.25 -9.7170945471936658 4.7941387188235596e-016
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_front_0_RControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" -18.581171991672655 -46.185452357997292 2.85078579331927 ;
	setAttr ".r" -type "double3" 29.637898558804277 112.62195620536444 18.714893988611674 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -8.0614333152770996 47.41368293762207 0.33424150943756098 ;
	setAttr ".rpt" -type "double3" 18.581171991672651 -0.51339567353484483 -2.0235925443294533 ;
	setAttr ".sp" -type "double3" -8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr ".spt" -type "double3" 0 0 5.5511151231257839e-017 ;
createNode transform -n "Ref:prp_coat_front_0_RControl" -p "Ref:prp_coat_front_0_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" -8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_front_0_RControlShape" -p "Ref:prp_coat_front_0_RControl";
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
		-5.7491853075117283e-016 -5.6299018415927501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.6299018415927501e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -5.6299018415927501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.6299018415927501e-016 2.25
		-5.7491853075117283e-016 -2.5354823835929579 -2.25
		2.25 -2.5354823835929579 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354823835929574 2.25
		-2.25 -2.5354823835929579 3.5695323650011823e-016
		-5.7491853075117283e-016 -2.5354823835929579 -2.25
		2.25 -2.5354823835929579 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354823835929574 2.25
		-5.7491853075117283e-016 -5.0709647671859157 -2.25
		2.25 -5.0709647671859157 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709647671859157 2.25
		-2.25 -5.0709647671859157 4.1818355419123709e-016
		-5.7491853075117283e-016 -5.0709647671859157 -2.25
		2.25 -5.0709647671859157 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709647671859157 2.25
		-5.7491853075117283e-016 -7.6064471507788731 -2.25
		2.25 -7.6064471507788731 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064471507788731 2.25
		-2.25 -7.6064471507788731 4.7941387188235596e-016
		-5.7491853075117283e-016 -7.6064471507788731 -2.25
		2.25 -7.6064471507788731 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064471507788731 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_0_RControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" -4.1384462538972713 -47.021896939369419 -1.2714758856867743 ;
	setAttr ".r" -type "double3" 1.6129068662390997 11.350123205325509 -5.9154659879298572 ;
	setAttr ".rp" -type "double3" -3.7543481345544087 45.803989843107004 -4.8018602926339318 ;
	setAttr ".rpt" -type "double3" 4.1384462538972713 0.32304890783726947 2.098669134676586 ;
	setAttr ".sp" -type "double3" -3.7543481345544087 45.803989843107004 -4.8018602926339318 ;
createNode transform -n "Ref:prp_coat_back_0_RControl" -p "Ref:prp_coat_back_0_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" -3.7543481345544087 45.803989843107004 -4.8018602926339318 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_back_0_RControlShape" -p "Ref:prp_coat_back_0_RControl";
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
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-2.25 -3.2390315157312219 3.5695323650011823e-016
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-2.25 -6.4780630314624439 4.1818355419123709e-016
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		-2.25 -9.7170945471936658 4.7941387188235596e-016
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 166.80024653202113 0 0 ;
	setAttr ".rp" -type "double3" 0 51.703976886587732 -0.7726800247510337 ;
	setAttr ".sp" -type "double3" 0 51.703976886587732 -0.7726800247510337 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 51.703976886587732 -0.7726800247510337 ;
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
	setAttr ".r" -type "double3" -4.6929474800491455 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.1785104136763351 5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 0 -5.1785104136763351 5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.1785104136763351 5.3290705182007514e-015 ;
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
	setAttr ".r" -type "double3" 17.020177132185779 0 0 ;
	setAttr ".rp" -type "double3" 0 -7.2723806620927718 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 0 -7.2723806620927718 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.2723806620927718 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".r" -type "double3" 12.960979184347551 0 0 ;
	setAttr ".rp" -type "double3" 0 -4.878670881985876 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 0 -4.878670881985876 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -4.878670881985876 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
	setAttr ".rp" -type "double3" 0 68.544417095896193 -4.2637999397477371 ;
	setAttr ".sp" -type "double3" 0 68.544417095896193 -4.2637999397477371 ;
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
	setAttr ".or" -type "double3" 0 65.532483963160772 -4.4247525212784247 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.032148024593002707 -11.650619233203514 -0.31510601868889565 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.8098137942837358 11.906169167689187 6.7761164878237983 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -22.299508110324268 1.1102230246251565e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -2.7149547474006994e-012 -3.1322647670559678e-021 -5.2461637198473145e-020 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4160519598086654 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0817958912289214e-008 -18.044932992050377 4.9542037139360673e-010 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.99313211201093765 3.6564838373491009 10.992108013792718 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081718 -0.7995306279977471 -6.5822866026390843 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -7.070961509833972 5.2180482157382357e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.817444586876601 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -4.4316522744662095 5.9994824640921652e-016 ;
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
	setAttr ".rst" -type "double3" 5.0061242487641913 43.539607071174473 6.9388939039072284e-018 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 5.8098137942837278 11.906169167689182 6.7761164878237947 ;
	setAttr ".rp" -type "double3" 5.0061242487641913 43.539607071174473 0 ;
	setAttr ".sp" -type "double3" 5.0061242487641913 43.539607071174473 0 ;
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
		-1.5331160820031275e-015 -1.2378713670948709e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.2378713670948709e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -7.4331693701080903 -6
		6 -7.4331693701080903 -4.4902232973487166e-016
		8.1147111599677579e-016 -7.4331693701080876 6
		-6 -7.4331693701080903 9.5187529733364862e-016
		-1.5331160820031275e-015 -7.4331693701080903 -6
		6 -7.4331693701080903 -4.4902232973487166e-016
		8.1147111599677579e-016 -7.4331693701080876 6
		-1.5331160820031275e-015 -14.866338740216181 -6
		6 -14.866338740216179 -2.8574148255855469e-016
		8.1147111599677579e-016 -14.866338740216179 6
		-6 -14.866338740216179 1.1151561445099656e-015
		-1.5331160820031275e-015 -14.866338740216181 -6
		6 -14.866338740216179 -2.8574148255855469e-016
		8.1147111599677579e-016 -14.866338740216179 6
		-1.5331160820031275e-015 -22.299508110324268 -6
		6 -22.299508110324268 -1.2246063538223773e-016
		8.1147111599677579e-016 -22.299508110324268 6
		-6 -22.299508110324268 1.2784369916862826e-015
		-1.5331160820031275e-015 -22.299508110324268 -6
		6 -22.299508110324268 -1.2246063538223773e-016
		8.1147111599677579e-016 -22.299508110324268 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 3.4160519598086654 -1.5902773407317576e-015 0 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -22.299508110324268 -2.2204460492503131e-016 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -22.299508110324268 -2.2204460492503131e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -22.299508110324268 -2.2204460492503131e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
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
		-1.5331160820031275e-015 -1.0016950042796223e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0016950042796223e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.0149776640167927 -6
		6 -6.0149776640167927 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.0149776640167909 6
		-6 -6.0149776640167927 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.0149776640167927 -6
		6 -6.0149776640167927 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.0149776640167909 6
		-1.5331160820031275e-015 -12.029955328033585 -6
		6 -12.029955328033584 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.029955328033584 6
		-6 -12.029955328033584 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.029955328033585 -6
		6 -12.029955328033584 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.029955328033584 6
		-1.5331160820031275e-015 -18.044932992050377 -6
		6 -18.044932992050377 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.044932992050377 6
		-6 -18.044932992050377 1.2784369916862826e-015
		-1.5331160820031275e-015 -18.044932992050377 -6
		6 -18.044932992050377 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.044932992050377 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -73.952305249081718 -0.79953062799774832 -6.5822866026390843 ;
	setAttr ".rp" -type "double3" 2.0817956691843165e-008 -18.04493299205037 4.954228138842609e-010 ;
	setAttr ".sp" -type "double3" 2.0817956691843165e-008 -18.04493299205037 4.954228138842609e-010 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0817956691843165e-008 -18.04493299205037 4.954228138842609e-010 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 0.99999999999999978 ;
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
		-1.5331160820031275e-015 -3.925172137227967e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -3.925172137227967e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.3569871699446572 -6
		6 -2.3569871699446572 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.3569871699446563 6
		-6 -2.3569871699446572 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.3569871699446572 -6
		6 -2.3569871699446572 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.3569871699446563 6
		-1.5331160820031275e-015 -4.7139743398893144 -6
		6 -4.7139743398893135 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.7139743398893135 6
		-6 -4.7139743398893135 1.1151561445099656e-015
		-1.5331160820031275e-015 -4.7139743398893144 -6
		6 -4.7139743398893135 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.7139743398893135 6
		-1.5331160820031275e-015 -7.0709615098339702 -6
		6 -7.0709615098339702 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.0709615098339702 6
		-6 -7.0709615098339702 1.2784369916862826e-015
		-1.5331160820031275e-015 -7.0709615098339702 -6
		6 -7.0709615098339702 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.0709615098339702 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -23.817444586876594 0 1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" 2.7755575615628914e-015 -7.0709615098339729 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 2.7755575615628914e-015 -7.0709615098339729 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.7755575615628914e-015 -7.0709615098339729 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
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
		-1.5331160820031275e-015 -2.4600611961224157e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.4600611961224157e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.4772174248220706 -6
		6 -1.4772174248220706 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.4772174248220702 6
		-6 -1.4772174248220706 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.4772174248220706 -6
		6 -1.4772174248220706 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.4772174248220702 6
		-1.5331160820031275e-015 -2.9544348496441413 -6
		6 -2.9544348496441408 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.9544348496441408 6
		-6 -2.9544348496441408 1.1151561445099656e-015
		-1.5331160820031275e-015 -2.9544348496441413 -6
		6 -2.9544348496441408 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.9544348496441408 6
		-1.5331160820031275e-015 -4.4316522744662112 -6
		6 -4.4316522744662112 -1.2246063538223773e-016
		8.1147111599677579e-016 -4.4316522744662112 6
		-6 -4.4316522744662112 1.2784369916862826e-015
		-1.5331160820031275e-015 -4.4316522744662112 -6
		6 -4.4316522744662112 -1.2246063538223773e-016
		8.1147111599677579e-016 -4.4316522744662112 6
		
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
	setAttr ".rst" -type "double3" 5.0061242487641922 43.539607071174487 4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.0321706905056688 -11.654096150174938 -0.31520789240979802 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.19018620571649 -11.906169167689164 -6.7761164878237778 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.2188898857098422e-005 22.299533783232331 5.6528051661786094e-007 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.2578733363478885e-012 5.99260744621717e-018 2.0379681249926807e-016 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4160519598085726 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.3175158620224465e-005 18.044912593944311 1.7582851311814807e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.99332604885393239 3.6575922993226304 10.995383903818361 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6896098808701936e-005 7.0709478770737402 2.6711631626596954e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.3296940170811159e-012 -4.1135997986420937e-007 5.0976685214593231e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.817444586876533 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.5098189084360456e-005 4.4316508862803961 -5.4918057256782178e-007 ;
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
	setAttr ".rst" -type "double3" -5.00612 43.5396 6.9388939039072284e-018 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -174.19018620571649 -11.906169167689161 -6.776116487823777 ;
	setAttr ".rp" -type "double3" -5.00612 43.5396 0 ;
	setAttr ".sp" -type "double3" -5.00612 43.5396 0 ;
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
		-1.5331160820031275e-015 1.2378727922297688e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.2378727922297688e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 7.4331779277574173 -6
		6 7.4331779277574173 -4.4902232973487166e-016
		8.1147111599677579e-016 7.4331779277574146 6
		-6 7.4331779277574173 9.5187529733364862e-016
		-1.5331160820031275e-015 7.4331779277574173 -6
		6 7.4331779277574173 -4.4902232973487166e-016
		8.1147111599677579e-016 7.4331779277574146 6
		-1.5331160820031275e-015 14.866355855514835 -6
		6 14.866355855514833 -2.8574148255855469e-016
		8.1147111599677579e-016 14.866355855514833 6
		-6 14.866355855514833 1.1151561445099656e-015
		-1.5331160820031275e-015 14.866355855514835 -6
		6 14.866355855514833 -2.8574148255855469e-016
		8.1147111599677579e-016 14.866355855514833 6
		-1.5331160820031275e-015 22.299533783272249 -6
		6 22.299533783272249 -1.2246063538223773e-016
		8.1147111599677579e-016 22.299533783272249 6
		-6 22.299533783272249 1.2784369916862826e-015
		-1.5331160820031275e-015 22.299533783272249 -6
		6 22.299533783272249 -1.2246063538223773e-016
		8.1147111599677579e-016 22.299533783272249 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 3.4160519598085717 0 0 ;
	setAttr ".rp" -type "double3" -4.2188898854655932e-005 22.299533783232331 5.6528051639581633e-007 ;
	setAttr ".sp" -type "double3" -4.2188898854655932e-005 22.299533783232331 5.6528051639581633e-007 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.2188898854655932e-005 22.299533783232331 5.6528051639581633e-007 ;
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
		-1.5331160820031275e-015 1.0016938719594402e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0016938719594402e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.0149708646611257 -6
		6 6.0149708646611257 -4.4902232973487166e-016
		8.1147111599677579e-016 6.014970864661124 6
		-6 6.0149708646611257 9.5187529733364862e-016
		-1.5331160820031275e-015 6.0149708646611257 -6
		6 6.0149708646611257 -4.4902232973487166e-016
		8.1147111599677579e-016 6.014970864661124 6
		-1.5331160820031275e-015 12.029941729322251 -6
		6 12.02994172932225 -2.8574148255855469e-016
		8.1147111599677579e-016 12.02994172932225 6
		-6 12.02994172932225 1.1151561445099656e-015
		-1.5331160820031275e-015 12.029941729322251 -6
		6 12.02994172932225 -2.8574148255855469e-016
		8.1147111599677579e-016 12.02994172932225 6
		-1.5331160820031275e-015 18.044912593983376 -6
		6 18.044912593983376 -1.2246063538223773e-016
		8.1147111599677579e-016 18.044912593983376 6
		-6 18.044912593983376 1.2784369916862826e-015
		-1.5331160820031275e-015 18.044912593983376 -6
		6 18.044912593983376 -1.2246063538223773e-016
		8.1147111599677579e-016 18.044912593983376 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".rp" -type "double3" 3.3175158619336287e-005 18.044912593944307 1.7582851313147074e-005 ;
	setAttr ".sp" -type "double3" 3.3175158619336287e-005 18.044912593944307 1.7582851313147074e-005 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.3175158619336287e-005 18.044912593944307 1.7582851313147074e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
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
		-1.5331160820031275e-015 3.9251645696124258e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 3.9251645696124258e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.3569826257432527 -6
		6 2.3569826257432527 -4.4902232973487166e-016
		8.1147111599677579e-016 2.3569826257432518 6
		-6 2.3569826257432527 9.5187529733364862e-016
		-1.5331160820031275e-015 2.3569826257432527 -6
		6 2.3569826257432527 -4.4902232973487166e-016
		8.1147111599677579e-016 2.3569826257432518 6
		-1.5331160820031275e-015 4.7139652514865054 -6
		6 4.7139652514865045 -2.8574148255855469e-016
		8.1147111599677579e-016 4.7139652514865045 6
		-6 4.7139652514865045 1.1151561445099656e-015
		-1.5331160820031275e-015 4.7139652514865054 -6
		6 4.7139652514865045 -2.8574148255855469e-016
		8.1147111599677579e-016 4.7139652514865045 6
		-1.5331160820031275e-015 7.0709478772297576 -6
		6 7.0709478772297576 -1.2246063538223773e-016
		8.1147111599677579e-016 7.0709478772297576 6
		-6 7.0709478772297576 1.2784369916862826e-015
		-1.5331160820031275e-015 7.0709478772297576 -6
		6 7.0709478772297576 -1.2246063538223773e-016
		8.1147111599677579e-016 7.0709478772297576 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -23.817444586876533 -1.5902773407317588e-015 3.1805546814635176e-015 ;
	setAttr ".rp" -type "double3" 4.6896098811366471e-005 7.0709478770737411 2.6711631589959595e-006 ;
	setAttr ".sp" -type "double3" 4.6896098811366471e-005 7.0709478770737411 2.6711631589959595e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6896098811366471e-005 7.0709478770737411 2.6711631589959595e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
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
		-1.5331160820031275e-015 2.4600604255639577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.4600604255639577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.477216962117166 -6
		6 1.477216962117166 -4.4902232973487166e-016
		8.1147111599677579e-016 1.4772169621171656 6
		-6 1.477216962117166 9.5187529733364862e-016
		-1.5331160820031275e-015 1.477216962117166 -6
		6 1.477216962117166 -4.4902232973487166e-016
		8.1147111599677579e-016 1.4772169621171656 6
		-1.5331160820031275e-015 2.954433924234332 -6
		6 2.9544339242343316 -2.8574148255855469e-016
		8.1147111599677579e-016 2.9544339242343316 6
		-6 2.9544339242343316 1.1151561445099656e-015
		-1.5331160820031275e-015 2.954433924234332 -6
		6 2.9544339242343316 -2.8574148255855469e-016
		8.1147111599677579e-016 2.9544339242343316 6
		-1.5331160820031275e-015 4.4316508863514974 -6
		6 4.4316508863514974 -1.2246063538223773e-016
		8.1147111599677579e-016 4.4316508863514974 6
		-6 4.4316508863514974 1.2784369916862826e-015
		-1.5331160820031275e-015 4.4316508863514974 -6
		6 4.4316508863514974 -1.2246063538223773e-016
		8.1147111599677579e-016 4.4316508863514974 6
		
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
	setAttr ".rst" -type "double3" -5.0061200000000019 43.539599999999993 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 51.703976886587732 -0.7726800247510307 ;
	setAttr ".r" -type "double3" -1.3121505012030177 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 166.80024653202113 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -5.1785104136763493 0 ;
	setAttr ".r" -type "double3" 4.3231316717607049 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.6929474800491526 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -7.2723806620927789 0 ;
	setAttr ".r" -type "double3" -5.9234391759247949 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.020177132185786 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -4.8786708819858688 -3.7747582837255322e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 12.960979184347551 0 0 ;
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
	setAttr ".lr" -type "double3" 170.82400263715854 0 0 ;
	setAttr ".o" -type "double3" -170.82400263715854 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 68.613750551320777 -4.2600948778671688 ;
	setAttr ".r" -type "double3" 176.21501817879067 0 0 ;
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
createNode nurbsCurve -n "SpineCurveShapeOrig" -p "SpineCurve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 17.32956195775499 17.32956195775499 17.32956195775499
		4
		0 51.703976886587732 -0.7726800247510307
		0 57.511405653393517 -1.8991735944995582
		0 62.52055083042535 -4.5857051028091123
		0 68.544417095896193 -4.2637999397477371
		;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 68.544417095896208 -4.2637999397477371 ;
	setAttr ".sp" -type "double3" 0 68.544417095896208 -4.2637999397477371 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 167.91154463149468 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.069037043513304752 -0.0073987935558825768 ;
	setAttr ".tg[1].tor" -type "double3" 170.8240026378551 0 0 ;
	setAttr ".rst" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 145.33154304227372 5.0498908092291073 ;
	setAttr ".r" -type "double3" -170.77509521126413 0 0 ;
	setAttr ".rp" -type "double3" 0 72.869476126558908 -3.337499101452428 ;
	setAttr ".rpt" -type "double3" 0 -145.33154304227375 -5.0498908092291082 ;
	setAttr ".sp" -type "double3" 0 72.869476126558908 -3.337499101452428 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 12.488189916677776 -0.84138588538478609 75.539703433293653 ;
	setAttr ".rp" -type "double3" 0.86243947193359083 69.199765189298745 -0.91020734013008253 ;
	setAttr ".sp" -type "double3" 0.86243947193359083 69.199765189298745 -0.91020734013008253 ;
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
		-1.7247555922535185e-015 -3.1588707640120823 -6.75
		6.75 -3.1588707640120819 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.1588707640120814 6.75
		-6.75 -3.1588707640120819 1.0708597095003547e-015
		-1.7247555922535185e-015 -3.1588707640120823 -6.75
		6.75 -3.1588707640120819 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.1588707640120814 6.75
		-1.7247555922535185e-015 -6.3177415280241638 -6.75
		6.75 -6.3177415280241638 -3.2145916787837403e-016
		9.1290500549637277e-016 -6.3177415280241638 6.75
		-6.75 -6.3177415280241638 1.2545506625737113e-015
		-1.7247555922535185e-015 -6.3177415280241638 -6.75
		6.75 -6.3177415280241638 -3.2145916787837403e-016
		9.1290500549637277e-016 -6.3177415280241638 6.75
		-1.7247555922535185e-015 -9.4766122920362452 -6.75
		6.75 -9.4766122920362452 -1.3776821480501744e-016
		9.1290500549637277e-016 -9.4766122920362452 6.75
		-6.75 -9.4766122920362452 1.4382416156470679e-015
		-1.7247555922535185e-015 -9.4766122920362452 -6.75
		6.75 -9.4766122920362452 -1.3776821480501744e-016
		9.1290500549637277e-016 -9.4766122920362452 6.75
		
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
	setAttr ".rst" -type "double3" 0.86243947193361326 69.199765189298759 -0.91020734013008475 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".r" -type "double3" -14.355827840073799 -17.43072945458746 -42.604101251230794 ;
	setAttr ".rp" -type "double3" 8.6970523352492002e-009 -9.4766122920362506 3.9968028886505635e-015 ;
	setAttr ".sp" -type "double3" 8.6970523352492002e-009 -9.4766122920362506 3.9968028886505635e-015 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
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
		-1.7247555922535185e-015 -4.1757154078215581 -6.75
		6.75 -4.1757154078215581 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.1757154078215573 6.75
		-6.75 -4.1757154078215581 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.1757154078215581 -6.75
		6.75 -4.1757154078215581 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.1757154078215573 6.75
		-1.7247555922535185e-015 -8.3514308156431163 -6.75
		6.75 -8.3514308156431163 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.3514308156431163 6.75
		-6.75 -8.3514308156431163 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.3514308156431163 -6.75
		6.75 -8.3514308156431163 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.3514308156431163 6.75
		-1.7247555922535185e-015 -12.527146223464673 -6.75
		6.75 -12.527146223464673 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.527146223464673 6.75
		-6.75 -12.527146223464673 1.4382416156470679e-015
		-1.7247555922535185e-015 -12.527146223464673 -6.75
		6.75 -12.527146223464673 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.527146223464673 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -33.312169074236742 0 0 ;
	setAttr ".rp" -type "double3" 9.9920072216264089e-016 -12.527146223464687 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 9.9920072216264089e-016 -12.527146223464687 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.9920072216264089e-016 -12.527146223464687 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
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
		-1.7247555922535185e-015 -4.337831666666669 -6.75
		6.75 -4.337831666666669 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.3378316666666681 6.75
		-6.75 -4.337831666666669 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.337831666666669 -6.75
		6.75 -4.337831666666669 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.3378316666666681 6.75
		-1.7247555922535185e-015 -8.6756633333333379 -6.75
		6.75 -8.6756633333333379 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.6756633333333379 6.75
		-6.75 -8.6756633333333379 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.6756633333333379 -6.75
		6.75 -8.6756633333333379 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.6756633333333379 6.75
		-1.7247555922535185e-015 -13.013495000000006 -6.75
		6.75 -13.013495000000006 -1.3776821480501744e-016
		9.1290500549637277e-016 -13.013495000000006 6.75
		-6.75 -13.013495000000006 1.4382416156470679e-015
		-1.7247555922535185e-015 -13.013495000000006 -6.75
		6.75 -13.013495000000006 -1.3776821480501744e-016
		9.1290500549637277e-016 -13.013495000000006 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" -6.3611093629270375e-015 3.1805546814635183e-015 3.1805546814635183e-015 ;
	setAttr ".rp" -type "double3" 5.8841820305133297e-015 -13.013494999999988 0 ;
	setAttr ".sp" -type "double3" 5.8841820305133297e-015 -13.013494999999988 0 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.8841820305133297e-015 -13.013494999999988 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999967 ;
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
	setAttr ".rst" -type "double3" 8.6970466384173051e-009 -9.4766122920362506 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -167.51181008332182 0.84138588538476444 -75.539703433293639 ;
	setAttr ".rp" -type "double3" -0.862439 69.19980000000001 -0.91020699999999799 ;
	setAttr ".sp" -type "double3" -0.862439 69.19980000000001 -0.91020699999999799 ;
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
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
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
		-1.7247555922535185e-015 3.158874 -6.75
		6.75 3.1588739999999995 -5.0515012095173062e-016
		9.1290500549637277e-016 3.1588739999999991 6.75
		-6.75 3.1588739999999995 1.0708597095003547e-015
		-1.7247555922535185e-015 3.158874 -6.75
		6.75 3.1588739999999995 -5.0515012095173062e-016
		9.1290500549637277e-016 3.1588739999999991 6.75
		-1.7247555922535185e-015 6.317747999999999 -6.75
		6.75 6.317747999999999 -3.2145916787837403e-016
		9.1290500549637277e-016 6.317747999999999 6.75
		-6.75 6.317747999999999 1.2545506625737113e-015
		-1.7247555922535185e-015 6.317747999999999 -6.75
		6.75 6.317747999999999 -3.2145916787837403e-016
		9.1290500549637277e-016 6.317747999999999 6.75
		-1.7247555922535185e-015 9.476621999999999 -6.75
		6.75 9.476621999999999 -1.3776821480501744e-016
		9.1290500549637277e-016 9.476621999999999 6.75
		-6.75 9.476621999999999 1.4382416156470679e-015
		-1.7247555922535185e-015 9.476621999999999 -6.75
		6.75 9.476621999999999 -1.3776821480501744e-016
		9.1290500549637277e-016 9.476621999999999 6.75
		
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
	setAttr ".rst" -type "double3" -0.86243900000003149 69.19980000000001 -0.9102069999999981 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".r" -type "double3" -14.355827840074165 -17.430729454587784 -42.604101251230666 ;
	setAttr ".rp" -type "double3" -4.1910919179599659e-015 9.4766220000000132 2.2204460492503131e-015 ;
	setAttr ".sp" -type "double3" -4.1910919179599659e-015 9.4766220000000132 2.2204460492503131e-015 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
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
		-1.7247555922535185e-015 4.1757180000000016 -6.75
		6.75 4.1757180000000007 -5.0515012095173062e-016
		9.1290500549637277e-016 4.1757180000000007 6.75
		-6.75 4.1757180000000007 1.0708597095003547e-015
		-1.7247555922535185e-015 4.1757180000000016 -6.75
		6.75 4.1757180000000007 -5.0515012095173062e-016
		9.1290500549637277e-016 4.1757180000000007 6.75
		-1.7247555922535185e-015 8.3514360000000014 -6.75
		6.75 8.3514360000000014 -3.2145916787837403e-016
		9.1290500549637277e-016 8.3514360000000014 6.75
		-6.75 8.3514360000000014 1.2545506625737113e-015
		-1.7247555922535185e-015 8.3514360000000014 -6.75
		6.75 8.3514360000000014 -3.2145916787837403e-016
		9.1290500549637277e-016 8.3514360000000014 6.75
		-1.7247555922535185e-015 12.527154000000003 -6.75
		6.75 12.527154000000003 -1.3776821480501744e-016
		9.1290500549637277e-016 12.527154000000003 6.75
		-6.75 12.527154000000003 1.4382416156470679e-015
		-1.7247555922535185e-015 12.527154000000003 -6.75
		6.75 12.527154000000003 -1.3776821480501744e-016
		9.1290500549637277e-016 12.527154000000003 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -33.312169074236678 0 3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 5.440092820663267e-015 12.527153999999994 8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" 5.440092820663267e-015 12.527153999999994 8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.440092820663267e-015 12.527153999999994 8.8817841970012523e-016 ;
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
		-1.7247555922535185e-015 4.3378316666666681 -6.75
		6.75 4.3378316666666672 -5.0515012095173062e-016
		9.1290500549637277e-016 4.3378316666666672 6.75
		-6.75 4.3378316666666672 1.0708597095003547e-015
		-1.7247555922535185e-015 4.3378316666666681 -6.75
		6.75 4.3378316666666672 -5.0515012095173062e-016
		9.1290500549637277e-016 4.3378316666666672 6.75
		-1.7247555922535185e-015 8.6756633333333344 -6.75
		6.75 8.6756633333333344 -3.2145916787837403e-016
		9.1290500549637277e-016 8.6756633333333344 6.75
		-6.75 8.6756633333333344 1.2545506625737113e-015
		-1.7247555922535185e-015 8.6756633333333344 -6.75
		6.75 8.6756633333333344 -3.2145916787837403e-016
		9.1290500549637277e-016 8.6756633333333344 6.75
		-1.7247555922535185e-015 13.013495000000002 -6.75
		6.75 13.013495000000002 -1.3776821480501744e-016
		9.1290500549637277e-016 13.013495000000002 6.75
		-6.75 13.013495000000002 1.4382416156470679e-015
		-1.7247555922535185e-015 13.013495000000002 -6.75
		6.75 13.013495000000002 -1.3776821480501744e-016
		9.1290500549637277e-016 13.013495000000002 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 3.1805546814635168e-015 0 ;
	setAttr ".rp" -type "double3" -3.7747582837255322e-015 13.013495000000006 0 ;
	setAttr ".sp" -type "double3" -3.7747582837255322e-015 13.013495000000006 0 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.7747582837255322e-015 13.013495000000006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999944 ;
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
	setAttr ".rst" -type "double3" 1.5987211554602254e-014 9.4766220000000416 6.6613381477509392e-016 ;
	setAttr -k on ".w0";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 145.33154304227372 5.0498908092291073 ;
	setAttr ".sp" -type "double3" 0 145.33154304227372 5.0498908092291073 ;
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
	setAttr ".lr" -type "double3" -170.77509521126413 0 0 ;
	setAttr ".rsrr" -type "double3" -170.77509521126413 0 0 ;
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
	setAttr ".o" -type "double3" 0 76.787125946377515 9.3136907489768443 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317588e-015 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
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
	setAttr ".rst" -type "double3" 0 72.86947612655888 -3.3374991014524245 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -77.109121800882832 14.976058200299009 ;
	setAttr ".r" -type "double3" -9.2249047887359623 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 75.691068172087611 -2.8792421854895607 ;
	setAttr ".rpt" -type "double3" 0 -1.4405091346259906 -12.096816014809455 ;
	setAttr ".sp" -type "double3" 0 75.691068172087597 -2.8792421854895602 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -4.4408920985006271e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -77.109121800882832 14.976058200299009 ;
	setAttr ".sp" -type "double3" 0 -77.109121800882832 14.976058200299009 ;
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
	setAttr ".lr" -type "double3" -180.00000000000009 0 0 ;
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
	setAttr ".o" -type "double3" 0 -149.97859792744174 18.313557301751437 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.4967864267551438e-014 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
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
	setAttr ".rst" -type "double3" 0 75.691068172087597 -2.8792421854895602 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_cigControlZeroGroup" -p "headControl";
	setAttr ".t" -type "double3" 53.534251782037465 -9.4450341927131092 -57.679346822032947 ;
	setAttr ".r" -type "double3" 72.120967029401129 -44.192571519272043 11.444725592710434 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 1.0819373379999997 74.754624195687597 2.4876541975104418 ;
	setAttr ".rpt" -type "double3" -53.534251782037458 -64.373146026574503 49.82479624152252 ;
	setAttr ".sp" -type "double3" 1.0819373379999999 74.754624195687612 2.4876541975104423 ;
	setAttr ".spt" -type "double3" -2.2204460492503128e-016 -1.4210854715202002e-014 
		-4.4408920985006252e-016 ;
createNode transform -n "Ref:prp_cigControl" -p "Ref:prp_cigControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 1.0819373379999999 74.754624195687612 2.4876541975104423 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_cigControlShape" -p "Ref:prp_cigControl";
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
		-1.9163951025039094e-016 -1.1823760052897148e-016 -0.75
		0.75 0 -7.6537897113898579e-017
		1.0143388949959697e-016 0 0.75
		-0.75 0 9.8574306269666456e-017
		-1.9163951025039094e-016 -1.1823760052897148e-016 -0.75
		0.75 0 -7.6537897113898579e-017
		1.0143388949959697e-016 0 0.75
		-1.9163951025039094e-016 -0.70999308491127677 -0.75
		0.75 -0.70999308491127677 -5.6127791216858958e-017
		1.0143388949959697e-016 -0.70999308491127655 0.75
		-0.75 -0.70999308491127677 1.1898441216670608e-016
		-1.9163951025039094e-016 -0.70999308491127677 -0.75
		0.75 -0.70999308491127677 -5.6127791216858958e-017
		1.0143388949959697e-016 -0.70999308491127655 0.75
		-1.9163951025039094e-016 -1.4199861698225535 -0.75
		0.75 -1.4199861698225533 -3.5717685319819337e-017
		1.0143388949959697e-016 -1.4199861698225533 0.75
		-0.75 -1.4199861698225533 1.393945180637457e-016
		-1.9163951025039094e-016 -1.4199861698225535 -0.75
		0.75 -1.4199861698225533 -3.5717685319819337e-017
		1.0143388949959697e-016 -1.4199861698225533 0.75
		-1.9163951025039094e-016 -2.1299792547338301 -0.75
		0.75 -2.1299792547338301 -1.5307579422779716e-017
		1.0143388949959697e-016 -2.1299792547338301 0.75
		-0.75 -2.1299792547338301 1.5980462396078532e-016
		-1.9163951025039094e-016 -2.1299792547338301 -0.75
		0.75 -2.1299792547338301 -1.5307579422779716e-017
		1.0143388949959697e-016 -2.1299792547338301 0.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.17448097925814718 8.0560309755546893 -2.4773989299917161 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.4877573803629316 -9.3871507088809309 30.72823218527968 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -1.9539925233402755e-014 -12.52714622346468 3.9968028886505635e-015 ;
	setAttr ".r" -type "double3" -3.5828217047959357e-013 -5.8687107557186944e-028 1.910584475619816e-027 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -33.312169074236721 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 2.1316282072803006e-014 -13.013494999999995 -1.5987211554602254e-014 ;
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
	setAttr ".rst" -type "double3" 9.8292472550250327 66.918494915529195 -2.9591935901275304 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 14.087862380281974 4.9245961715218058 7.7199432430689559 ;
	setAttr ".sp" -type "double3" 14.087862380281528 4.9245961715218627 7.7199432430687853 ;
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
	setAttr ".rst" -type "double3" 6.1211125197227094 41.673142888849888 -1.8428222971131945 ;
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
	setAttr ".rst" -type "double3" 6.2438989123589241 -10.817018387560736 0.96707397828795716 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".sp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
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
	setAttr ".tg[0].tot" -type "double3" 20.20897490000468 -0.10110897116044981 6.7043141949455736 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 0 8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".rp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".sp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
createNode transform -n "likHandControlZeroGroup" -p "likHandControlWeaponGroup";
	setAttr ".t" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".rp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".sp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
createNode transform -n "likHandControl" -p "likHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
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
	setAttr ".lr" -type "double3" -37.506441682198265 -1.5361284697415225 27.652704566508859 ;
	setAttr ".rsrr" -type "double3" -37.799926431215866 -9.3871489067052796 30.728232041912971 ;
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
	setAttr ".rp" -type "double3" 16.073146167383957 56.101476527968458 -1.9921196118395732 ;
	setAttr ".sp" -type "double3" 16.073146167383957 56.101476527968458 -1.9921196118395732 ;
	setAttr ".hdl" -type "double3" 16.073146167383957 56.101476527968458 -1.9921196118395732 ;
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
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		16.073146167383957 56.101476527968458 -2.9921196118395734
		16.073146167383957 55.101476527968458 -1.9921196118395732
		16.073146167383957 56.101476527968458 -0.9921196118395732
		16.073146167383957 57.101476527968458 -1.992119611839573
		16.073146167383957 56.101476527968458 -2.9921196118395734
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" -37.79992645459965 -9.3871507088809434 30.728232185279687 ;
	setAttr ".rp" -type "double3" 20.208974708766572 46.597738946695323 5.8771209091768206 ;
	setAttr ".sp" -type "double3" 20.208974708766572 46.597738946695323 5.8771209091768206 ;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 20.208974708766565 44.482041216290241 5.8771209091768171 ;
	setAttr ".rpt" -type "double3" -19.698479986454792 0.90032758171123994 -24.897509894396531 ;
	setAttr ".sp" -type "double3" 20.208974708766569 44.482041216290241 5.8771209091768171 ;
	setAttr ".spt" -type "double3" -3.5527136788005005e-015 0 0 ;
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
	setAttr ".r" -type "double3" -1.5902773407317584e-015 0 3.1805546814635176e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -1.0230580895483263 -4.0049913037864622 0.95571795107371749 ;
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
		-1.1498370615023457e-015 -3.1318617779238672e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 3.1318617779238672e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -3.1318617779238672e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 3.1318617779238672e-016 4.5
		-1.1498370615023457e-015 -1.4104651536033828 -4.5
		4.5 -1.4104651536033828 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.4104651536033825 4.5
		-4.5 -1.4104651536033828 7.1390647300023646e-016
		-1.1498370615023457e-015 -1.4104651536033828 -4.5
		4.5 -1.4104651536033828 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.4104651536033825 4.5
		-1.1498370615023457e-015 -2.8209303072067655 -4.5
		4.5 -2.8209303072067655 -2.1430611191891602e-016
		6.0860333699758185e-016 -2.8209303072067655 4.5
		-4.5 -2.8209303072067655 8.3636710838247419e-016
		-1.1498370615023457e-015 -2.8209303072067655 -4.5
		4.5 -2.8209303072067655 -2.1430611191891602e-016
		6.0860333699758185e-016 -2.8209303072067655 4.5
		-1.1498370615023457e-015 -4.2313954608101483 -4.5
		4.5 -4.2313954608101483 -9.1845476536678294e-017
		6.0860333699758185e-016 -4.2313954608101483 4.5
		-4.5 -4.2313954608101483 9.5882774376471192e-016
		-1.1498370615023457e-015 -4.2313954608101483 -4.5
		4.5 -4.2313954608101483 -9.1845476536678294e-017
		6.0860333699758185e-016 -4.2313954608101483 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -29.434324833552406 28.868600440827745 -26.613112067211116 ;
	setAttr ".rp" -type "double3" -0.24750294155042241 -1.3428441808931124 1.6847418967996184 ;
	setAttr ".sp" -type "double3" -0.24750294155042241 -1.3428441808931124 1.6847418967996184 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.2475029415504256 -1.3428441808931146 1.6847418967996206 ;
	setAttr ".sp" -type "double3" -0.2475029415504256 -1.3428441808931146 1.6847418967996206 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.2475029415504256 -1.3428441808931146 1.6847418967996206 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587939e-016 7.951386703658788e-016 -3.975693351829394e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.4962982493035668e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4962982493035668e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4962982493035668e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4962982493035668e-016 2.25
		-5.7491853075117283e-016 -0.6738728237998669 -2.25
		2.25 -0.6738728237998669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.67387282379986679 2.25
		-2.25 -0.6738728237998669 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.6738728237998669 -2.25
		2.25 -0.6738728237998669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.67387282379986679 2.25
		-5.7491853075117283e-016 -1.3477456475997338 -2.25
		2.25 -1.3477456475997338 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3477456475997338 2.25
		-2.25 -1.3477456475997338 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3477456475997338 -2.25
		2.25 -1.3477456475997338 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3477456475997338 2.25
		-5.7491853075117283e-016 -2.0216184713996008 -2.25
		2.25 -2.0216184713996008 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0216184713996008 2.25
		-2.25 -2.0216184713996008 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.0216184713996008 -2.25
		2.25 -2.0216184713996008 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0216184713996008 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 10.703360410658593 0 0 ;
	setAttr ".rp" -type "double3" -8.4238171993433753e-015 -2.0216184713995982 1.1546319456101628e-014 ;
	setAttr ".sp" -type "double3" -8.4238171993433753e-015 -2.0216184713995982 1.1546319456101628e-014 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.1976530878143876e-014 -2.0216184713996066 1.8873791418627661e-014 ;
	setAttr ".sp" -type "double3" -1.1976530878143876e-014 -2.0216184713996066 1.8873791418627661e-014 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1976530878143876e-014 -2.0216184713996066 1.8873791418627661e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.1430118386509511e-015 -7.951386703658788e-016 7.951386703658788e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -8.409714868882e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 8.409714868882e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -8.409714868882e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 8.409714868882e-017 2.25
		-5.7491853075117283e-016 -0.37873988749789095 -2.25
		2.25 -0.37873988749789095 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.37873988749789089 2.25
		-2.25 -0.37873988749789095 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.37873988749789095 -2.25
		2.25 -0.37873988749789095 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.37873988749789089 2.25
		-5.7491853075117283e-016 -0.7574797749957819 -2.25
		2.25 -0.7574797749957819 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7574797749957819 2.25
		-2.25 -0.7574797749957819 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.7574797749957819 -2.25
		2.25 -0.7574797749957819 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7574797749957819 2.25
		-5.7491853075117283e-016 -1.1362196624936729 -2.25
		2.25 -1.1362196624936729 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.1362196624936729 2.25
		-2.25 -1.1362196624936729 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.1362196624936729 -2.25
		2.25 -1.1362196624936729 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.1362196624936729 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -12.038514910468917 0 0 ;
	setAttr ".rp" -type "double3" 3.4694469519536142e-015 -1.136219662493686 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.4694469519536142e-015 -1.136219662493686 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.4278135885301708e-015 -1.1362196624936824 0 ;
	setAttr ".sp" -type "double3" 3.4278135885301708e-015 -1.1362196624936824 0 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.4278135885301708e-015 -1.1362196624936824 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.3417965062424221e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.3666319352831631e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3666319352831631e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3666319352831631e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3666319352831631e-016 2.25
		-5.7491853075117283e-016 -0.61547630744938731 -2.25
		2.25 -0.61547630744938731 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61547630744938719 2.25
		-2.25 -0.61547630744938731 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.61547630744938731 -2.25
		2.25 -0.61547630744938731 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61547630744938719 2.25
		-5.7491853075117283e-016 -1.2309526148987746 -2.25
		2.25 -1.2309526148987746 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2309526148987746 2.25
		-2.25 -1.2309526148987746 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2309526148987746 -2.25
		2.25 -1.2309526148987746 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2309526148987746 2.25
		-5.7491853075117283e-016 -1.8464289223481618 -2.25
		2.25 -1.8464289223481618 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8464289223481618 2.25
		-2.25 -1.8464289223481618 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8464289223481618 -2.25
		2.25 -1.8464289223481618 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8464289223481618 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 177.50984281828732 59.198052489195 155.36824194606262 ;
	setAttr ".rp" -type "double3" 0.19761329068689482 -4.588444500277844 1.3289102735303633 ;
	setAttr ".sp" -type "double3" 0.19761329068689482 -4.588444500277844 1.3289102735303633 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.19761329068690081 -4.5884445002778458 1.328910273530358 ;
	setAttr ".sp" -type "double3" 0.19761329068690081 -4.5884445002778458 1.328910273530358 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.19761329068690681 -7.4042282485800524 0.53476142021086193 ;
	setAttr ".sp" -type "double3" 0.19761329068690681 -7.4042282485800524 0.53476142021086193 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.19761329068690614 -4.5884445002778458 1.3289102735303508 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.9878466759146985e-016 -7.9513867036587939e-016 4.9696166897867459e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 -1.298613856145988e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.298613856145988e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.298613856145988e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.298613856145988e-016 2.25
		-5.7491853075117283e-016 -0.58484368786372343 -2.25
		2.25 -0.58484368786372343 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58484368786372332 2.25
		-2.25 -0.58484368786372343 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58484368786372343 -2.25
		2.25 -0.58484368786372343 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58484368786372332 2.25
		-5.7491853075117283e-016 -1.1696873757274469 -2.25
		2.25 -1.1696873757274469 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1696873757274469 2.25
		-2.25 -1.1696873757274469 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1696873757274469 -2.25
		2.25 -1.1696873757274469 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1696873757274469 2.25
		-5.7491853075117283e-016 -1.7545310635911702 -2.25
		2.25 -1.7545310635911702 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7545310635911702 2.25
		-2.25 -1.7545310635911702 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7545310635911702 -2.25
		2.25 -1.7545310635911702 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7545310635911702 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 37.98113299310932 0 4.9696166897867449e-016 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.7545310635911848 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.7545310635911848 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.7545310635911857 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.7545310635911857 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -1.7545310635911857 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270335e-015 0 -1.9878466759146976e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
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
		-5.7491853075117283e-016 -9.0817299886581297e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.0817299886581297e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -9.0817299886581297e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.0817299886581297e-017 2.25
		-5.7491853075117283e-016 -0.40900475792800212 -2.25
		2.25 -0.40900475792800212 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.40900475792800206 2.25
		-2.25 -0.40900475792800212 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.40900475792800212 -2.25
		2.25 -0.40900475792800212 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.40900475792800206 2.25
		-5.7491853075117283e-016 -0.81800951585600423 -2.25
		2.25 -0.81800951585600423 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.81800951585600423 2.25
		-2.25 -0.81800951585600423 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.81800951585600423 -2.25
		2.25 -0.81800951585600423 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.81800951585600423 2.25
		-5.7491853075117283e-016 -1.2270142737840064 -2.25
		2.25 -1.2270142737840064 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.2270142737840064 2.25
		-2.25 -1.2270142737840064 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.2270142737840064 -2.25
		2.25 -1.2270142737840064 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.2270142737840064 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" 5.3089924386767144 0 5.1684013573782128e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.2270142737839969 -1.4210854715202004e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.2270142737839969 -1.4210854715202004e-014 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -1.2270142737840004 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -1.2270142737840004 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -1.2270142737840004 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317576e-015 -3.9756933518293928e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000007 ;
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
		-5.7491853075117283e-016 -1.2836435515875698e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2836435515875698e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2836435515875698e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2836435515875698e-016 2.25
		-5.7491853075117283e-016 -0.57810166206063196 -2.25
		2.25 -0.57810166206063196 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.57810166206063185 2.25
		-2.25 -0.57810166206063196 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.57810166206063196 -2.25
		2.25 -0.57810166206063196 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.57810166206063185 2.25
		-5.7491853075117283e-016 -1.1562033241212639 -2.25
		2.25 -1.1562033241212639 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1562033241212639 2.25
		-2.25 -1.1562033241212639 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1562033241212639 -2.25
		2.25 -1.1562033241212639 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1562033241212639 2.25
		-5.7491853075117283e-016 -1.734304986181896 -2.25
		2.25 -1.734304986181896 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.734304986181896 2.25
		-2.25 -1.734304986181896 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.734304986181896 -2.25
		2.25 -1.734304986181896 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.734304986181896 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 179.82865331956606 51.982906158062796 154.61220448028442 ;
	setAttr ".rp" -type "double3" -0.37702267624845476 -4.2073368447255968 0.24673492329544544 ;
	setAttr ".sp" -type "double3" -0.37702267624845476 -4.2073368447255968 0.24673492329544544 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.37702267624845387 -4.2073368447255941 0.24673492329544544 ;
	setAttr ".sp" -type "double3" -0.37702267624845387 -4.2073368447255941 0.24673492329544544 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.37702267624845653 -7.3722795523973028 -0.58094909037306652 ;
	setAttr ".sp" -type "double3" -0.37702267624845653 -7.3722795523973028 -0.58094909037306652 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.37702267624845209 -4.2073368447255941 0.24673492329544544 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587968e-016 -1.5902773407317592e-015 -2.9817700138720484e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.7558740334095879e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7558740334095879e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7558740334095879e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7558740334095879e-016 2.25
		-5.7491853075117283e-016 -0.790775364257295 -2.25
		2.25 -0.790775364257295 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79077536425729489 2.25
		-2.25 -0.790775364257295 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.790775364257295 -2.25
		2.25 -0.790775364257295 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79077536425729489 2.25
		-5.7491853075117283e-016 -1.58155072851459 -2.25
		2.25 -1.58155072851459 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.58155072851459 2.25
		-2.25 -1.58155072851459 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.58155072851459 -2.25
		2.25 -1.58155072851459 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.58155072851459 2.25
		-5.7491853075117283e-016 -2.372326092771885 -2.25
		2.25 -2.372326092771885 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.372326092771885 2.25
		-2.25 -2.372326092771885 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.372326092771885 -2.25
		2.25 -2.372326092771885 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.372326092771885 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 41.37218319654972 1.5902773407317584e-015 -3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -2.3723260927718801 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -2.3723260927718801 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -7.1054273576010019e-015 -2.3723260927718801 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-015 -2.3723260927718801 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-015 -2.3723260927718801 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-5.7491853075117283e-016 -1.1694889590442374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.1694889590442374e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.1694889590442374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.1694889590442374e-016 2.25
		-5.7491853075117283e-016 -0.52669100401655367 -2.25
		2.25 -0.52669100401655367 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.52669100401655355 2.25
		-2.25 -0.52669100401655367 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.52669100401655367 -2.25
		2.25 -0.52669100401655367 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.52669100401655355 2.25
		-5.7491853075117283e-016 -1.0533820080331073 -2.25
		2.25 -1.0533820080331073 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0533820080331073 2.25
		-2.25 -1.0533820080331073 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0533820080331073 -2.25
		2.25 -1.0533820080331073 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0533820080331073 2.25
		-5.7491853075117283e-016 -1.5800730120496609 -2.25
		2.25 -1.5800730120496609 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.5800730120496609 2.25
		-2.25 -1.5800730120496609 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.5800730120496609 -2.25
		2.25 -1.5800730120496609 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.5800730120496609 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 1.9626660162425253 -1.5902773407317584e-015 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.5800730120496667 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.5800730120496667 0 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.5800730120496596 -5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.5800730120496596 -5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -1.5800730120496596 -5.3290705182007514e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
		-5.7491853075117283e-016 -1.210760775948114e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.210760775948114e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.210760775948114e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.210760775948114e-016 2.25
		-5.7491853075117283e-016 -0.54527817793947386 -2.25
		2.25 -0.54527817793947386 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54527817793947375 2.25
		-2.25 -0.54527817793947386 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.54527817793947386 -2.25
		2.25 -0.54527817793947386 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54527817793947375 2.25
		-5.7491853075117283e-016 -1.0905563558789477 -2.25
		2.25 -1.0905563558789477 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0905563558789477 2.25
		-2.25 -1.0905563558789477 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0905563558789477 -2.25
		2.25 -1.0905563558789477 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0905563558789477 2.25
		-5.7491853075117283e-016 -1.6358345338184215 -2.25
		2.25 -1.6358345338184215 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6358345338184215 2.25
		-2.25 -1.6358345338184215 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6358345338184215 -2.25
		2.25 -1.6358345338184215 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6358345338184215 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -176.198924389323 46.689051655795517 155.1435484896781 ;
	setAttr ".rp" -type "double3" -1.1710480260854064 -3.8571527380709059 -0.7406770742417077 ;
	setAttr ".sp" -type "double3" -1.1710480260854064 -3.8571527380709059 -0.7406770742417077 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.1710480260853995 -3.8571527380709125 -0.74067707424170948 ;
	setAttr ".sp" -type "double3" -1.1710480260853995 -3.8571527380709125 -0.74067707424170948 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -1.1710480260853882 -6.8453776240084618 -1.6233571314667543 ;
	setAttr ".sp" -type "double3" -1.1710480260853882 -6.8453776240084618 -1.6233571314667543 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.1710480260853933 -3.8571527380709272 -0.74067707424170948 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587959e-016 3.1805546814635168e-015 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
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
		-5.7491853075117283e-016 -1.2513167979942501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2513167979942501e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2513167979942501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2513167979942501e-016 2.25
		-5.7491853075117283e-016 -0.56354298651693469 -2.25
		2.25 -0.56354298651693469 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.56354298651693457 2.25
		-2.25 -0.56354298651693469 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.56354298651693469 -2.25
		2.25 -0.56354298651693469 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.56354298651693457 2.25
		-5.7491853075117283e-016 -1.1270859730338694 -2.25
		2.25 -1.1270859730338694 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1270859730338694 2.25
		-2.25 -1.1270859730338694 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1270859730338694 -2.25
		2.25 -1.1270859730338694 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1270859730338694 2.25
		-5.7491853075117283e-016 -1.6906289595508039 -2.25
		2.25 -1.6906289595508039 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6906289595508039 2.25
		-2.25 -1.6906289595508039 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6906289595508039 -2.25
		2.25 -1.6906289595508039 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6906289595508039 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 28.163696160124818 3.1805546814635176e-015 1.9878466759146984e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.6906289595508168 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.6906289595508168 0 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -1.6906289595508124 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -1.6906289595508124 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.6906289595508124 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 -4.7708320221952767e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.0535574873536785e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0535574873536785e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0535574873536785e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0535574873536785e-016 2.25
		-5.7491853075117283e-016 -0.47448011074594226 -2.25
		2.25 -0.47448011074594226 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47448011074594221 2.25
		-2.25 -0.47448011074594226 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.47448011074594226 -2.25
		2.25 -0.47448011074594226 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47448011074594221 2.25
		-5.7491853075117283e-016 -0.94896022149188453 -2.25
		2.25 -0.94896022149188453 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.94896022149188453 2.25
		-2.25 -0.94896022149188453 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.94896022149188453 -2.25
		2.25 -0.94896022149188453 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.94896022149188453 2.25
		-5.7491853075117283e-016 -1.4234403322378268 -2.25
		2.25 -1.4234403322378268 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4234403322378268 2.25
		-2.25 -1.4234403322378268 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.4234403322378268 -2.25
		2.25 -1.4234403322378268 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4234403322378268 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 13.419380546313329 -3.1805546814635168e-015 0 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -1.423440332237826 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -1.423440332237826 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 7.9936057773011271e-015 -1.4234403322378331 7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 7.9936057773011271e-015 -1.4234403322378331 7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.9936057773011271e-015 -1.4234403322378331 7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 3.1805546814635168e-015 1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 -1.3020770735302263e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3020770735302263e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3020770735302263e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3020770735302263e-016 2.25
		-5.7491853075117283e-016 -0.58640338231583933 -2.25
		2.25 -0.58640338231583933 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58640338231583922 2.25
		-2.25 -0.58640338231583933 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58640338231583933 -2.25
		2.25 -0.58640338231583933 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58640338231583922 2.25
		-5.7491853075117283e-016 -1.1728067646316787 -2.25
		2.25 -1.1728067646316787 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1728067646316787 2.25
		-2.25 -1.1728067646316787 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1728067646316787 -2.25
		2.25 -1.1728067646316787 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1728067646316787 2.25
		-5.7491853075117283e-016 -1.7592101469475181 -2.25
		2.25 -1.7592101469475181 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7592101469475181 2.25
		-2.25 -1.7592101469475181 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7592101469475181 -2.25
		2.25 -1.7592101469475181 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7592101469475181 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -176.87589629592048 43.789667966965972 151.35001943964056 ;
	setAttr ".rp" -type "double3" -1.966130564956438 -3.3981763725770833 -1.5474453812200801 ;
	setAttr ".sp" -type "double3" -1.966130564956438 -3.3981763725770833 -1.5474453812200801 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.9661305649564387 -3.3981763725770922 -1.5474453812200828 ;
	setAttr ".sp" -type "double3" -1.9661305649564387 -3.3981763725770922 -1.5474453812200828 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -1.9661305649564342 -5.9883903457886412 -2.2319884095329612 ;
	setAttr ".sp" -type "double3" -1.9661305649564342 -5.9883903457886412 -2.2319884095329612 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.9661305649564378 -3.3981763725771001 -1.5474453812200863 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635183e-015 -3.1805546814635183e-015 3.1805546814635183e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
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
		-5.7491853075117283e-016 -1.0642005590358508e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0642005590358508e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0642005590358508e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0642005590358508e-016 2.25
		-5.7491853075117283e-016 -0.47927332411213314 -2.25
		2.25 -0.47927332411213314 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47927332411213308 2.25
		-2.25 -0.47927332411213314 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.47927332411213314 -2.25
		2.25 -0.47927332411213314 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47927332411213308 2.25
		-5.7491853075117283e-016 -0.95854664822426627 -2.25
		2.25 -0.95854664822426627 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.95854664822426627 2.25
		-2.25 -0.95854664822426627 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.95854664822426627 -2.25
		2.25 -0.95854664822426627 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.95854664822426627 2.25
		-5.7491853075117283e-016 -1.4378199723363994 -2.25
		2.25 -1.4378199723363994 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4378199723363994 2.25
		-2.25 -1.4378199723363994 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.4378199723363994 -2.25
		2.25 -1.4378199723363994 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4378199723363994 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 24.348262730400982 3.1805546814635168e-015 -2.3854160110976376e-015 ;
	setAttr ".rp" -type "double3" 6.2172489379008766e-015 -1.4378199723364142 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 6.2172489379008766e-015 -1.4378199723364142 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 7.1054273576010019e-015 -1.4378199723364133 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-015 -1.4378199723364133 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -1.4378199723364133 -7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -6.3611093629270335e-015 1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -7.8411156640871016e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.8411156640871016e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -7.8411156640871016e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.8411156640871016e-017 2.25
		-5.7491853075117283e-016 -0.3531324558295163 -2.25
		2.25 -0.3531324558295163 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.35313245582951625 2.25
		-2.25 -0.3531324558295163 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.3531324558295163 -2.25
		2.25 -0.3531324558295163 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.35313245582951625 2.25
		-5.7491853075117283e-016 -0.7062649116590326 -2.25
		2.25 -0.7062649116590326 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7062649116590326 2.25
		-2.25 -0.7062649116590326 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.7062649116590326 -2.25
		2.25 -0.7062649116590326 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7062649116590326 2.25
		-5.7491853075117283e-016 -1.0593973674885488 -2.25
		2.25 -1.0593973674885488 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.0593973674885488 2.25
		-2.25 -1.0593973674885488 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.0593973674885488 -2.25
		2.25 -1.0593973674885488 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.0593973674885488 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 18.453507192123315 0 1.5902773407317584e-015 ;
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -1.0593973674885291 -1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -1.0593973674885291 -1.2434497875801753e-014 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0 -1.0593973674885433 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 0 -1.0593973674885433 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.0593973674885433 -7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 3.1805546814635168e-015 6.3611093629270335e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-5.7491853075117283e-016 -1.0285433296617763e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0285433296617763e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0285433296617763e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0285433296617763e-016 2.25
		-5.7491853075117283e-016 -0.46321473561991849 -2.25
		2.25 -0.46321473561991849 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.46321473561991844 2.25
		-2.25 -0.46321473561991849 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.46321473561991849 -2.25
		2.25 -0.46321473561991849 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.46321473561991844 2.25
		-5.7491853075117283e-016 -0.92642947123983699 -2.25
		2.25 -0.92642947123983699 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.92642947123983699 2.25
		-2.25 -0.92642947123983699 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.92642947123983699 -2.25
		2.25 -0.92642947123983699 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.92642947123983699 2.25
		-5.7491853075117283e-016 -1.3896442068597554 -2.25
		2.25 -1.3896442068597554 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3896442068597554 2.25
		-2.25 -1.3896442068597554 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3896442068597554 -2.25
		2.25 -1.3896442068597554 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3896442068597554 2.25
		
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
	setAttr ".rst" -type "double3" 20.208974708766569 46.597738946695316 5.8771209091768171 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-014 -2.1156977304050719 
		1.7545050493430204e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.7493050748049341e-014 -3.1805546814635168e-015 
		-6.3611093629270335e-015 ;
	setAttr ".tg[1].tot" -type "double3" -2.2549283684725197e-007 -2.1156977304050941 
		-4.2594153293616523e-015 ;
	setAttr ".tg[1].tor" -type "double3" 1.1131941385122309e-014 6.3611093629270335e-015 
		-1.9083328088781101e-014 ;
	setAttr ".lr" -type "double3" -37.506441682198265 -1.5361284697415236 27.652704566508866 ;
	setAttr ".rst" -type "double3" 20.370871458411248 -0.32972100714592756 26.176869075794464 ;
	setAttr ".rsrr" -type "double3" -37.799926454599664 -9.3871507088809452 30.728232185279694 ;
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
	setAttr ".rp" -type "double3" 7.1612784965552017 21.454661446953992 -2.2087437392940861 ;
	setAttr ".sp" -type "double3" 7.1612784965552017 21.454661446953992 -2.2087437392940861 ;
	setAttr ".hdl" -type "double3" 7.1612784965552017 21.454661446953992 -2.2087437392940861 ;
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
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		7.1612784965552017 21.454661446953992 -3.2087437392940861
		7.1612784965552017 20.454661446953992 -2.2087437392940861
		7.1612784965552017 21.454661446953992 -1.2087437392940861
		7.1612784965552017 22.454661446953992 -2.2087437392940861
		7.1612784965552017 21.454661446953992 -3.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		
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
	setAttr ".r" -type "double3" 0 12.089163556883973 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 9.5333370556802279 3.6971503677444391 -3.1120045785414745 ;
	setAttr ".rpt" -type "double3" -0.86318051881282276 0 -1.9275860338281705 ;
	setAttr ".sp" -type "double3" 9.5333370556802279 3.6971503677444391 -3.1120045785414745 ;
	setAttr ".hdl" -type "double3" 9.5333370556802279 3.6971503677444391 -3.1120045785414745 ;
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
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		8.6894245298624746 0.8149976459738042 -5.432400484761029
		8.6894245298624746 0.8149976459738042 1.1559608393685816
		8.6894245298624746 6.5793030895150739 1.1559608393685816
		8.6894245298624746 6.5793030895150739 -5.432400484761029
		8.6894245298624746 0.8149976459738042 -5.432400484761029
		10.377249581497981 0.81499764597380375 -5.432400484761029
		10.377249581497981 0.8149976459738042 1.1559608393685825
		10.377249581497981 6.5793030895150739 1.1559608393685816
		10.377249581497981 6.5793030895150739 -5.432400484761029
		10.377249581497981 0.8149976459738042 -5.4324004847610299
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 8.6701565368674043 3.6971503677444355 -5.0395906123696497 ;
	setAttr ".sp" -type "double3" 8.6701565368674043 3.6971503677444355 -5.0395906123696497 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 8.6701565368674043 3.6971503677444355 -5.0395906123696497 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 67.290848178065403 -7.3790028432976529 -17.06068906704958 ;
	setAttr ".rp" -type "double3" -5.2146838736000234e-008 -7.4108713566312066 -0.77004312258524066 ;
	setAttr ".sp" -type "double3" -5.2146838736000234e-008 -7.4108713566312066 -0.77004312258524066 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" -5.2146838736000234e-008 -7.4108713566312066 -0.77004312258524066 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" -8.8278125961003172e-032 0 7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" -1.562133556764427 -0.035195030272006413 -0.32667805984821485 ;
	setAttr ".sp" -type "double3" -1.562133556764427 -0.035195030272006413 -0.32667805984821485 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -1.562133556764427 -0.035195030272006413 -0.32667805984821485 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" -8.8278125961003172e-032 0 7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" 3.2687087681890978 0.036825998686253726 -0.84214040058538187 ;
	setAttr ".sp" -type "double3" 3.2687087681890978 0.036825998686253726 -0.84214040058538187 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 3.2687087681890978 0.036825998686253726 -0.84214040058538187 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" 1.2358937634540444e-030 0 -2.8249000307521015e-030 ;
	setAttr ".rp" -type "double3" -4.5824248213430492 -0.0016309684142466019 -7.4040872768870827 ;
	setAttr ".sp" -type "double3" -4.5824248213430492 -0.0016309684142466019 -7.4040872768870827 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -4.5824248213430492 -0.0016309684142466019 -7.4040872768870827 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" 1.2358937634540444e-030 0 -2.8249000307521015e-030 ;
	setAttr ".rp" -type "double3" 4.2852926617054177 -4.1610212065746548e-016 12.774454519085662 ;
	setAttr ".sp" -type "double3" 4.2852926617054177 -4.1610212065746548e-016 12.774454519085662 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 4.2852926617054177 -4.1610212065746548e-016 12.774454519085662 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000014 18.544438670575214 0 ;
	setAttr ".rp" -type "double3" -1.4094430797803739 0.84172745861739062 -4.2015490291761814 ;
	setAttr ".sp" -type "double3" -1.4094430797803739 0.84172745861739062 -4.2015490291761814 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -1.4094430797803739 0.84172745861739062 -4.2015490291761814 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 23.817444586876615 -2.8249000307521015e-030 0 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 6.4687755165553522 2.855422909127046 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 6.4687755165553522 2.855422909127046 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 6.4687755165553522 2.855422909127046 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.1444203143978307 -3.0192600712521891 1.0726809422325585 ;
	setAttr ".r" -type "double3" 66.653670814816195 -4.8515454094756398 -11.086252099919541 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 8.2724191241112521 0.23792126971163036 -5.0395906123738614 ;
	setAttr ".rpt" -type "double3" 0.87200116671196692 2.7813388004723194 3.9669096676177098 ;
	setAttr ".sp" -type "double3" 8.2724191241023703 0.23792126971265004 -5.0395906123717591 ;
	setAttr ".spt" -type "double3" -1.7763568394002503e-015 -5.5511151231257815e-017 
		2.6645352591003745e-015 ;
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
	setAttr ".rst" -type "double3" 2.5699443031718028 -7.3555221610257018 -20.894012108249399 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.7914515193970555 1.2512414676887122 -6.3766929810672828 ;
	setAttr ".r" -type "double3" -2.8197737287702434e-014 6.4552756245823684 -8.0222785487248538e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" 7.0906598474058304 -0.40951398858019716 2.9912948950645237 ;
	setAttr ".rpt" -type "double3" 0.29134876939087889 0 -0.81615099122931301 ;
	setAttr ".sp" -type "double3" 7.0906598498299998 -0.40951399011760792 2.9912948981072076 ;
	setAttr ".spt" -type "double3" 0 1.1102230246251563e-016 0 ;
	setAttr ".pv" -type "double3" 0.25686437339608165 1.8296735227340757 0.76571240938468954 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000014 18.544438670575218 -2.9796094956115853e-030 ;
	setAttr ".rp" -type "double3" 2.8758495819250465 0.84172745861739018 8.5729054899094788 ;
	setAttr ".sp" -type "double3" 2.8758495819250465 0.84172745861739018 8.5729054899094788 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 2.8758495819250465 0.84172745861739018 8.5729054899094788 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000014 1.4124500153760504e-030 -18.544438670575222 ;
	setAttr ".rp" -type "double3" -5.2146839291111746e-008 -4.4316525179341513 -0.84172745861739195 ;
	setAttr ".sp" -type "double3" -5.2146839291111746e-008 -4.4316525179341513 -0.84172745861739195 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -5.2146839291111746e-008 -4.4316525179341513 -0.84172745861739195 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8253166011030961 0.47392728858520849 -4.2673090993136222 ;
	setAttr ".r" -type "double3" -2.8550948193360633e-014 6.4552756245823737 -1.2143194463527895e-014 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999911 ;
	setAttr ".rp" -type "double3" 5.3086205781714773 0.36780020736597652 4.8951801224748301 ;
	setAttr ".rpt" -type "double3" 0.51669630934140853 0 -0.62787136466089088 ;
	setAttr ".sp" -type "double3" 5.3086205781714826 0.36780020736597618 4.8951801224748328 ;
	setAttr ".spt" -type "double3" -3.552713678800499e-015 -3.8857805861880435e-016 
		-4.4408920985006222e-015 ;
	setAttr ".pv" -type "double3" -1.8961545139801088 -1.006266154936933e-008 0.63608023009118719 ;
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
	setAttr ".lr" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000014 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" 2.8758495819250451 0.84172745861739118 8.5729054899094841 ;
	setAttr ".r" -type "double3" -2.9553457573746665e-014 18.544438670575218 -1.4329767112662835e-014 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
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
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-0.843912525817753 -1.0292074034976897 -0.18966501208066194
		-0.84391252581775333 -1.0292074034976895 3.2494036751315232
		-0.84391252581775344 1.0292074034976897 3.2494036751315232
		-0.84391252581775311 1.0292074034976897 -0.18966501208066194
		-0.843912525817753 -1.0292074034976895 -0.18966501208066217
		0.84391252581775333 -1.0292074034976899 -0.18966501208066217
		0.843912525817753 -1.0292074034976897 3.2494036751315236
		0.84391252581775289 1.0292074034976899 3.2494036751315232
		0.84391252581775322 1.0292074034976899 -0.18966501208066217
		0.84391252581775333 -1.0292074034976897 -0.18966501208066239
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -3.450991666554651e-015 
		-5.6805075055714352e-015 ;
	setAttr ".tg[0].tor" -type "double3" -66.182555413123438 -5.108911213033076e-007 
		-7.9513867036587919e-016 ;
	setAttr ".lr" -type "double3" -66.182555413123453 12.089163556883975 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -66.182555413123453 12.089163556883975 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.17448088528537584 8.0560301530891483 -2.4773978497980131 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 175.51224261963702 9.3871507088809647 -30.728232185279744 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 12.527154000000003 8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -33.312169074236678 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 13.013495000000013 -2.3092638912203256e-014 ;
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
	setAttr ".rst" -type "double3" -9.8292559666333705 66.918527380847152 -2.9591953491331449 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -14.087868840751341 4.9245969244794239 7.7199433911757289 ;
	setAttr ".sp" -type "double3" -14.08786884075375 4.9245969244791112 7.7199433911766429 ;
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
	setAttr ".rst" -type "double3" -6.1211183276759158 41.673167696515208 -1.8428236652868444 ;
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
	setAttr ".rst" -type "double3" -6.2439027884133385 -10.817025102491975 0.96707457862301638 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888854 ;
	setAttr ".sp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888854 ;
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
	setAttr ".tg[0].tot" -type "double3" -20.208987168427257 -0.10108341053751246 6.7043129748786967 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-015 ;
	setAttr ".rp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
	setAttr ".sp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
createNode transform -n "rikHandControlZeroGroup" -p "rikHandControlWeaponGroup";
	setAttr ".t" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
	setAttr ".rp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
	setAttr ".sp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
createNode transform -n "rikHandControl" -p "rikHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
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
	setAttr ".lr" -type "double3" 142.49355823023745 1.5361292152083084 -27.65270569147151 ;
	setAttr ".rsrr" -type "double3" 142.20007352537368 9.3871522523242152 -30.728232308063745 ;
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
	setAttr ".rp" -type "double3" -16.073158755046709 56.101502278355177 -1.9921207705101285 ;
	setAttr ".sp" -type "double3" -16.073158755046709 56.101502278355177 -1.9921207705101285 ;
	setAttr ".hdl" -type "double3" -16.073158755046709 56.101502278355177 -1.9921207705101285 ;
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
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-16.073158755046709 56.101502278355177 -2.9921207705101285
		-16.073158755046709 55.101502278355177 -1.9921207705101285
		-16.073158755046709 56.101502278355177 -0.99212077051012848
		-16.073158755046709 57.101502278355177 -1.9921207705101283
		-16.073158755046709 56.101502278355177 -2.9921207705101285
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlZeroGroup" -p "main";
	setAttr ".r" -type "double3" 142.20007354540033 9.38715070888097 -30.728232185279722 ;
	setAttr ".rp" -type "double3" -20.208987296429342 46.597764697082042 5.8771197505062656 ;
	setAttr ".sp" -type "double3" -20.208987296429342 46.597764697082042 5.8771197505062656 ;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -20.208987296429338 48.71344709822359 5.8771197505062682 ;
	setAttr ".rpt" -type "double3" -14.903352369797062 -76.810337767329017 22.294354655217429 ;
	setAttr ".sp" -type "double3" -20.208987296429338 48.713447098223575 5.8771197505062673 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 8.8817841970012543e-016 ;
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
	setAttr ".r" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.0230580895483268 4.0049913037864613 -0.95571795107371726 ;
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
		-1.1498370615023457e-015 3.1318390860554214e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -3.1318390860554214e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 3.1318390860554214e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -3.1318390860554214e-016 4.5
		-1.1498370615023457e-015 1.4104549340943551 -4.5
		4.5 1.4104549340943551 -3.3676674730115375e-016
		6.0860333699758185e-016 1.4104549340943549 4.5
		-4.5 1.4104549340943551 7.1390647300023646e-016
		-1.1498370615023457e-015 1.4104549340943551 -4.5
		4.5 1.4104549340943551 -3.3676674730115375e-016
		6.0860333699758185e-016 1.4104549340943549 4.5
		-1.1498370615023457e-015 2.8209098681887101 -4.5
		4.5 2.8209098681887101 -2.1430611191891602e-016
		6.0860333699758185e-016 2.8209098681887101 4.5
		-4.5 2.8209098681887101 8.3636710838247419e-016
		-1.1498370615023457e-015 2.8209098681887101 -4.5
		4.5 2.8209098681887101 -2.1430611191891602e-016
		6.0860333699758185e-016 2.8209098681887101 4.5
		-1.1498370615023457e-015 4.231364802283065 -4.5
		4.5 4.231364802283065 -9.1845476536678294e-017
		6.0860333699758185e-016 4.231364802283065 4.5
		-4.5 4.231364802283065 9.5882774376471192e-016
		-1.1498370615023457e-015 4.231364802283065 -4.5
		4.5 4.231364802283065 -9.1845476536678294e-017
		6.0860333699758185e-016 4.231364802283065 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -29.434324833552321 28.868600440827738 -26.613112067211112 ;
	setAttr ".rp" -type "double3" 0.24749839881904512 1.3427813495108722 -1.6847126876674743 ;
	setAttr ".sp" -type "double3" 0.24749839881904512 1.3427813495108722 -1.6847126876674743 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.24749839881903923 1.3427813495108678 -1.6847126876674752 ;
	setAttr ".sp" -type "double3" 0.24749839881903923 1.3427813495108678 -1.6847126876674752 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.24749839881903923 1.3427813495108678 -1.6847126876674752 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 4.4726550208080719e-016 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999944 ;
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
		-5.7491853075117283e-016 1.4963501301150425e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4963501301150425e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4963501301150425e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4963501301150425e-016 2.25
		-5.7491853075117283e-016 0.67389618884018987 -2.25
		2.25 0.67389618884018987 -1.6838337365057687e-016
		3.0430166849879092e-016 0.67389618884018976 2.25
		-2.25 0.67389618884018987 3.5695323650011823e-016
		-5.7491853075117283e-016 0.67389618884018987 -2.25
		2.25 0.67389618884018987 -1.6838337365057687e-016
		3.0430166849879092e-016 0.67389618884018976 2.25
		-5.7491853075117283e-016 1.3477923776803797 -2.25
		2.25 1.3477923776803797 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3477923776803797 2.25
		-2.25 1.3477923776803797 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3477923776803797 -2.25
		2.25 1.3477923776803797 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3477923776803797 2.25
		-5.7491853075117283e-016 2.0216885665205697 -2.25
		2.25 2.0216885665205697 -4.5922738268339147e-017
		3.0430166849879092e-016 2.0216885665205697 2.25
		-2.25 2.0216885665205697 4.7941387188235596e-016
		-5.7491853075117283e-016 2.0216885665205697 -2.25
		2.25 2.0216885665205697 -4.5922738268339147e-017
		3.0430166849879092e-016 2.0216885665205697 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 10.703360410658473 0 0 ;
	setAttr ".rp" -type "double3" 2.0814292837345594e-006 2.0216885664921405 1.0516409934879789e-005 ;
	setAttr ".sp" -type "double3" 2.0814292837345594e-006 2.0216885664921405 1.0516409934879789e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.0814292874121731e-006 2.0216885664921418 1.0516409929550719e-005 ;
	setAttr ".sp" -type "double3" 2.0814292874121731e-006 2.0216885664921418 1.0516409929550719e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0814292874121731e-006 2.0216885664921418 1.0516409929550719e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -5.963540027744092e-016 7.951386703658788e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 8.4090676601100705e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -8.4090676601100705e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 8.4090676601100705e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -8.4090676601100705e-017 2.25
		-5.7491853075117283e-016 0.37871073980605002 -2.25
		2.25 0.37871073980605002 -1.6838337365057687e-016
		3.0430166849879092e-016 0.37871073980604997 2.25
		-2.25 0.37871073980605002 3.5695323650011823e-016
		-5.7491853075117283e-016 0.37871073980605002 -2.25
		2.25 0.37871073980605002 -1.6838337365057687e-016
		3.0430166849879092e-016 0.37871073980604997 2.25
		-5.7491853075117283e-016 0.75742147961210005 -2.25
		2.25 0.75742147961210005 -1.0715305595945801e-016
		3.0430166849879092e-016 0.75742147961210005 2.25
		-2.25 0.75742147961210005 4.1818355419123709e-016
		-5.7491853075117283e-016 0.75742147961210005 -2.25
		2.25 0.75742147961210005 -1.0715305595945801e-016
		3.0430166849879092e-016 0.75742147961210005 2.25
		-5.7491853075117283e-016 1.13613221941815 -2.25
		2.25 1.13613221941815 -4.5922738268339147e-017
		3.0430166849879092e-016 1.13613221941815 2.25
		-2.25 1.13613221941815 4.7941387188235596e-016
		-5.7491853075117283e-016 1.13613221941815 -2.25
		2.25 1.13613221941815 -4.5922738268339147e-017
		3.0430166849879092e-016 1.13613221941815 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -12.038514910468763 0 0 ;
	setAttr ".rp" -type "double3" -3.9650617279854417e-005 1.1361322186132892 1.6022840217289058e-005 ;
	setAttr ".sp" -type "double3" -3.9650617279854417e-005 1.1361322186132892 1.6022840217289058e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.9650617279993194e-005 1.1361322186132892 1.6022840213292255e-005 ;
	setAttr ".sp" -type "double3" -3.9650617279993194e-005 1.1361322186132892 1.6022840213292255e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.9650617279993194e-005 1.1361322186132892 1.6022840213292255e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -4.0253895187272666e-015 0 -1.1927080055488182e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999956 ;
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
		-5.7491853075117283e-016 1.3666323611337427e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3666323611337427e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3666323611337427e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3666323611337427e-016 2.25
		-5.7491853075117283e-016 0.61547649923543846 -2.25
		2.25 0.61547649923543846 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61547649923543835 2.25
		-2.25 0.61547649923543846 3.5695323650011823e-016
		-5.7491853075117283e-016 0.61547649923543846 -2.25
		2.25 0.61547649923543846 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61547649923543835 2.25
		-5.7491853075117283e-016 1.2309529984708769 -2.25
		2.25 1.2309529984708769 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2309529984708769 2.25
		-2.25 1.2309529984708769 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2309529984708769 -2.25
		2.25 1.2309529984708769 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2309529984708769 2.25
		-5.7491853075117283e-016 1.8464294977063154 -2.25
		2.25 1.8464294977063154 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8464294977063154 2.25
		-2.25 1.8464294977063154 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8464294977063154 -2.25
		2.25 1.8464294977063154 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8464294977063154 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 177.5098428182873 59.198052489194986 155.36824194606257 ;
	setAttr ".rp" -type "double3" -0.19768865559352533 4.5883859039748591 -1.3288708370847822 ;
	setAttr ".sp" -type "double3" -0.19768865559352533 4.5883859039748591 -1.3288708370847822 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -0.19768865559352555 4.5883859039748733 -1.3288708370847857 ;
	setAttr ".sp" -type "double3" -0.19768865559352555 4.5883859039748733 -1.3288708370847857 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -0.19770192947744403 7.4041814814250042 -0.53469313215253367 ;
	setAttr ".sp" -type "double3" -0.19770192947744403 7.4041814814250042 -0.53469313215253367 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.197688655593522 4.5883859039748804 -1.3288708370847893 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.9756933518293979e-016 7.9513867036587959e-016 8.6968292071268074e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999989 ;
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
		-5.7491853075117283e-016 1.2986711013642561e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2986711013642561e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2986711013642561e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2986711013642561e-016 2.25
		-5.7491853075117283e-016 0.58486946881808954 -2.25
		2.25 0.58486946881808954 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58486946881808943 2.25
		-2.25 0.58486946881808954 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58486946881808954 -2.25
		2.25 0.58486946881808954 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58486946881808943 2.25
		-5.7491853075117283e-016 1.1697389376361791 -2.25
		2.25 1.1697389376361791 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1697389376361791 2.25
		-2.25 1.1697389376361791 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1697389376361791 -2.25
		2.25 1.1697389376361791 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1697389376361791 2.25
		-5.7491853075117283e-016 1.7546084064542686 -2.25
		2.25 1.7546084064542686 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7546084064542686 2.25
		-2.25 1.7546084064542686 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7546084064542686 -2.25
		2.25 1.7546084064542686 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7546084064542686 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 37.981132993109291 0 8.1998675381481314e-016 ;
	setAttr ".rp" -type "double3" 6.0847915239747863e-006 1.7546084048713486 7.428181847757287e-005 ;
	setAttr ".sp" -type "double3" 6.0847915239747863e-006 1.7546084048713486 7.428181847757287e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.0847915239747863e-006 1.7546084048713535 7.4281818474020156e-005 ;
	setAttr ".sp" -type "double3" 6.0847915239747863e-006 1.7546084048713535 7.4281818474020156e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.0847915239747863e-006 1.7546084048713535 7.4281818474020156e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 1.5902773407317588e-015 -2.3854160110976384e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
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
		-5.7491853075117283e-016 9.0811807842882803e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.0811807842882803e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 9.0811807842882803e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.0811807842882803e-017 2.25
		-5.7491853075117283e-016 0.40898002396204808 -2.25
		2.25 0.40898002396204808 -1.6838337365057687e-016
		3.0430166849879092e-016 0.40898002396204802 2.25
		-2.25 0.40898002396204808 3.5695323650011823e-016
		-5.7491853075117283e-016 0.40898002396204808 -2.25
		2.25 0.40898002396204808 -1.6838337365057687e-016
		3.0430166849879092e-016 0.40898002396204802 2.25
		-5.7491853075117283e-016 0.81796004792409616 -2.25
		2.25 0.81796004792409616 -1.0715305595945801e-016
		3.0430166849879092e-016 0.81796004792409616 2.25
		-2.25 0.81796004792409616 4.1818355419123709e-016
		-5.7491853075117283e-016 0.81796004792409616 -2.25
		2.25 0.81796004792409616 -1.0715305595945801e-016
		3.0430166849879092e-016 0.81796004792409616 2.25
		-5.7491853075117283e-016 1.2269400718861443 -2.25
		2.25 1.2269400718861443 -4.5922738268339147e-017
		3.0430166849879092e-016 1.2269400718861443 2.25
		-2.25 1.2269400718861443 4.7941387188235596e-016
		-5.7491853075117283e-016 1.2269400718861443 -2.25
		2.25 1.2269400718861443 -4.5922738268339147e-017
		3.0430166849879092e-016 1.2269400718861443 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" 5.3089924386768281 7.9513867036587899e-016 2.7829853462805764e-015 ;
	setAttr ".rp" -type "double3" -3.8717350893335833e-005 1.2269400708689648 3.1575466113764605e-005 ;
	setAttr ".sp" -type "double3" -3.8717350893335833e-005 1.2269400708689648 3.1575466113764605e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.8717350891559477e-005 1.2269400708689648 3.1575466113764605e-005 ;
	setAttr ".sp" -type "double3" -3.8717350891559477e-005 1.2269400708689648 3.1575466113764605e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8717350891559477e-005 1.2269400708689648 3.1575466113764605e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 7.9513867036587899e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
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
		-5.7491853075117283e-016 1.2836480827856713e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2836480827856713e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2836480827856713e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2836480827856713e-016 2.25
		-5.7491853075117283e-016 0.57810370273084011 -2.25
		2.25 0.57810370273084011 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57810370273084 2.25
		-2.25 0.57810370273084011 3.5695323650011823e-016
		-5.7491853075117283e-016 0.57810370273084011 -2.25
		2.25 0.57810370273084011 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57810370273084 2.25
		-5.7491853075117283e-016 1.1562074054616802 -2.25
		2.25 1.1562074054616802 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1562074054616802 2.25
		-2.25 1.1562074054616802 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1562074054616802 -2.25
		2.25 1.1562074054616802 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1562074054616802 2.25
		-5.7491853075117283e-016 1.7343111081925202 -2.25
		2.25 1.7343111081925202 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7343111081925202 2.25
		-2.25 1.7343111081925202 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7343111081925202 -2.25
		2.25 1.7343111081925202 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7343111081925202 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 179.82865331956611 51.982906158062775 154.61220448028445 ;
	setAttr ".rp" -type "double3" 0.37700330450688302 4.2073119325362445 -0.24666353749382353 ;
	setAttr ".sp" -type "double3" 0.37700330450688302 4.2073119325362445 -0.24666353749382353 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.37700330450688924 4.2073119325362365 -0.24666353749381997 ;
	setAttr ".sp" -type "double3" 0.37700330450688924 4.2073119325362365 -0.24666353749381997 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.37703754362408404 7.3722791777767469 0.58104261166346904 ;
	setAttr ".sp" -type "double3" 0.37703754362408404 7.3722791777767469 0.58104261166346904 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.37700330450689812 4.2073119325362294 -0.24666353749381642 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587939e-016 0 -9.9392333795734899e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 1.7558812902777193e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7558812902777193e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7558812902777193e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7558812902777193e-016 2.25
		-5.7491853075117283e-016 0.79077863246015623 -2.25
		2.25 0.79077863246015623 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79077863246015612 2.25
		-2.25 0.79077863246015623 3.5695323650011823e-016
		-5.7491853075117283e-016 0.79077863246015623 -2.25
		2.25 0.79077863246015623 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79077863246015612 2.25
		-5.7491853075117283e-016 1.5815572649203125 -2.25
		2.25 1.5815572649203125 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5815572649203125 2.25
		-2.25 1.5815572649203125 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5815572649203125 -2.25
		2.25 1.5815572649203125 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5815572649203125 2.25
		-5.7491853075117283e-016 2.3723358973804687 -2.25
		2.25 2.3723358973804687 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3723358973804687 2.25
		-2.25 2.3723358973804687 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3723358973804687 -2.25
		2.25 2.3723358973804687 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3723358973804687 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 41.372183196549692 -1.5902773407317584e-015 1.7890620083232284e-015 ;
	setAttr ".rp" -type "double3" 6.8478234368285484e-005 2.3723358963647936 -1.1392299658297134e-005 ;
	setAttr ".sp" -type "double3" 6.8478234368285484e-005 2.3723358963647936 -1.1392299658297134e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.1392299663626204e-005 ;
	setAttr ".sp" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.1392299663626204e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.1392299663626204e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 3.1805546814635168e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
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
		-5.7491853075117283e-016 1.1694828757071388e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1694828757071388e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.1694828757071388e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1694828757071388e-016 2.25
		-5.7491853075117283e-016 0.52668826432508464 -2.25
		2.25 0.52668826432508464 -1.6838337365057687e-016
		3.0430166849879092e-016 0.52668826432508453 2.25
		-2.25 0.52668826432508464 3.5695323650011823e-016
		-5.7491853075117283e-016 0.52668826432508464 -2.25
		2.25 0.52668826432508464 -1.6838337365057687e-016
		3.0430166849879092e-016 0.52668826432508453 2.25
		-5.7491853075117283e-016 1.0533765286501693 -2.25
		2.25 1.0533765286501693 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0533765286501693 2.25
		-2.25 1.0533765286501693 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0533765286501693 -2.25
		2.25 1.0533765286501693 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0533765286501693 2.25
		-5.7491853075117283e-016 1.580064792975254 -2.25
		2.25 1.580064792975254 -4.5922738268339147e-017
		3.0430166849879092e-016 1.580064792975254 2.25
		-2.25 1.580064792975254 4.7941387188235596e-016
		-5.7491853075117283e-016 1.580064792975254 -2.25
		2.25 1.580064792975254 -4.5922738268339147e-017
		3.0430166849879092e-016 1.580064792975254 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 1.9626660162426832 -3.1805546814635152e-015 -4.7708320221952728e-015 ;
	setAttr ".rp" -type "double3" -6.6039473987089536e-005 1.5800647913811332 2.6008281665212962e-005 ;
	setAttr ".sp" -type "double3" -6.6039473987089536e-005 1.5800647913811332 2.6008281665212962e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -6.603947398531318e-005 1.580064791381119 2.600828167231839e-005 ;
	setAttr ".sp" -type "double3" -6.603947398531318e-005 1.580064791381119 2.600828167231839e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.603947398531318e-005 1.580064791381119 2.600828167231839e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270304e-015 -1.5902773407317576e-015 -4.7708320221952728e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
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
		-5.7491853075117283e-016 1.210805620169434e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.210805620169434e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.210805620169434e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.210805620169434e-016 2.25
		-5.7491853075117283e-016 0.54529837398131653 -2.25
		2.25 0.54529837398131653 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54529837398131642 2.25
		-2.25 0.54529837398131653 3.5695323650011823e-016
		-5.7491853075117283e-016 0.54529837398131653 -2.25
		2.25 0.54529837398131653 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54529837398131642 2.25
		-5.7491853075117283e-016 1.0905967479626331 -2.25
		2.25 1.0905967479626331 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0905967479626331 2.25
		-2.25 1.0905967479626331 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0905967479626331 -2.25
		2.25 1.0905967479626331 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0905967479626331 2.25
		-5.7491853075117283e-016 1.6358951219439497 -2.25
		2.25 1.6358951219439497 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6358951219439497 2.25
		-2.25 1.6358951219439497 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6358951219439497 -2.25
		2.25 1.6358951219439497 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6358951219439497 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -176.19892438932288 46.689051655795517 155.1435484896781 ;
	setAttr ".rp" -type "double3" 1.1710172487595076 3.8571156106059163 0.74070443466187008 ;
	setAttr ".sp" -type "double3" 1.1710172487595076 3.8571156106059163 0.74070443466187008 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.1710172487595063 3.8571156106059146 0.74070443466187186 ;
	setAttr ".sp" -type "double3" 1.1710172487595063 3.8571156106059146 0.74070443466187186 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 1.1710118713393278 6.8453584527659093 1.6233920476325849 ;
	setAttr ".sp" -type "double3" 1.1710118713393278 6.8453584527659093 1.6233920476325849 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.1710172487595072 3.8571156106059079 0.74070443466187896 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587919e-016 3.1805546814635176e-015 -2.3854160110976384e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
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
		-5.7491853075117283e-016 1.2513477017993582e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2513477017993582e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2513477017993582e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2513477017993582e-016 2.25
		-5.7491853075117283e-016 0.56355690435345163 -2.25
		2.25 0.56355690435345163 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56355690435345152 2.25
		-2.25 0.56355690435345163 3.5695323650011823e-016
		-5.7491853075117283e-016 0.56355690435345163 -2.25
		2.25 0.56355690435345163 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56355690435345152 2.25
		-5.7491853075117283e-016 1.1271138087069033 -2.25
		2.25 1.1271138087069033 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1271138087069033 2.25
		-2.25 1.1271138087069033 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1271138087069033 -2.25
		2.25 1.1271138087069033 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1271138087069033 2.25
		-5.7491853075117283e-016 1.6906707130603549 -2.25
		2.25 1.6906707130603549 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6906707130603549 2.25
		-2.25 1.6906707130603549 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6906707130603549 -2.25
		2.25 1.6906707130603549 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6906707130603549 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 28.163696160124719 0 -1.9878466759146976e-015 ;
	setAttr ".rp" -type "double3" 1.02943902939856e-005 1.6906707126992844 3.3390134955624262e-005 ;
	setAttr ".sp" -type "double3" 1.02943902939856e-005 1.6906707126992844 3.3390134955624262e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.0294390295761957e-005 1.6906707126992853 3.3390134957400619e-005 ;
	setAttr ".sp" -type "double3" 1.0294390295761957e-005 1.6906707126992853 3.3390134957400619e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.0294390295761957e-005 1.6906707126992853 3.3390134957400619e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
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
		-5.7491853075117283e-016 1.0535323803664426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0535323803664426e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0535323803664426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0535323803664426e-016 2.25
		-5.7491853075117283e-016 0.47446880356410626 -2.25
		2.25 0.47446880356410626 -1.6838337365057687e-016
		3.0430166849879092e-016 0.4744688035641062 2.25
		-2.25 0.47446880356410626 3.5695323650011823e-016
		-5.7491853075117283e-016 0.47446880356410626 -2.25
		2.25 0.47446880356410626 -1.6838337365057687e-016
		3.0430166849879092e-016 0.4744688035641062 2.25
		-5.7491853075117283e-016 0.94893760712821251 -2.25
		2.25 0.94893760712821251 -1.0715305595945801e-016
		3.0430166849879092e-016 0.94893760712821251 2.25
		-2.25 0.94893760712821251 4.1818355419123709e-016
		-5.7491853075117283e-016 0.94893760712821251 -2.25
		2.25 0.94893760712821251 -1.0715305595945801e-016
		3.0430166849879092e-016 0.94893760712821251 2.25
		-5.7491853075117283e-016 1.4234064106923188 -2.25
		2.25 1.4234064106923188 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4234064106923188 2.25
		-2.25 1.4234064106923188 4.7941387188235596e-016
		-5.7491853075117283e-016 1.4234064106923188 -2.25
		2.25 1.4234064106923188 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4234064106923188 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 13.419380546313405 3.1805546814635168e-015 -1.5902773407317584e-015 ;
	setAttr ".rp" -type "double3" -3.1343620947588136e-005 1.4234064101499282 -2.3699300893298414e-005 ;
	setAttr ".sp" -type "double3" -3.1343620947588136e-005 1.4234064101499282 -2.3699300893298414e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.1343620950252671e-005 1.4234064101499246 -2.3699300891522057e-005 ;
	setAttr ".sp" -type "double3" -3.1343620950252671e-005 1.4234064101499246 -2.3699300891522057e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.1343620950252671e-005 1.4234064101499246 -2.3699300891522057e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635183e-015 1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
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
		-5.7491853075117283e-016 1.3020978444616986e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3020978444616986e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3020978444616986e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3020978444616986e-016 2.25
		-5.7491853075117283e-016 0.58641273671176319 -2.25
		2.25 0.58641273671176319 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58641273671176308 2.25
		-2.25 0.58641273671176319 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58641273671176319 -2.25
		2.25 0.58641273671176319 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58641273671176308 2.25
		-5.7491853075117283e-016 1.1728254734235264 -2.25
		2.25 1.1728254734235264 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1728254734235264 2.25
		-2.25 1.1728254734235264 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1728254734235264 -2.25
		2.25 1.1728254734235264 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1728254734235264 2.25
		-5.7491853075117283e-016 1.7592382101352895 -2.25
		2.25 1.7592382101352895 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7592382101352895 2.25
		-2.25 1.7592382101352895 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7592382101352895 -2.25
		2.25 1.7592382101352895 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7592382101352895 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -176.87589629592046 43.789667966965958 151.35001943964056 ;
	setAttr ".rp" -type "double3" 1.9660911224990214 3.3981591151080233 1.5474740923319725 ;
	setAttr ".sp" -type "double3" 1.9660911224990214 3.3981591151080233 1.5474740923319725 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.966091122499015 3.3981591151080304 1.5474740923319708 ;
	setAttr ".sp" -type "double3" 1.966091122499015 3.3981591151080304 1.5474740923319708 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 1.9660698104692134 5.9883829905728412 2.2320378717694149 ;
	setAttr ".sp" -type "double3" 1.9660698104692134 5.9883829905728412 2.2320378717694149 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.9660911224990123 3.3981591151080237 1.5474740923319672 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.590277340731758e-015 0 7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 1.0641818256042153e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0641818256042153e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0641818256042153e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0641818256042153e-016 2.25
		-5.7491853075117283e-016 0.4792648873245598 -2.25
		2.25 0.4792648873245598 -1.6838337365057687e-016
		3.0430166849879092e-016 0.47926488732455974 2.25
		-2.25 0.4792648873245598 3.5695323650011823e-016
		-5.7491853075117283e-016 0.4792648873245598 -2.25
		2.25 0.4792648873245598 -1.6838337365057687e-016
		3.0430166849879092e-016 0.47926488732455974 2.25
		-5.7491853075117283e-016 0.95852977464911959 -2.25
		2.25 0.95852977464911959 -1.0715305595945801e-016
		3.0430166849879092e-016 0.95852977464911959 2.25
		-2.25 0.95852977464911959 4.1818355419123709e-016
		-5.7491853075117283e-016 0.95852977464911959 -2.25
		2.25 0.95852977464911959 -1.0715305595945801e-016
		3.0430166849879092e-016 0.95852977464911959 2.25
		-5.7491853075117283e-016 1.4377946619736794 -2.25
		2.25 1.4377946619736794 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4377946619736794 2.25
		-2.25 1.4377946619736794 4.7941387188235596e-016
		-5.7491853075117283e-016 1.4377946619736794 -2.25
		2.25 1.4377946619736794 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4377946619736794 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 24.348262730400947 3.1805546814635176e-015 -2.3854160110976384e-015 ;
	setAttr ".rp" -type "double3" -3.5496894200903739e-005 1.4377946615243036 -5.6739299445496272e-006 ;
	setAttr ".sp" -type "double3" -3.5496894200903739e-005 1.4377946615243036 -5.6739299445496272e-006 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5496894196462847e-005 1.4377946615242916 -5.6739299445496272e-006 ;
	setAttr ".sp" -type "double3" -3.5496894196462847e-005 1.4377946615242916 -5.6739299445496272e-006 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5496894196462847e-005 1.4377946615242916 -5.6739299445496272e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 -1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
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
		-5.7491853075117283e-016 7.8412888149137133e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -7.8412888149137133e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 7.8412888149137133e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -7.8412888149137133e-017 2.25
		-5.7491853075117283e-016 0.35314025384949838 -2.25
		2.25 0.35314025384949838 -1.6838337365057687e-016
		3.0430166849879092e-016 0.35314025384949832 2.25
		-2.25 0.35314025384949838 3.5695323650011823e-016
		-5.7491853075117283e-016 0.35314025384949838 -2.25
		2.25 0.35314025384949838 -1.6838337365057687e-016
		3.0430166849879092e-016 0.35314025384949832 2.25
		-5.7491853075117283e-016 0.70628050769899675 -2.25
		2.25 0.70628050769899675 -1.0715305595945801e-016
		3.0430166849879092e-016 0.70628050769899675 2.25
		-2.25 0.70628050769899675 4.1818355419123709e-016
		-5.7491853075117283e-016 0.70628050769899675 -2.25
		2.25 0.70628050769899675 -1.0715305595945801e-016
		3.0430166849879092e-016 0.70628050769899675 2.25
		-5.7491853075117283e-016 1.0594207615484952 -2.25
		2.25 1.0594207615484952 -4.5922738268339147e-017
		3.0430166849879092e-016 1.0594207615484952 2.25
		-2.25 1.0594207615484952 4.7941387188235596e-016
		-5.7491853075117283e-016 1.0594207615484952 -2.25
		2.25 1.0594207615484952 -4.5922738268339147e-017
		3.0430166849879092e-016 1.0594207615484952 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 18.453507192123272 0 -4.7708320221952752e-015 ;
	setAttr ".rp" -type "double3" -7.1271654000781837e-006 1.0594207613231763 2.0654512745466036e-005 ;
	setAttr ".sp" -type "double3" -7.1271654000781837e-006 1.0594207613231763 2.0654512745466036e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -7.1271654018545405e-006 1.0594207613231763 2.0654512743689679e-005 ;
	setAttr ".sp" -type "double3" -7.1271654018545405e-006 1.0594207613231763 2.0654512743689679e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1271654018545405e-006 1.0594207613231763 2.0654512743689679e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 1.5902773407317584e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
		-5.7491853075117283e-016 1.0285637149489298e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0285637149489298e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0285637149489298e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0285637149489298e-016 2.25
		-5.7491853075117283e-016 0.46322391633708132 -2.25
		2.25 0.46322391633708132 -1.6838337365057687e-016
		3.0430166849879092e-016 0.46322391633708127 2.25
		-2.25 0.46322391633708132 3.5695323650011823e-016
		-5.7491853075117283e-016 0.46322391633708132 -2.25
		2.25 0.46322391633708132 -1.6838337365057687e-016
		3.0430166849879092e-016 0.46322391633708127 2.25
		-5.7491853075117283e-016 0.92644783267416264 -2.25
		2.25 0.92644783267416264 -1.0715305595945801e-016
		3.0430166849879092e-016 0.92644783267416264 2.25
		-2.25 0.92644783267416264 4.1818355419123709e-016
		-5.7491853075117283e-016 0.92644783267416264 -2.25
		2.25 0.92644783267416264 -1.0715305595945801e-016
		3.0430166849879092e-016 0.92644783267416264 2.25
		-5.7491853075117283e-016 1.389671749011244 -2.25
		2.25 1.389671749011244 -4.5922738268339147e-017
		3.0430166849879092e-016 1.389671749011244 2.25
		-2.25 1.389671749011244 4.7941387188235596e-016
		-5.7491853075117283e-016 1.389671749011244 -2.25
		2.25 1.389671749011244 -4.5922738268339147e-017
		3.0430166849879092e-016 1.389671749011244 2.25
		
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
	setAttr ".rst" -type "double3" -20.208987296429338 46.597764697082042 5.8771197505062656 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 2.1156824011416027 
		1.9011005585245147e-014 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952752e-015 3.180554681463516e-015 
		1.2722218725854064e-014 ;
	setAttr ".tg[1].tot" -type "double3" -1.5092990324205857e-007 2.1156824011416044 
		1.9112238042482682e-014 ;
	setAttr ".tg[1].tor" -type "double3" 0 -6.3611093629270335e-015 -2.5444437451708134e-014 ;
	setAttr ".lr" -type "double3" 142.49355823023745 1.536129215208307 -27.652705691471514 ;
	setAttr ".rst" -type "double3" 14.230965769645273 73.149575405287806 -21.01500474340169 ;
	setAttr ".rsrr" -type "double3" 142.20007354540033 9.3871507088809718 -30.72823218527973 ;
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
	setAttr ".rp" -type "double3" -7.161317599926206 21.454633863804432 -2.2087555364203872 ;
	setAttr ".sp" -type "double3" -7.161317599926206 21.454633863804432 -2.2087555364203872 ;
	setAttr ".hdl" -type "double3" -7.161317599926206 21.454633863804432 -2.2087555364203872 ;
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
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-7.161317599926206 21.454633863804432 -3.2087555364203872
		-7.161317599926206 20.454633863804432 -2.2087555364203872
		-7.161317599926206 21.454633863804432 -1.2087555364203872
		-7.161317599926206 22.454633863804432 -2.2087555364203872
		-7.161317599926206 21.454633863804432 -3.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		
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
	setAttr ".r" -type "double3" 0 -12.089161139776348 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -9.5333420975430965 3.6971414049102895 -3.1120230335238297 ;
	setAttr ".rpt" -type "double3" 0.86318428311741369 0 -1.9275863147216807 ;
	setAttr ".sp" -type "double3" -9.5333420975430965 3.6971414049102895 -3.1120230335238297 ;
	setAttr ".hdl" -type "double3" -9.5333420975430965 3.6971414049102895 -3.1120230335238297 ;
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
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-10.37725462336085 0.81499316455672943 -5.4324099133439425
		-10.37725462336085 0.81499316455672943 1.1559514107893776
		-10.37725462336085 6.5792896452638496 1.1559514107893776
		-10.37725462336085 6.5792896452638496 -5.4324099133439425
		-10.37725462336085 0.81499316455672943 -5.4324099133439425
		-8.6894295717253431 0.81499316455672899 -5.4324099133439425
		-8.6894295717253431 0.81499316455672943 1.1559514107893776
		-8.6894295717253431 6.5792896452638505 1.1559514107893776
		-8.6894295717253431 6.5792896452638505 -5.4324099133439425
		-8.6894295717253431 0.81499316455672943 -5.4324099133439434
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -8.6701577913647228 3.6971414021702138 -5.0396093433492108 ;
	setAttr ".sp" -type "double3" -8.6701577913647228 3.6971414021702138 -5.0396093433492108 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -8.6701577913647228 3.6971414021702138 -5.0396093433492108 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -113.6613330758445 2.8043332732948465 6.3712354089316978 ;
	setAttr ".rp" -type "double3" 5.2017198775566875e-006 7.4108842515258342 0.77002763037848376 ;
	setAttr ".sp" -type "double3" 5.2017198775566875e-006 7.4108842515258342 0.77002763037848376 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" 5.2017198775566875e-006 7.4108842515258342 0.77002763037848376 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" -2.0435369214668935 0.0016309684142482507 -0.32014433666886344 ;
	setAttr ".sp" -type "double3" -2.0435369214668935 0.0016309684142482507 -0.32014433666886344 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.0435369214668935 0.0016309684142482507 -0.32014433666886344 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" 3.3128029763681779 -0.036825998686254025 -0.64729738551960514 ;
	setAttr ".sp" -type "double3" 3.3128029763681779 -0.036825998686254025 -0.64729738551960514 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 3.3128029763681779 -0.036825998686254025 -0.64729738551960514 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" 2.1186750230640761e-030 0 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" -2.3648002249905451 0.035195030272010749 -8.0083606732534225 ;
	setAttr ".sp" -type "double3" -2.3648002249905451 0.035195030272010749 -8.0083606732534225 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -2.3648002249905451 0.035195030272010749 -8.0083606732534225 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 2.1186750230640761e-030 0 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" 1.6324513366553492 -6.0817133295986167e-015 13.374809310420341 ;
	setAttr ".sp" -type "double3" 1.6324513366553492 -6.0817133295986167e-015 13.374809310420341 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 1.6324513366553492 -6.0817133295986167e-015 13.374809310420341 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 90.000000000000057 6.9587699540071419 -4.0051972696890664e-016 ;
	setAttr ".rp" -type "double3" -0.53687963771961622 0.84172155459865494 -4.3990435786117148 ;
	setAttr ".sp" -type "double3" -0.53687963771961622 0.84172155459865494 -4.3990435786117148 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -0.53687963771961622 0.84172155459865494 -4.3990435786117148 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 23.817444586876572 -7.0622500768802538e-031 0 ;
	setAttr ".rp" -type "double3" -4.6896098812698739e-005 -6.4687619661257596 -2.855419847571556 ;
	setAttr ".sp" -type "double3" -4.6896098812698739e-005 -6.4687619661257596 -2.855419847571556 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" -4.6896098812698739e-005 -6.4687619661257596 -2.855419847571556 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.1444271318051751 3.0192777502492163 -1.0726846993541317 ;
	setAttr ".r" -type "double3" -113.34632918518376 -4.8515454094756487 -11.08625209991955 ;
	setAttr ".rp" -type "double3" -8.2724221083797413 0.23792497449942474 -5.0396093433491949 ;
	setAttr ".rpt" -type "double3" -0.87200502342542929 -3.2572027247486428 6.1122940427033257 ;
	setAttr ".sp" -type "double3" -8.2724221083797609 0.2379249744994425 -5.0396093433492029 ;
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
	setAttr ".rst" -type "double3" -2.5699891645957935 7.3555281973151345 20.894031865192101 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1892442431687309 1.2512447052918436 -9.5406264409872801 ;
	setAttr ".r" -type "double3" 3.0891953769088545e-014 19.047933 7.6115886721801194e-015 ;
	setAttr ".rp" -type "double3" -7.0905970974101002 -0.40952315069439882 2.9912876545310048 ;
	setAttr ".rpt" -type "double3" 1.3644732165216156 0 2.1502952078440383 ;
	setAttr ".sp" -type "double3" -7.0905970974100994 -0.40952315069439815 2.9912876545310043 ;
	setAttr ".pv" -type "double3" 1.9852657079997498 5.3104572663215202e-006 -0.24232224126573709 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 90.000000000000057 6.9587699540071419 4.0051972696890383e-016 ;
	setAttr ".rp" -type "double3" 1.0955716989357338 0.84172155459864906 8.975765731808627 ;
	setAttr ".sp" -type "double3" 1.0955716989357338 0.84172155459864906 8.975765731808627 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 1.0955716989357338 0.84172155459864906 8.975765731808627 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -90.000000000000057 0 6.9587699540071455 ;
	setAttr ".rp" -type "double3" -4.1694378931866893e-005 4.4316841212099582 0.84172155459865017 ;
	setAttr ".sp" -type "double3" -4.1694378931866893e-005 4.4316841212099582 0.84172155459865017 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -4.1694378931866893e-005 4.4316841212099582 0.84172155459865017 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4204046686920435 0.47392224144186951 -6.3596950422767495 ;
	setAttr ".r" -type "double3" 3.1364421352098584e-014 19.047933000000004 1.5891452180391663e-014 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -5.3086441971157106 0.36779986233661538 4.8951664964238608 ;
	setAttr ".rpt" -type "double3" 1.8882520414742108 0 1.4644935370140166 ;
	setAttr ".sp" -type "double3" -5.3086441971157123 0.36779986233661532 4.8951664964238617 ;
	setAttr ".spt" -type "double3" 8.8817841970012504e-016 0 -8.8817841970012504e-016 ;
	setAttr ".pv" -type "double3" 1.985268551610281 -5.8569041677605695e-008 -0.24229894342982655 ;
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
	setAttr ".lr" -type "double3" -90.000000000000057 0 0 ;
	setAttr ".o" -type "double3" 90.000000000000057 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" 1.0955718198210398 0.84172154088217532 8.9757657097772388 ;
	setAttr ".r" -type "double3" 2.9417191003432539e-014 6.958769954007141 -9.0757090183040531e-016 ;
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
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-0.84391252581775311 -1.0291955680272693 -0.18966501208066194
		-0.84391252581775333 -1.0291955680272691 3.2494036751315232
		-0.84391252581775344 1.0291955680272693 3.2494036751315227
		-0.84391252581775322 1.0291955680272693 -0.18966501208066194
		-0.84391252581775311 -1.0291955680272691 -0.18966501208066217
		0.84391252581775344 -1.0291955680272695 -0.18966501208066205
		0.84391252581775322 -1.0291955680272693 3.2494036751315232
		0.84391252581775311 1.0291955680272695 3.2494036751315232
		0.84391252581775333 1.0291955680272695 -0.18966501208066205
		0.84391252581775344 -1.0291955680272693 -0.18966501208066228
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		
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
	setAttr ".tg[0].tot" -type "double3" 2.3574981966589803e-008 -2.7400750292128879e-009 
		-4.2026005268528053e-011 ;
	setAttr ".tg[0].tor" -type "double3" 113.81744458687659 -1.9062165107305524e-006 
		0 ;
	setAttr ".lr" -type "double3" 113.81744458687659 -12.089163045992859 1.6263450109377633e-015 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 113.81744458687659 -12.08916304599286 1.6263450109377633e-015 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_pantsFront_RControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_pantsFront_RControl" -p "Ref:prp_pantsFront_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsFront_RControlShape" -p "Ref:prp_pantsFront_RControl";
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
createNode parentConstraint -n "Ref:prp_pantsFront_RControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsFront_RControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RFKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_RIKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" 0.2199224399220478 17.390200958518161 -3.2877448866046421 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305126446007 -0.79953186901401696 -6.5822864332919622 ;
	setAttr ".tg[1].tot" -type "double3" 0.21992239035317679 17.390200958228956 -3.2877448914494272 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305271173287 -0.79953061489897226 -6.5822865066299006 ;
	setAttr ".lr" -type "double3" 115.01549963017743 -0.58381021611911044 1.3289996920008911 ;
	setAttr ".rst" -type "double3" -9.1287964706439126 71.819467515748244 -1.1631242593681714 ;
	setAttr ".rsrr" -type "double3" -66.182555288124846 12.089161793477613 -1.2197587524922128e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_pantsBack_RControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_pantsBack_RControl" -p "Ref:prp_pantsBack_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsBack_RControlShape" -p "Ref:prp_pantsBack_RControl";
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
createNode parentConstraint -n "Ref:prp_pantsBack_RControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsBack_RControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RFKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_RIKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" 0.25573963171305047 18.439130914754401 2.7803694700522206 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305126446007 -0.79953186901401696 -6.5822864332919622 ;
	setAttr ".tg[1].tot" -type "double3" 0.25573971722664246 18.439130914418094 2.7803694644182482 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305271173287 -0.79953061489897226 -6.5822865066299006 ;
	setAttr ".lr" -type "double3" 115.01549963017743 -0.58381021611911044 1.3289996920008911 ;
	setAttr ".rst" -type "double3" -7.8398301215255568 72.03554162553479 4.8548011721823974 ;
	setAttr ".rsrr" -type "double3" -66.182555288124846 12.089161793477613 -1.2197587524922128e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_pantsFront_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Ref:prp_pantsFront_LControl" -p "Ref:prp_pantsFront_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsFront_LControlShape" -p "Ref:prp_pantsFront_LControl";
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
createNode parentConstraint -n "Ref:prp_pantsFront_LControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsFront_LControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LFKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_LIKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" -0.21990804124939767 -17.390226661623498 3.2877595969484554 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305249081732 -0.79953062799773511 -6.5822866026389546 ;
	setAttr ".tg[1].tot" -type "double3" -0.21990804124939589 -17.390226661623487 3.287759596948459 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305249081732 -0.79953062799775743 -6.5822866026391127 ;
	setAttr ".lr" -type "double3" -64.984897989052612 0.58723767194592968 -1.3285641126253398 ;
	setAttr ".rst" -type "double3" 9.1287767599822303 71.819465552484729 -1.1631432613453143 ;
	setAttr ".rsrr" -type "double3" 113.81744458687669 -12.089163045992837 -3.008738270234863e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_pantsBack_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Ref:prp_pantsBack_LControl" -p "Ref:prp_pantsBack_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsBack_LControlShape" -p "Ref:prp_pantsBack_LControl";
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
createNode parentConstraint -n "Ref:prp_pantsBack_LControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsBack_LControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LFKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_LIKW1" -bt "W001" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" -0.25569978766978552 -18.43915106154445 -2.7803390056974027 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305249081732 -0.79953062799773511 -6.5822866026389546 ;
	setAttr ".tg[1].tot" -type "double3" -0.25569978766978463 -18.43915106154444 -2.7803390056973991 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305249081732 -0.79953062799775743 -6.5822866026391127 ;
	setAttr ".lr" -type "double3" -64.984897989052612 0.58723767194592968 -1.3285641126253398 ;
	setAttr ".rst" -type "double3" 7.8398381540643367 72.035533386362729 4.85477133248465 ;
	setAttr ".rsrr" -type "double3" 113.81744458687669 -12.089163045992837 -3.008738270234863e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristOuter_RControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "Ref:prp_wristOuter_RControl" -p "Ref:prp_wristOuter_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristOuter_RControlShape" -p "Ref:prp_wristOuter_RControl";
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
createNode parentConstraint -n "Ref:prp_wristOuter_RControlGroup_parentConstraint1" 
		-p "Ref:prp_wristOuter_RControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -1.7250787743783165 13.709135572155416 1.1485831910545077 ;
	setAttr ".tg[0].tor" -type "double3" 0.00013058663104212545 42.792804551460591 -0.17794172820706158 ;
	setAttr ".tg[1].tot" -type "double3" -1.7250787743783271 13.709135572155413 1.1485831910545059 ;
	setAttr ".tg[1].tor" -type "double3" 0.00013058663105296111 42.792804551460598 -0.17794172820710494 ;
	setAttr ".lr" -type "double3" 134.66227670057279 -31.175765813259222 1.3959278322013771 ;
	setAttr ".rst" -type "double3" -22.380041776499233 29.261174231935435 -8.5629768700043343 ;
	setAttr ".rsrr" -type "double3" -41.448600163678798 24.11297320360649 3.4600602193795664 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristInner_RControlGroup" -p "main";
createNode transform -n "Ref:prp_wristInner_RControl" -p "Ref:prp_wristInner_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristInner_RControlShape" -p "Ref:prp_wristInner_RControl";
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
createNode parentConstraint -n "Ref:prp_wristInner_RControlGroup_parentConstraint1" 
		-p "Ref:prp_wristInner_RControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 2.5775728054310698 13.695775631130948 -1.951925109972855 ;
	setAttr ".tg[0].tor" -type "double3" 0.00011302501830839765 32.023152907915097 -0.17797050925720717 ;
	setAttr ".tg[1].tot" -type "double3" 2.5775728054310711 13.695775631130946 -1.9519251099728532 ;
	setAttr ".tg[1].tor" -type "double3" 0.00011302501831402473 32.023152907915104 -0.17797050925724095 ;
	setAttr ".lr" -type "double3" 138.48827529196851 -23.338759469994198 -6.9269284199372878 ;
	setAttr ".rst" -type "double3" -17.412276363257622 29.991147226606188 -10.270193041451828 ;
	setAttr ".rsrr" -type "double3" -38.912827881236758 15.872716883449039 10.848491821391343 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristOuter_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_wristOuter_LControl" -p "Ref:prp_wristOuter_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristOuter_LControlShape" -p "Ref:prp_wristOuter_LControl";
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
createNode parentConstraint -n "Ref:prp_wristOuter_LControlGroup_parentConstraint1" 
		-p "Ref:prp_wristOuter_LControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 1.7250645456249338 -13.709154255017891 -1.148587981546946 ;
	setAttr ".tg[0].tor" -type "double3" 0.00013058664353783188 42.792804551460634 -0.17794172820709642 ;
	setAttr ".tg[1].tot" -type "double3" 1.7250645456249578 -13.709154255017918 -1.1485879815469566 ;
	setAttr ".tg[1].tor" -type "double3" 0.00013058664352916336 42.792804551460605 -0.17794172820708765 ;
	setAttr ".lr" -type "double3" -45.337723633036099 31.175766507453908 -1.395929127520847 ;
	setAttr ".rst" -type "double3" 22.380025090163322 29.261223007874648 -8.5629832708502001 ;
	setAttr ".rsrr" -type "double3" 138.55139983633373 -24.112973203606533 -3.4600602193794852 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristInner_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_wristInner_LControl" -p "Ref:prp_wristInner_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristInner_LControlShape" -p "Ref:prp_wristInner_LControl";
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
createNode parentConstraint -n "Ref:prp_wristInner_LControlGroup_parentConstraint1" 
		-p "Ref:prp_wristInner_LControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -2.5775889852303946 -13.695790117672077 1.9518861920116075 ;
	setAttr ".tg[0].tor" -type "double3" 0.00011302504329827504 32.023152907915069 -0.17797050925725225 ;
	setAttr ".tg[1].tot" -type "double3" -2.5775889852303715 -13.695790117672093 1.9518861920115924 ;
	setAttr ".tg[1].tor" -type "double3" 0.0001130250432870209 32.023152907915041 -0.17797050925724467 ;
	setAttr ".lr" -type "double3" -41.511724906169789 23.338760198195466 6.9269272188163189 ;
	setAttr ".rst" -type "double3" 17.412271157244341 29.991209654377798 -10.270169981654716 ;
	setAttr ".rsrr" -type "double3" 141.08717211878823 -15.872716883449014 -10.848491821391306 ;
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
	setAttr ".lr" -type "double3" 179.37598925560837 0 0 ;
	setAttr ".o" -type "double3" -179.37598925560837 0 0 ;
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
	setAttr ".rst" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-015 -2.2759572004815709e-015 
		9.9920072216264089e-016 ;
	setAttr ".tg[0].tor" -type "double3" -3.975693351829394e-016 4.7708320221952736e-015 
		-7.9513867036587899e-016 ;
	setAttr ".lr" -type "double3" -4.9696166897867469e-016 -6.3611093629270335e-015 
		2.3854160110976376e-015 ;
	setAttr ".rst" -type "double3" -3.7543481345544079 0.93809252740880567 3.9646855733137234 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-016 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_0_RControlW0" -bt "W000" 
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
	setAttr ".tg[0].tot" -type "double3" 1.6653345369377348e-016 -6.4392935428259079e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270351e-015 -6.3611093629270335e-015 
		-9.5416640443905503e-015 ;
	setAttr ".lr" -type "double3" -3.1805546814635183e-015 -1.2722218725854064e-014 
		2.0673605429512857e-014 ;
	setAttr ".rst" -type "double3" -8.0614333152771014 -0.72744149624840304 -1.1535807343154263 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317552e-015 -1.9083328088781091e-014 
		1.4312496066585818e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 2.2759572004815709e-015 
		-1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317576e-015 -3.180554681463516e-015 
		-7.9513867036587899e-016 ;
	setAttr ".lr" -type "double3" 3.975693351829395e-016 -8.2760743088440433e-033 2.3854160110976372e-015 ;
	setAttr ".rst" -type "double3" 3.7543477326084842 0.93809252733552029 3.9646855885757626 ;
	setAttr ".rsrr" -type "double3" -9.9392333795734874e-017 6.8967285907033694e-034 
		7.9513867036587899e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_0_LControlW0" -bt "W000" 
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
	setAttr ".tg[0].tot" -type "double3" -5.5511151231257827e-017 -1.7763568394002505e-015 
		2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635152e-015 -2.8624992133171641e-014 
		1.8288189418415214e-014 ;
	setAttr ".lr" -type "double3" -2.862499213317166e-014 6.3611093629270323e-014 -2.544443745170815e-014 ;
	setAttr ".rst" -type "double3" 8.0614333152770978 -0.72744149624841015 -1.1535807343154243 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317625e-015 3.1805546814635149e-014 
		-1.7493050748049334e-014 ;
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
	setAttr ".lr" -type "double3" 0.032170690505618091 -11.654096150174935 -0.31520789240978703 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 2.2860236773019026e-015 
		-2.9817700138720499e-016 ;
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
	setAttr ".lr" -type "double3" 1.1927080055488188e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -1.0734372049939369e-014 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_pantsBack_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsBack_RControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" -2.075210035660797e-008 -8.8637928617479388e-008 3.9126224372610383e-008 ;
	setAttr ".rst" -type "double3" 0.25573971722664357 18.439130914418094 2.7803694644182477 ;
	setAttr ".rsrr" -type "double3" -2.0752097523926466e-008 -8.8637935773727426e-008 
		3.9126229541011742e-008 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pantsFront_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsFront_RControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" -2.075210035660797e-008 -8.8637928617479388e-008 3.9126224372610383e-008 ;
	setAttr ".rst" -type "double3" 0.21992239035317773 17.390200958228945 -3.2877448914494249 ;
	setAttr ".rsrr" -type "double3" -2.0752097523926466e-008 -8.8637935773727426e-008 
		3.9126229541011742e-008 ;
	setAttr -k on ".w0";
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
	setAttr ".lr" -type "double3" -0.99332604885393894 3.6575922993226313 10.995383903818365 ;
	setAttr ".rsrr" -type "double3" -1.4138559482443289e-014 -3.9756933518293979e-016 
		-1.5902773407317584e-015 ;
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
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 0.032148024593009604 -11.650619233203512 -0.31510601868889415 ;
	setAttr ".rsrr" -type "double3" 176.14219390119879 -12.46010910140485 -5.6802692781476836 ;
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
	setAttr ".rsrr" -type "double3" -174.88117021888442 -12.352813195600532 -5.9127786965862486 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_pantsBack_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsBack_LControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" 1.9456049340515102e-014 2.4251729446159317e-014 -1.5902773407317581e-014 ;
	setAttr ".rst" -type "double3" -0.25569978766978618 -18.439151061544447 -2.7803390056974036 ;
	setAttr ".rsrr" -type "double3" 2.4848083448933281e-016 -3.2600685485001048e-014 
		1.5505204072134644e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pantsFront_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsFront_LControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" 1.9456049340515102e-014 2.4251729446159317e-014 -1.5902773407317581e-014 ;
	setAttr ".rst" -type "double3" -0.21990804124939523 -17.390226661623487 3.2877595969484541 ;
	setAttr ".rsrr" -type "double3" 2.4848083448933281e-016 -3.2600685485001048e-014 
		1.5505204072134644e-014 ;
	setAttr -k on ".w0";
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
	setAttr ".lr" -type "double3" -0.99313211201093587 3.6564838373491 10.992108013792718 ;
	setAttr ".rsrr" -type "double3" 1.8611214503251355e-014 -1.5902773407317576e-015 
		-1.1927080055488188e-015 ;
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
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 1.7763568394002505e-015 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".tg[1].tor" -type "double3" 1.590277340731758e-015 0 0 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.0054257108988196 -3.3306690738754696e-015 ;
	setAttr ".rsrr" -type "double3" 13.823764212370486 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -5.5511151231257827e-015 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 -3.1086244689504383e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.5416640443905471e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.590277340731758e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.1785104136763493 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976364e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.8580710319057069e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.4422717105948137e-015 0 0 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.2723806620927718 0 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -1.4210854715202004e-014 4.4408920985006262e-015 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587888e-015 0 0 ;
	setAttr ".lr" -type "double3" -4.7708320221952752e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.878670881985876 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 8.2495637050459969e-015 -7.7526020360673219e-015 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587919e-015 7.5538173684758519e-015 
		-7.7401779943428574e-015 ;
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
	setAttr ".lr" -type "double3" 9.5651513771305723 8.9427225976344626 -59.525162394141162 ;
	setAttr ".rsrr" -type "double3" 9.6554270699675957 0.58617602609505914 -58.441203783656462 ;
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
	setAttr ".lr" -type "double3" 12.557309855987342 0 0 ;
	setAttr ".rsrr" -type "double3" 12.557309855987343 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_wristInner_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristInner_RControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" -5.1516289010501843e-014 -6.398745473697814e-015 3.6640052050668339e-014 ;
	setAttr ".rst" -type "double3" 2.5775728054310711 13.695775631130953 -1.9519251099728461 ;
	setAttr ".rsrr" -type "double3" -1.4505068713315061e-014 -2.0358927747710544e-017 
		-1.5157330903849573e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_wristOuter_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristOuter_RControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" -4.6627428591924148e-014 -3.8192923804840971e-014 
		2.5525193722917186e-014 ;
	setAttr ".rst" -type "double3" -1.7250787743783071 13.709135572155443 1.1485831910545201 ;
	setAttr ".rsrr" -type "double3" 5.9386919442951606e-015 -1.9079943022725312e-014 
		-3.1712366501701676e-015 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 2.6645352591003757e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317581e-014 -9.5416640443905503e-015 
		0 ;
	setAttr ".lr" -type "double3" -4.2937488199757487e-014 4.4130196205306282e-014 -2.544443745170815e-014 ;
	setAttr ".rst" -type "double3" 1.9660911224990301 3.398159115108033 1.547474092331985 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 -4.7708320221952736e-015 
		-1.2722218725854067e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.0658141036401503e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270304e-015 -1.9083328088781101e-014 
		1.4312496066585827e-014 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.5496894200903739e-005 1.4377946615243045 -5.6739299516550545e-006 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.7763568394002505e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244605e-014 -6.361109362927032e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" -7.1271653974136484e-006 1.0594207613231834 2.0654512740136965e-005 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.5987211554602254e-014 -3.1086244689504383e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.2937488199757462e-014 -9.5416640443905471e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" 4.6118042881221007e-014 3.5781240166464497e-015 1.9083328088781107e-014 ;
	setAttr ".rst" -type "double3" 1.1710172487595116 3.8571156106059226 0.74070443466187541 ;
	setAttr ".rsrr" -type "double3" 3.8166656177562208e-014 -7.9513867036587872e-015 
		-1.590277340731759e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 1.7763568394002505e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-015 -1.5902773407317581e-014 
		1.5902773407317581e-014 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.0294390283327459e-005 1.6906707126992884 3.3390134959176976e-005 ;
	setAttr ".rsrr" -type "double3" -6.0430538947806815e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -9.7699626167013776e-015 8.8817841970012523e-015 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270304e-015 -7.9513867036587919e-015 
		1.9083328088781101e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" -3.1343620955581741e-005 1.4234064101499317 -2.3699300891522057e-005 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-014 -4.4408920985006262e-016 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.5322904210855115e-014 -2.2263882770244611e-014 
		1.4511280734177294e-014 ;
	setAttr ".lr" -type "double3" 2.7034714792439897e-014 2.9817700138720474e-014 3.1805546814635247e-015 ;
	setAttr ".rst" -type "double3" 0.37700330450687858 4.2073119325362489 -0.24666353749381997 ;
	setAttr ".rsrr" -type "double3" 4.1347210859025721e-014 1.749305074804935e-014 -2.2263882770244611e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.9539925233402755e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708122e-014 -1.4312496066585827e-014 
		2.3854160110976371e-014 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 6.8478234371838198e-005 2.372335896364782 -1.139229965474442e-005 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 -7.1054273576010019e-015 
		1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781094e-014 -1.2722218725854061e-014 
		5.0888874903416243e-014 ;
	setAttr ".lr" -type "double3" -6.5598940305185035e-014 0 0 ;
	setAttr ".rst" -type "double3" -6.6039473991530429e-005 1.5800647913811314 2.6008281684752887e-005 ;
	setAttr ".rsrr" -type "double3" -4.9298597562684508e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-014 -6.3282712403633923e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.6896696745274924e-014 -1.4312496066585821e-014 
		6.957463365701439e-016 ;
	setAttr ".lr" -type "double3" -4.7708320221952688e-015 2.9221346135946045e-014 1.5902773407317574e-014 ;
	setAttr ".rst" -type "double3" -0.19768865559352733 4.5883859039748502 -1.3288708370847768 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 3.776908684237926e-015 -9.5416640443905487e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -2.3092638912203256e-014 
		1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244617e-014 -1.9878466759146965e-014 
		9.1440947092076056e-015 ;
	setAttr ".lr" -type "double3" -5.7249984266343308e-014 0 0 ;
	setAttr ".rst" -type "double3" 6.0847915199779834e-006 1.7546084048713451 7.428181847757287e-005 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-015 -1.5987211554602254e-014 
		8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635152e-015 -1.4312496066585821e-014 
		2.1468744099878731e-014 ;
	setAttr ".lr" -type "double3" -3.975693351829396e-015 0 0 ;
	setAttr ".rst" -type "double3" -3.8717350898664904e-005 1.2269400708689702 3.1575466108435535e-005 ;
	setAttr ".rsrr" -type "double3" 3.6576378836830441e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.7462034302725442e-015 6.4392935428259079e-015 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.2302508483613835e-015 4.7708320221952736e-015 
		3.5781240166464568e-015 ;
	setAttr ".lr" -type "double3" -1.5902773407317576e-015 3.1805546814635168e-015 2.5444437451708134e-014 ;
	setAttr ".rst" -type "double3" 0.24749839881905444 1.3427813495108767 -1.684712687667469 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 -3.5781240166464583e-015 
		-8.7465253740246735e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.411537967210279e-015 1.4654943925052066e-014 
		-6.8833827526759706e-015 ;
	setAttr ".tg[0].tor" -type "double3" 8.3489560388417272e-015 1.2722218725854061e-014 
		-2.3854160110976364e-015 ;
	setAttr ".lr" -type "double3" 2.2263882770244611e-014 0 0 ;
	setAttr ".rst" -type "double3" 2.0814292831516923e-006 2.021688566492144 1.0516409937988414e-005 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587888e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.124100812432971e-015 -2.7200464103316335e-014 
		-1.5543122344752192e-014 ;
	setAttr ".tg[0].tor" -type "double3" -2.5245652784116664e-014 -1.0336802714756422e-014 
		2.2263882770244605e-014 ;
	setAttr ".lr" -type "double3" 4.4527765540489235e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.9650617274844535e-005 1.1361322186132607 1.60228402135143e-005 ;
	setAttr ".rsrr" -type "double3" 2.2263882770244617e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -4.7708320221952704e-015 2.0673605429512861e-014 2.5444437451708134e-014 ;
	setAttr ".rsrr" -type "double3" -1.7655625192200641e-030 1.5902773407317587e-014 
		-1.272221872585407e-014 ;
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
	setAttr ".lr" -type "double3" 9.5651512905564413 8.9427235891798187 -59.525163320381139 ;
	setAttr ".rsrr" -type "double3" 9.6554270699675939 0.58617602609504438 -58.441203783656462 ;
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
	setAttr ".lr" -type "double3" 12.557309855987331 0 0 ;
	setAttr ".rsrr" -type "double3" 12.557309855987331 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_wristInner_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristInner_LControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" 1.6188526366980316e-014 -4.4493283971562546e-014 1.6078262996675674e-014 ;
	setAttr ".rst" -type "double3" -2.5775889852303902 -13.695790117672093 1.9518861920115897 ;
	setAttr ".rsrr" -type "double3" 1.2952063497756704e-014 1.9752285085382495e-017 
		3.2923710569837186e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_wristOuter_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristOuter_LControlW0" -bt "W000" -dv 
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
	setAttr ".lr" -type "double3" 3.5893056541984762e-014 5.4330916838045442e-017 1.2712900694560719e-014 ;
	setAttr ".rst" -type "double3" 1.7250645456249316 -13.709154255017928 -1.1485879815469691 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-015 6.3783986788033658e-015 9.4919678774926796e-015 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.7763568394002505e-015 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-015 6.3611093629270304e-015 
		0 ;
	setAttr ".lr" -type "double3" -2.7034714792439881e-014 -2.2661452105427548e-014 
		-3.1805546814635101e-015 ;
	setAttr ".rst" -type "double3" -1.9661305649564156 -3.398176372577085 -1.5474453812200828 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587888e-015 -1.1927080055488172e-015 
		1.9083328088781097e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-015 2.6645352591003757e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.2263882770244624e-014 0 1.5902773407317584e-015 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -1.4378199723363898 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 2.1316282072803006e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.4986101496098688e-014 -7.9513867036587919e-015 
		6.3611093629270335e-015 ;
	setAttr ".lr" -type "double3" 2.2263882770244617e-014 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -1.059397367488554 0 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.2172489379008766e-015 9.3258734068513149e-015 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 3.2600685485001048e-014 -3.1805546814635152e-015 
		-1.5902773407317578e-014 ;
	setAttr ".lr" -type "double3" -6.9972202992197388e-014 -1.2722218725854081e-014 
		-1.9083328088781094e-014 ;
	setAttr ".rst" -type "double3" -1.1710480260853764 -3.8571527380709041 -0.74067707424170592 ;
	setAttr ".rsrr" -type "double3" -3.657637883683046e-014 -1.5902773407317578e-014 
		2.862499213317166e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.2434497875801753e-014 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416268e-014 -1.4312496066585821e-014 
		-7.9513867036587888e-015 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.3290705182007514e-015 -1.6906289595508053 0 ;
	setAttr ".rsrr" -type "double3" 5.4069429584879788e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 1.0658141036401503e-014 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.4986101496098681e-014 -1.4312496066585818e-014 
		-1.2722218725854061e-014 ;
	setAttr ".lr" -type "double3" 3.6576378836830441e-014 0 0 ;
	setAttr ".rst" -type "double3" -7.1054273576010019e-015 -1.4234403322378189 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.2212453270876722e-014 1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952759e-015 2.0673605429512845e-014 
		-1.1330726052713771e-014 ;
	setAttr ".lr" -type "double3" -2.8624992133171654e-014 -3.0215269473903408e-014 
		-3.1805546814635093e-015 ;
	setAttr ".rst" -type "double3" -0.37702267624843699 -4.2073368447255906 0.24673492329544366 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-014 1.5902773407317558e-015 
		2.2263882770244617e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.4210854715202004e-014 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" -6.0430538947806815e-014 -1.5902773407317576e-015 
		-2.7034714792439875e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -2.3723260927718766 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 2.4868995751603507e-014 
		-1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781094e-014 6.3611093629270304e-015 
		-1.7493050748049331e-014 ;
	setAttr ".lr" -type "double3" -1.033680271475643e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-015 -1.5800730120496613 0 ;
	setAttr ".rsrr" -type "double3" -2.1866313435061677e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 2.2204460492503131e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.3732626870123352e-015 0 1.5082786653502756e-014 ;
	setAttr ".lr" -type "double3" -6.8381925651465628e-014 1.3914926731402863e-014 -4.1347210859025727e-014 ;
	setAttr ".rst" -type "double3" 0.19761329068690614 -4.5884445002778476 1.3289102735303651 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905487e-015 1.2324649390671124e-014 
		1.0262332142966615e-030 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 8.8817841970012523e-015 
		-1.7763568394002505e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781104e-014 -7.9513867036587856e-015 
		1.590277340731757e-015 ;
	setAttr ".lr" -type "double3" -3.8166656177562201e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-015 -1.7545310635911677 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-014 -5.3290705182007514e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708128e-014 -3.1805546814635152e-015 
		-7.9513867036587856e-015 ;
	setAttr ".lr" -type "double3" -2.6239576122074014e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.1102230246251565e-014 -1.2270142737840093 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.9511731360403246e-015 -2.2204460492503131e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.7769086842379252e-015 2.3854160110976368e-015 
		-1.1529510720305246e-014 ;
	setAttr ".lr" -type "double3" -7.9513867036587903e-015 -2.1866313435061677e-014 
		-3.9756933518293944e-015 ;
	setAttr ".rst" -type "double3" -0.24750294155040464 -1.3428441808931142 1.6847418967996184 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976384e-015 -7.9513867036587919e-015 
		9.5416640443905503e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.04638520070921e-014 1.2212453270876722e-014 
		2.6423307986078726e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.4560976901075146e-014 8.7465253740246672e-015 
		-1.5107634736951698e-014 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -2.0216184713995897 2.9309887850104133e-014 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.3960616237277463e-015 2.0539125955565396e-014 
		3.1974423109204508e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.9320738469741769e-015 -1.0336802714756422e-014 
		1.2324649390671119e-014 ;
	setAttr ".lr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -1.1362196624936767 5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -1.8288189418415221e-014 0 0 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 0 0 ;
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
	setAttr ".lr" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_cig_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_cigControlW0" -bt "W000" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.9984014443252818e-015 -9.9920072216264089e-016 
		2.28948804359419e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.4809457735564499e-014 -2.7829853462805764e-015 
		0 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 9.5416640443905503e-015 -3.1805546814635187e-015 ;
	setAttr ".rst" -type "double3" 1.0819373379999988 0.93644397639995702 -5.3668963829999976 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 3.9725156682451432e-031 
		3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode lightLinker -n "lightLinker1";
	setAttr -s 2 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 722 ".phl";
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
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 0
		"Ref:HeadRN" 1
		5 3 "RefRN" "|Ref:spyInfo|Ref:Head:spyHeadMesh.instObjGroups" "RefRN.placeHolderList[1]" 
		""
		"RefRN" 835
		0 "|RefRNfosterParent1|Ref:prp_cig_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristOuter_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristInner_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristOuter_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristInner_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsFront_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsBack_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsFront_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsBack_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_L_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_R_parentConstraint1" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:spy|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:spy|Ref:bip_pelvis" 
		"-s -r "
		1 Ref:bones "zooSetMenuHidden" "zooSetMenuHidden" " -ci 1 -h 1 -min 0 -max 1 -at \"bool\""
		
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translate" " -type \"double3\" 2.08143e-006 2.021689 1.05164e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translate" " -type \"double3\" 6.08479e-006 1.754608 7.42818e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translate" " -type \"double3\" -3.87174e-005 1.22694 3.15755e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translate" " -type \"double3\" 6.84782e-005 2.372336 -1.13923e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translate" " -type \"double3\" -6.60395e-005 1.580065 2.60083e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translate" " -type \"double3\" 1.02944e-005 1.690671 3.33901e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translate" " -type \"double3\" -3.13436e-005 1.423406 -2.36993e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translate" " -type \"double3\" -3.54969e-005 1.437795 -5.67393e-006"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translate" " -type \"double3\" -7.12717e-006 1.059421 2.06545e-005"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translateZ" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translate" " -type \"double3\" -8.061433 -0.727441 -1.153581"
		
		2 "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translateX" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translateY" " -av"
		2 "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translateZ" " -av"
		2 "|Ref:spy|Ref:body_mesh|Ref:body_mesh" "instObjGroups.objectGroups" " -s 14"
		
		2 "|Ref:spy|Ref:body_mesh|Ref:body_mesh" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:bones" "zooSetMenuHidden" " 0"
		2 "Ref:skeleton_layer" "visibility" " 1"
		3 "Ref:skinCluster4.outputGeometry[0]" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.inMesh" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[2]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[3]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[4]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[5]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis.rotatePivotTranslate" "RefRN.placeHolderList[6]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[7]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis.parentInverseMatrix" "RefRN.placeHolderList[8]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[9]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[10]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[11]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[12]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[13]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.translateX" "RefRN.placeHolderList[14]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.translateY" "RefRN.placeHolderList[15]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" "RefRN.placeHolderList[16]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" "RefRN.placeHolderList[17]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[18]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" "RefRN.placeHolderList[19]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" "RefRN.placeHolderList[20]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" "RefRN.placeHolderList[21]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" "RefRN.placeHolderList[22]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" "RefRN.placeHolderList[23]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[24]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[25]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[26]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[27]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[28]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[29]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[30]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[31]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[32]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[33]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[34]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[35]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[36]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[37]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[38]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[39]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[40]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[41]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[42]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[43]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[44]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[45]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[46]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[47]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[48]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[49]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[50]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[51]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[52]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[53]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[54]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[55]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[56]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[57]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[58]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[59]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[60]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[61]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[62]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[63]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[64]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[65]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[66]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[67]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[68]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[69]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[70]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[71]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[72]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[73]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[74]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[75]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[76]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[77]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[78]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[79]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[80]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[81]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[82]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[83]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[84]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[85]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.translateX" 
		"RefRN.placeHolderList[86]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.translateY" 
		"RefRN.placeHolderList[87]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.translateZ" 
		"RefRN.placeHolderList[88]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotatePivot" 
		"RefRN.placeHolderList[89]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotatePivotTranslate" 
		"RefRN.placeHolderList[90]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateX" 
		"RefRN.placeHolderList[91]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateY" 
		"RefRN.placeHolderList[92]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateZ" 
		"RefRN.placeHolderList[93]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateOrder" 
		"RefRN.placeHolderList[94]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.jointOrient" 
		"RefRN.placeHolderList[95]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.parentInverseMatrix" 
		"RefRN.placeHolderList[96]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[97]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[98]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[99]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[100]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[101]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[102]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[103]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[104]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[105]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[106]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[107]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[108]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[109]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[110]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[111]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[112]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[113]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[114]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[115]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[116]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[117]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[118]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[119]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[120]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[121]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[122]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[123]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[124]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[125]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[126]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[127]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[128]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[129]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[130]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[131]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[132]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[133]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[134]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[135]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[136]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[137]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[138]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[139]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[140]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[141]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[142]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[143]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[144]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[145]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[146]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[147]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[148]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[149]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[150]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[151]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[152]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[153]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[154]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[155]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[156]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[157]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[158]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[159]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[160]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[161]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[162]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[163]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[164]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[165]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[166]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[167]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[168]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[169]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[170]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[171]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[172]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[173]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[174]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[175]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[176]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[177]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[178]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[179]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[180]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[181]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[182]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[183]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[184]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[185]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[186]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[187]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[188]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[189]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[190]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[191]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[192]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[193]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[194]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[195]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[196]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[197]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[198]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[199]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[200]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[201]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[202]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[203]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[204]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[205]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[206]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[207]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[208]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[209]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[210]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[211]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[212]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[213]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[214]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[215]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[216]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[217]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[218]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[219]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[220]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[221]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[222]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[223]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[224]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[225]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[226]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[227]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[228]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[229]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[230]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[231]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[232]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[233]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[234]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[235]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[236]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[237]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[238]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[239]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[240]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[241]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[242]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[243]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[244]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[245]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[246]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[247]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[248]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[249]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[250]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[251]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[252]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[253]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[254]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[255]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[256]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[257]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[258]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[259]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[260]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[261]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[262]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[263]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[264]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[265]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[266]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[267]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[268]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[269]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[270]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[271]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[272]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[273]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[274]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[275]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[276]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[277]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[278]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[279]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[280]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[281]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[282]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[283]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[284]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[285]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[286]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[287]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[288]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[289]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[290]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[291]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[292]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[293]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[294]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[295]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[296]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[297]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[298]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[299]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[300]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[301]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[302]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[303]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[304]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[305]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.translateX" 
		"RefRN.placeHolderList[306]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.translateY" 
		"RefRN.placeHolderList[307]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.translateZ" 
		"RefRN.placeHolderList[308]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotatePivot" 
		"RefRN.placeHolderList[309]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[310]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateX" 
		"RefRN.placeHolderList[311]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateY" 
		"RefRN.placeHolderList[312]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateZ" 
		"RefRN.placeHolderList[313]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateOrder" 
		"RefRN.placeHolderList[314]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.jointOrient" 
		"RefRN.placeHolderList[315]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.parentInverseMatrix" 
		"RefRN.placeHolderList[316]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.translateX" 
		"RefRN.placeHolderList[317]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.translateY" 
		"RefRN.placeHolderList[318]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.translateZ" 
		"RefRN.placeHolderList[319]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotatePivot" 
		"RefRN.placeHolderList[320]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[321]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateX" 
		"RefRN.placeHolderList[322]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateY" 
		"RefRN.placeHolderList[323]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateZ" 
		"RefRN.placeHolderList[324]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateOrder" 
		"RefRN.placeHolderList[325]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.jointOrient" 
		"RefRN.placeHolderList[326]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.parentInverseMatrix" 
		"RefRN.placeHolderList[327]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[328]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[329]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[330]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[331]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[332]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[333]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[334]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[335]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[336]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[337]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[338]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[339]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[340]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[341]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[342]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[343]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[344]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[345]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[346]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[347]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[348]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[349]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[350]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[351]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[352]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[353]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[354]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[355]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[356]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[357]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[358]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[359]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[360]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[361]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[362]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[363]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[364]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[365]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[366]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[367]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[368]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[369]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[370]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[371]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[372]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[373]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[374]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[375]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[376]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[377]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[378]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[379]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[380]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[381]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[382]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[383]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[384]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[385]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[386]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[387]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[388]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[389]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[390]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[391]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[392]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[393]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[394]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[395]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[396]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[397]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[398]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[399]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[400]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[401]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[402]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[403]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[404]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[405]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[406]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[407]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[408]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[409]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[410]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[411]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[412]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[413]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[414]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[415]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[416]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[417]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[418]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[419]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[420]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[421]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[422]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[423]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[424]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[425]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[426]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[427]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[428]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[429]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[430]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[431]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[432]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[433]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[434]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[435]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[436]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[437]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[438]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[439]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[440]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[441]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[442]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[443]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[444]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[445]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[446]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[447]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[448]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[449]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[450]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[451]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[452]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[453]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[454]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[455]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[456]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[457]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[458]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[459]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[460]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[461]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[462]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[463]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[464]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[465]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[466]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[467]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[468]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[469]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[470]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[471]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[472]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[473]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[474]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[475]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[476]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[477]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[478]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[479]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[480]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[481]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[482]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[483]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[484]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[485]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[486]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[487]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[488]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[489]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[490]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[491]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[492]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[493]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[494]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[495]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[496]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[497]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[498]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[499]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[500]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[501]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[502]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[503]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[504]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[505]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[506]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[507]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[508]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[509]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[510]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[511]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[512]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[513]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[514]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[515]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[516]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[517]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[518]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[519]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[520]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[521]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[522]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[523]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[524]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[525]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[526]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[527]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[528]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[529]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[530]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[531]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[532]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[533]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[534]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[535]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[536]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.translateX" 
		"RefRN.placeHolderList[537]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.translateY" 
		"RefRN.placeHolderList[538]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.translateZ" 
		"RefRN.placeHolderList[539]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotatePivot" 
		"RefRN.placeHolderList[540]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[541]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateX" 
		"RefRN.placeHolderList[542]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateY" 
		"RefRN.placeHolderList[543]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateZ" 
		"RefRN.placeHolderList[544]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateOrder" 
		"RefRN.placeHolderList[545]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.jointOrient" 
		"RefRN.placeHolderList[546]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.parentInverseMatrix" 
		"RefRN.placeHolderList[547]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.translateX" 
		"RefRN.placeHolderList[548]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.translateY" 
		"RefRN.placeHolderList[549]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.translateZ" 
		"RefRN.placeHolderList[550]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotatePivot" 
		"RefRN.placeHolderList[551]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[552]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateX" 
		"RefRN.placeHolderList[553]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateY" 
		"RefRN.placeHolderList[554]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateZ" 
		"RefRN.placeHolderList[555]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateOrder" 
		"RefRN.placeHolderList[556]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.jointOrient" 
		"RefRN.placeHolderList[557]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.parentInverseMatrix" 
		"RefRN.placeHolderList[558]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[559]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" "RefRN.placeHolderList[560]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[561]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.translate" "RefRN.placeHolderList[562]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[563]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" "RefRN.placeHolderList[564]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[565]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[566]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" "RefRN.placeHolderList[567]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" "RefRN.placeHolderList[568]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" "RefRN.placeHolderList[569]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" "RefRN.placeHolderList[570]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" "RefRN.placeHolderList[571]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[572]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[573]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[574]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[575]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[576]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[577]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[578]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[579]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[580]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[581]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[582]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[583]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[584]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[585]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[586]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[587]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[588]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[589]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[590]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.translateX" 
		"RefRN.placeHolderList[591]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.translateY" 
		"RefRN.placeHolderList[592]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.translateZ" 
		"RefRN.placeHolderList[593]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotatePivot" 
		"RefRN.placeHolderList[594]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[595]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateX" 
		"RefRN.placeHolderList[596]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateY" 
		"RefRN.placeHolderList[597]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateZ" 
		"RefRN.placeHolderList[598]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateOrder" 
		"RefRN.placeHolderList[599]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.jointOrient" 
		"RefRN.placeHolderList[600]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.parentInverseMatrix" 
		"RefRN.placeHolderList[601]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.translateX" 
		"RefRN.placeHolderList[602]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.translateY" 
		"RefRN.placeHolderList[603]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.translateZ" 
		"RefRN.placeHolderList[604]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotatePivot" 
		"RefRN.placeHolderList[605]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[606]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateX" 
		"RefRN.placeHolderList[607]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateY" 
		"RefRN.placeHolderList[608]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateZ" 
		"RefRN.placeHolderList[609]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateOrder" 
		"RefRN.placeHolderList[610]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.jointOrient" 
		"RefRN.placeHolderList[611]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.parentInverseMatrix" 
		"RefRN.placeHolderList[612]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[613]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" "RefRN.placeHolderList[614]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[615]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.translate" "RefRN.placeHolderList[616]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[617]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" "RefRN.placeHolderList[618]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[619]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[620]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" "RefRN.placeHolderList[621]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" "RefRN.placeHolderList[622]" 
		""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" "RefRN.placeHolderList[623]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" "RefRN.placeHolderList[624]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" "RefRN.placeHolderList[625]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[626]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[627]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[628]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[629]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[630]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[631]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[632]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[633]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[634]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[635]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[636]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[637]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[638]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[639]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[640]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[641]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[642]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[643]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[644]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.translateX" 
		"RefRN.placeHolderList[645]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.translateY" 
		"RefRN.placeHolderList[646]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.translateZ" 
		"RefRN.placeHolderList[647]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotatePivot" 
		"RefRN.placeHolderList[648]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[649]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateX" 
		"RefRN.placeHolderList[650]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateY" 
		"RefRN.placeHolderList[651]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateZ" 
		"RefRN.placeHolderList[652]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateOrder" 
		"RefRN.placeHolderList[653]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.jointOrient" 
		"RefRN.placeHolderList[654]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.parentInverseMatrix" 
		"RefRN.placeHolderList[655]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.translateX" 
		"RefRN.placeHolderList[656]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.translateY" 
		"RefRN.placeHolderList[657]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.translateZ" 
		"RefRN.placeHolderList[658]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotatePivot" 
		"RefRN.placeHolderList[659]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[660]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateX" 
		"RefRN.placeHolderList[661]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateY" 
		"RefRN.placeHolderList[662]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateZ" 
		"RefRN.placeHolderList[663]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateOrder" 
		"RefRN.placeHolderList[664]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.jointOrient" 
		"RefRN.placeHolderList[665]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.parentInverseMatrix" 
		"RefRN.placeHolderList[666]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateX" 
		"RefRN.placeHolderList[667]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateY" 
		"RefRN.placeHolderList[668]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateZ" 
		"RefRN.placeHolderList[669]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivot" 
		"RefRN.placeHolderList[670]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[671]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateX" 
		"RefRN.placeHolderList[672]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateY" 
		"RefRN.placeHolderList[673]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateZ" 
		"RefRN.placeHolderList[674]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateOrder" 
		"RefRN.placeHolderList[675]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.jointOrient" 
		"RefRN.placeHolderList[676]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[677]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateX" 
		"RefRN.placeHolderList[678]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateY" 
		"RefRN.placeHolderList[679]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateZ" 
		"RefRN.placeHolderList[680]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotatePivot" 
		"RefRN.placeHolderList[681]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[682]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateX" 
		"RefRN.placeHolderList[683]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateY" 
		"RefRN.placeHolderList[684]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateZ" 
		"RefRN.placeHolderList[685]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateOrder" 
		"RefRN.placeHolderList[686]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.jointOrient" 
		"RefRN.placeHolderList[687]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[688]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateX" 
		"RefRN.placeHolderList[689]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateY" 
		"RefRN.placeHolderList[690]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateZ" 
		"RefRN.placeHolderList[691]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivot" 
		"RefRN.placeHolderList[692]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[693]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateX" 
		"RefRN.placeHolderList[694]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateY" 
		"RefRN.placeHolderList[695]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateZ" 
		"RefRN.placeHolderList[696]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateOrder" 
		"RefRN.placeHolderList[697]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.jointOrient" 
		"RefRN.placeHolderList[698]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_front_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[699]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateX" 
		"RefRN.placeHolderList[700]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateY" 
		"RefRN.placeHolderList[701]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateZ" 
		"RefRN.placeHolderList[702]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotatePivot" 
		"RefRN.placeHolderList[703]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[704]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateX" 
		"RefRN.placeHolderList[705]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateY" 
		"RefRN.placeHolderList[706]" ""
		5 4 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateZ" 
		"RefRN.placeHolderList[707]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateOrder" 
		"RefRN.placeHolderList[708]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.jointOrient" 
		"RefRN.placeHolderList[709]" ""
		5 3 "RefRN" "|Ref:spy|Ref:bip_pelvis|Ref:prp_coat_back_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[710]" ""
		5 3 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[469]" 
		"RefRN.placeHolderList[711]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[469].objectGroupId" 
		"RefRN.placeHolderList[712]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[469].objectGrpColor" 
		"RefRN.placeHolderList[713]" ""
		5 3 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[470]" 
		"RefRN.placeHolderList[714]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[470].objectGroupId" 
		"RefRN.placeHolderList[715]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[470].objectGrpColor" 
		"RefRN.placeHolderList[716]" ""
		5 3 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[471]" 
		"RefRN.placeHolderList[717]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[471].objectGroupId" 
		"RefRN.placeHolderList[718]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.instObjGroups.objectGroups[471].objectGrpColor" 
		"RefRN.placeHolderList[719]" ""
		5 4 "RefRN" "|Ref:spy|Ref:body_mesh|Ref:body_mesh.inMesh" "RefRN.placeHolderList[720]" 
		""
		5 3 "RefRN" "|Ref:spy|Ref:spy_head_mesh.instObjGroups" "RefRN.placeHolderList[721]" 
		""
		5 3 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "RefRN.placeHolderList[722]" 
		"|Ref:spy|Ref:body_mesh|Ref:body_mesh.i";
lockNode;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	setAttr ".ihi" 0;
	setAttr -s 81 ".dsm";
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
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.97782545333777926 -0.20942154331578924 0
		 0 0.20942154331578924 -0.97782545333777926 0 0 68.544417095896193 -4.2637999397477371 1;
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
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
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
createNode expression -n "fkParent8";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent9";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent10";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "zooVisMan";
	addAttr -ci true -sn "zooVisManMaster" -ln "zooVisManMaster" -min 0 -max 1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dnsm";
	setAttr -k on ".zooVisManMaster";
createNode objectSet -n "torso_iso";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
createNode objectSet -n "legs_iso";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
createNode objectSet -n "arms_iso";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
createNode objectSet -n "head_iso";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
createNode objectSet -n "hands_iso";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "f[150]" "f[179:180]" "f[182:183]" "f[185:186]" "f[188]" "f[190:191]" "f[194:195]" "f[197]" "f[199:203]" "f[206:212]" "f[215:219]" "f[221:222]" "f[224:227]" "f[233]" "f[295]" "f[297]" "f[304]" "f[309:310]" "f[312]" "f[370]" "f[581:608]" "f[691:697]" "f[702:714]" "f[723:810]" "f[859:860]" "f[864:881]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 28 "f[142]" "f[146]" "f[237:264]" "f[266:277]" "f[279:284]" "f[289:290]" "f[293:294]" "f[298:303]" "f[305:308]" "f[313:317]" "f[319:328]" "f[330:364]" "f[366:367]" "f[369]" "f[429]" "f[431]" "f[454]" "f[509:511]" "f[514]" "f[520]" "f[522:523]" "f[525:527]" "f[529:535]" "f[537:541]" "f[543]" "f[545:579]" "f[609:672]" "f[698:701]";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 47 "f[0:141]" "f[143:145]" "f[147:149]" "f[151:178]" "f[181]" "f[184]" "f[187]" "f[189]" "f[192:193]" "f[196]" "f[198]" "f[204:205]" "f[213:214]" "f[220]" "f[223]" "f[228:232]" "f[234:236]" "f[255:257]" "f[265]" "f[278:281]" "f[283:294]" "f[296]" "f[305:308]" "f[311]" "f[318]" "f[329]" "f[365]" "f[368]" "f[371:428]" "f[430]" "f[432:453]" "f[455:508]" "f[510]" "f[512:519]" "f[521]" "f[524]" "f[526]" "f[528]" "f[536]" "f[542]" "f[544]" "f[546]" "f[580]" "f[673:690]" "f[715:722]" "f[811:858]" "f[861:863]";
createNode objectSet -n "RigControls";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 65 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
	setAttr -s 2 ".ln";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 81 ".dsm";
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
	setAttr -s 2 ".sol";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[2]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[3]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[4]";
connectAttr "RefRN.phl[5]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[6]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[7]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[8]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[9]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[10]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[11]";
connectAttr "RefRN.phl[12]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[13]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[14]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[15]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[16]";
connectAttr "RefRN.phl[17]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[18]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[19]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[20]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[21]";
connectAttr "RefRN.phl[22]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[23]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[24]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[25]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[26]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[27]";
connectAttr "RefRN.phl[28]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[29]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[30]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[31]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[32]";
connectAttr "RefRN.phl[33]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[34]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[35]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[36]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[37]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[38]";
connectAttr "RefRN.phl[39]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[40]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[41]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[42]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[43]";
connectAttr "RefRN.phl[44]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[45]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[46]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[47]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[48]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[49]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[50]";
connectAttr "RefRN.phl[51]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[52]" "neckControlLockParent_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[53]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "RefRN.phl[54]" "neckControlLockParent_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[55]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[56]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[57]";
connectAttr "RefRN.phl[58]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[59]" "neckControlLockParent_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[60]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[61]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[62]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[63]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[64]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[65]" "headControlLockParent_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[66]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[67]" "headControlLockParent_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[68]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[69]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[70]";
connectAttr "RefRN.phl[71]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[72]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[73]" "headControlLockParent_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[74]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[75]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[76]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[77]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[78]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[79]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[80]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[81]";
connectAttr "RefRN.phl[82]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[83]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[84]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[85]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "Ref:prp_cig_parentConstraint1.ctx" "RefRN.phl[86]";
connectAttr "Ref:prp_cig_parentConstraint1.cty" "RefRN.phl[87]";
connectAttr "Ref:prp_cig_parentConstraint1.ctz" "RefRN.phl[88]";
connectAttr "RefRN.phl[89]" "Ref:prp_cig_parentConstraint1.crp";
connectAttr "RefRN.phl[90]" "Ref:prp_cig_parentConstraint1.crt";
connectAttr "Ref:prp_cig_parentConstraint1.crx" "RefRN.phl[91]";
connectAttr "Ref:prp_cig_parentConstraint1.cry" "RefRN.phl[92]";
connectAttr "Ref:prp_cig_parentConstraint1.crz" "RefRN.phl[93]";
connectAttr "RefRN.phl[94]" "Ref:prp_cig_parentConstraint1.cro";
connectAttr "RefRN.phl[95]" "Ref:prp_cig_parentConstraint1.cjo";
connectAttr "RefRN.phl[96]" "Ref:prp_cig_parentConstraint1.cpim";
connectAttr "RefRN.phl[97]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[98]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[99]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[100]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[101]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[102]";
connectAttr "RefRN.phl[103]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[104]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[105]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[106]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[107]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[108]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[109]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[110]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[111]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[112]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[113]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[114]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[115]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[116]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[117]";
connectAttr "RefRN.phl[118]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[119]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[120]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[121]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[122]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[123]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[124]";
connectAttr "RefRN.phl[125]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[126]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[127]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[128]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[129]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[130]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[131]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[132]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[133]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[134]";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[135]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[136]";
connectAttr "RefRN.phl[137]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[138]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[139]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[140]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[141]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[142]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[143]";
connectAttr "RefRN.phl[144]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[145]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[146]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[147]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[148]";
connectAttr "RefRN.phl[149]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[150]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[151]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[152]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[153]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[154]";
connectAttr "RefRN.phl[155]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[156]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[157]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[158]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[159]";
connectAttr "RefRN.phl[160]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[161]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[162]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[163]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[164]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[165]";
connectAttr "RefRN.phl[166]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[167]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[168]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[169]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[170]";
connectAttr "RefRN.phl[171]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[172]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[173]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[174]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[175]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[176]";
connectAttr "RefRN.phl[177]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[178]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[179]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[180]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[181]";
connectAttr "RefRN.phl[182]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[183]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[184]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[185]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[186]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[187]";
connectAttr "RefRN.phl[188]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[189]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[190]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[191]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[192]";
connectAttr "RefRN.phl[193]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[194]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[195]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[196]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[197]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[198]";
connectAttr "RefRN.phl[199]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[200]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[201]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[202]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[203]";
connectAttr "RefRN.phl[204]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[205]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[206]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[207]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[208]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[209]";
connectAttr "RefRN.phl[210]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[211]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[212]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[213]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[214]";
connectAttr "RefRN.phl[215]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[216]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[217]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[218]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[219]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[220]";
connectAttr "RefRN.phl[221]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[222]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[223]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[224]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[225]";
connectAttr "RefRN.phl[226]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[227]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[228]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[229]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[230]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[231]";
connectAttr "RefRN.phl[232]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[233]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[234]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[235]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[236]";
connectAttr "RefRN.phl[237]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[238]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[239]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[240]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[241]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[242]";
connectAttr "RefRN.phl[243]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[244]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[245]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[246]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[247]";
connectAttr "RefRN.phl[248]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[249]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[250]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[251]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[252]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[253]";
connectAttr "RefRN.phl[254]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[255]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[256]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[257]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[258]";
connectAttr "RefRN.phl[259]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[260]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[261]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[262]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[263]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[264]";
connectAttr "RefRN.phl[265]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[266]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[267]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[268]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[269]";
connectAttr "RefRN.phl[270]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[271]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[272]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[273]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[274]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[275]";
connectAttr "RefRN.phl[276]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[277]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[278]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[279]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[280]";
connectAttr "RefRN.phl[281]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[282]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[283]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[284]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[285]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[286]";
connectAttr "RefRN.phl[287]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[288]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[289]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[290]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[291]";
connectAttr "RefRN.phl[292]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[293]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[294]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[295]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[296]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[297]";
connectAttr "RefRN.phl[298]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[299]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[300]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[301]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[302]";
connectAttr "RefRN.phl[303]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[304]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[305]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.ctx" "RefRN.phl[306]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.cty" "RefRN.phl[307]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.ctz" "RefRN.phl[308]";
connectAttr "RefRN.phl[309]" "Ref:prp_wristOuter_L_parentConstraint1.crp";
connectAttr "RefRN.phl[310]" "Ref:prp_wristOuter_L_parentConstraint1.crt";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.crx" "RefRN.phl[311]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.cry" "RefRN.phl[312]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.crz" "RefRN.phl[313]";
connectAttr "RefRN.phl[314]" "Ref:prp_wristOuter_L_parentConstraint1.cro";
connectAttr "RefRN.phl[315]" "Ref:prp_wristOuter_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[316]" "Ref:prp_wristOuter_L_parentConstraint1.cpim";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.ctx" "RefRN.phl[317]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.cty" "RefRN.phl[318]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.ctz" "RefRN.phl[319]";
connectAttr "RefRN.phl[320]" "Ref:prp_wristInner_L_parentConstraint1.crp";
connectAttr "RefRN.phl[321]" "Ref:prp_wristInner_L_parentConstraint1.crt";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.crx" "RefRN.phl[322]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.cry" "RefRN.phl[323]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.crz" "RefRN.phl[324]";
connectAttr "RefRN.phl[325]" "Ref:prp_wristInner_L_parentConstraint1.cro";
connectAttr "RefRN.phl[326]" "Ref:prp_wristInner_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[327]" "Ref:prp_wristInner_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[328]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[329]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[330]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[331]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[332]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[333]";
connectAttr "RefRN.phl[334]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[335]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[336]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[337]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[338]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[339]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[340]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[341]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[342]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[343]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[344]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[345]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[346]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[347]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[348]";
connectAttr "RefRN.phl[349]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[350]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[351]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[352]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[353]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[354]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[355]";
connectAttr "RefRN.phl[356]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[357]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[358]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[359]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[360]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[361]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[362]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[363]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[364]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[365]";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[366]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[367]";
connectAttr "RefRN.phl[368]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[369]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[370]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[371]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[372]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[373]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[374]";
connectAttr "RefRN.phl[375]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[376]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[377]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[378]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[379]";
connectAttr "RefRN.phl[380]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[381]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[382]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[383]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[384]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[385]";
connectAttr "RefRN.phl[386]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[387]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[388]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[389]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[390]";
connectAttr "RefRN.phl[391]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[392]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[393]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[394]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[395]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[396]";
connectAttr "RefRN.phl[397]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[398]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[399]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[400]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[401]";
connectAttr "RefRN.phl[402]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[403]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[404]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[405]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[406]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[407]";
connectAttr "RefRN.phl[408]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[409]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[410]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[411]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[412]";
connectAttr "RefRN.phl[413]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[414]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[415]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[416]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[417]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[418]";
connectAttr "RefRN.phl[419]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[420]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[421]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[422]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[423]";
connectAttr "RefRN.phl[424]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[425]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[426]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[427]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[428]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[429]";
connectAttr "RefRN.phl[430]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[431]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[432]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[433]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[434]";
connectAttr "RefRN.phl[435]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[436]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[437]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[438]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[439]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[440]";
connectAttr "RefRN.phl[441]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[442]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[443]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[444]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[445]";
connectAttr "RefRN.phl[446]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[447]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[448]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[449]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[450]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[451]";
connectAttr "RefRN.phl[452]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[453]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[454]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[455]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[456]";
connectAttr "RefRN.phl[457]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[458]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[459]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[460]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[461]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[462]";
connectAttr "RefRN.phl[463]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[464]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[465]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[466]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[467]";
connectAttr "RefRN.phl[468]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[469]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[470]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[471]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[472]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[473]";
connectAttr "RefRN.phl[474]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[475]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[476]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[477]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[478]";
connectAttr "RefRN.phl[479]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[480]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[481]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[482]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[483]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[484]";
connectAttr "RefRN.phl[485]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[486]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[487]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[488]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[489]";
connectAttr "RefRN.phl[490]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[491]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[492]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[493]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[494]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[495]";
connectAttr "RefRN.phl[496]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[497]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[498]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[499]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[500]";
connectAttr "RefRN.phl[501]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[502]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[503]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[504]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[505]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[506]";
connectAttr "RefRN.phl[507]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[508]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[509]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[510]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[511]";
connectAttr "RefRN.phl[512]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[513]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[514]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[515]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[516]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[517]";
connectAttr "RefRN.phl[518]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[519]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[520]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[521]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[522]";
connectAttr "RefRN.phl[523]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[524]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[525]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[526]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[527]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[528]";
connectAttr "RefRN.phl[529]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[530]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[531]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[532]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[533]";
connectAttr "RefRN.phl[534]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[535]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[536]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.ctx" "RefRN.phl[537]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.cty" "RefRN.phl[538]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.ctz" "RefRN.phl[539]";
connectAttr "RefRN.phl[540]" "Ref:prp_wristOuter_R_parentConstraint1.crp";
connectAttr "RefRN.phl[541]" "Ref:prp_wristOuter_R_parentConstraint1.crt";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.crx" "RefRN.phl[542]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.cry" "RefRN.phl[543]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.crz" "RefRN.phl[544]";
connectAttr "RefRN.phl[545]" "Ref:prp_wristOuter_R_parentConstraint1.cro";
connectAttr "RefRN.phl[546]" "Ref:prp_wristOuter_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[547]" "Ref:prp_wristOuter_R_parentConstraint1.cpim";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.ctx" "RefRN.phl[548]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.cty" "RefRN.phl[549]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.ctz" "RefRN.phl[550]";
connectAttr "RefRN.phl[551]" "Ref:prp_wristInner_R_parentConstraint1.crp";
connectAttr "RefRN.phl[552]" "Ref:prp_wristInner_R_parentConstraint1.crt";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.crx" "RefRN.phl[553]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.cry" "RefRN.phl[554]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.crz" "RefRN.phl[555]";
connectAttr "RefRN.phl[556]" "Ref:prp_wristInner_R_parentConstraint1.cro";
connectAttr "RefRN.phl[557]" "Ref:prp_wristInner_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[558]" "Ref:prp_wristInner_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[559]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[560]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[561]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[562]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[563]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[564]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[565]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[566]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[567]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[568]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[569]";
connectAttr "RefRN.phl[570]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[571]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[572]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[573]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[574]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[575]";
connectAttr "RefRN.phl[576]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[577]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[578]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[579]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[580]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[581]";
connectAttr "RefRN.phl[582]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[583]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[584]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[585]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[586]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[587]";
connectAttr "RefRN.phl[588]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[589]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[590]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.ctx" "RefRN.phl[591]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.cty" "RefRN.phl[592]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.ctz" "RefRN.phl[593]";
connectAttr "RefRN.phl[594]" "Ref:prp_pantsFront_L_parentConstraint1.crp";
connectAttr "RefRN.phl[595]" "Ref:prp_pantsFront_L_parentConstraint1.crt";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.crx" "RefRN.phl[596]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.cry" "RefRN.phl[597]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.crz" "RefRN.phl[598]";
connectAttr "RefRN.phl[599]" "Ref:prp_pantsFront_L_parentConstraint1.cro";
connectAttr "RefRN.phl[600]" "Ref:prp_pantsFront_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[601]" "Ref:prp_pantsFront_L_parentConstraint1.cpim";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.ctx" "RefRN.phl[602]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.cty" "RefRN.phl[603]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.ctz" "RefRN.phl[604]";
connectAttr "RefRN.phl[605]" "Ref:prp_pantsBack_L_parentConstraint1.crp";
connectAttr "RefRN.phl[606]" "Ref:prp_pantsBack_L_parentConstraint1.crt";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.crx" "RefRN.phl[607]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.cry" "RefRN.phl[608]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.crz" "RefRN.phl[609]";
connectAttr "RefRN.phl[610]" "Ref:prp_pantsBack_L_parentConstraint1.cro";
connectAttr "RefRN.phl[611]" "Ref:prp_pantsBack_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[612]" "Ref:prp_pantsBack_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[613]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[614]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[615]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[616]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[617]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[618]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[619]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[620]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[621]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[622]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[623]";
connectAttr "RefRN.phl[624]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[625]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[626]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[627]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[628]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[629]";
connectAttr "RefRN.phl[630]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[631]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[632]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[633]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[634]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[635]";
connectAttr "RefRN.phl[636]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[637]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[638]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[639]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[640]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[641]";
connectAttr "RefRN.phl[642]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[643]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[644]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.ctx" "RefRN.phl[645]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.cty" "RefRN.phl[646]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.ctz" "RefRN.phl[647]";
connectAttr "RefRN.phl[648]" "Ref:prp_pantsFront_R_parentConstraint1.crp";
connectAttr "RefRN.phl[649]" "Ref:prp_pantsFront_R_parentConstraint1.crt";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.crx" "RefRN.phl[650]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.cry" "RefRN.phl[651]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.crz" "RefRN.phl[652]";
connectAttr "RefRN.phl[653]" "Ref:prp_pantsFront_R_parentConstraint1.cro";
connectAttr "RefRN.phl[654]" "Ref:prp_pantsFront_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[655]" "Ref:prp_pantsFront_R_parentConstraint1.cpim";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.ctx" "RefRN.phl[656]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.cty" "RefRN.phl[657]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.ctz" "RefRN.phl[658]";
connectAttr "RefRN.phl[659]" "Ref:prp_pantsBack_R_parentConstraint1.crp";
connectAttr "RefRN.phl[660]" "Ref:prp_pantsBack_R_parentConstraint1.crt";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.crx" "RefRN.phl[661]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.cry" "RefRN.phl[662]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.crz" "RefRN.phl[663]";
connectAttr "RefRN.phl[664]" "Ref:prp_pantsBack_R_parentConstraint1.cro";
connectAttr "RefRN.phl[665]" "Ref:prp_pantsBack_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[666]" "Ref:prp_pantsBack_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctx" "RefRN.phl[667]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cty" "RefRN.phl[668]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctz" "RefRN.phl[669]";
connectAttr "RefRN.phl[670]" "Ref:prp_coat_front_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[671]" "Ref:prp_coat_front_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crx" "RefRN.phl[672]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cry" "RefRN.phl[673]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crz" "RefRN.phl[674]";
connectAttr "RefRN.phl[675]" "Ref:prp_coat_front_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[676]" "Ref:prp_coat_front_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[677]" "Ref:prp_coat_front_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.ctx" "RefRN.phl[678]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.cty" "RefRN.phl[679]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.ctz" "RefRN.phl[680]";
connectAttr "RefRN.phl[681]" "Ref:prp_coat_back_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[682]" "Ref:prp_coat_back_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.crx" "RefRN.phl[683]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.cry" "RefRN.phl[684]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.crz" "RefRN.phl[685]";
connectAttr "RefRN.phl[686]" "Ref:prp_coat_back_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[687]" "Ref:prp_coat_back_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[688]" "Ref:prp_coat_back_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctx" "RefRN.phl[689]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cty" "RefRN.phl[690]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctz" "RefRN.phl[691]";
connectAttr "RefRN.phl[692]" "Ref:prp_coat_front_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[693]" "Ref:prp_coat_front_0_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crx" "RefRN.phl[694]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cry" "RefRN.phl[695]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crz" "RefRN.phl[696]";
connectAttr "RefRN.phl[697]" "Ref:prp_coat_front_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[698]" "Ref:prp_coat_front_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[699]" "Ref:prp_coat_front_0_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.ctx" "RefRN.phl[700]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.cty" "RefRN.phl[701]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.ctz" "RefRN.phl[702]";
connectAttr "RefRN.phl[703]" "Ref:prp_coat_back_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[704]" "Ref:prp_coat_back_0_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.crx" "RefRN.phl[705]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.cry" "RefRN.phl[706]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.crz" "RefRN.phl[707]";
connectAttr "RefRN.phl[708]" "Ref:prp_coat_back_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[709]" "Ref:prp_coat_back_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[710]" "Ref:prp_coat_back_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[711]" "arms_iso.dsm" -na;
connectAttr "groupId3.id" "RefRN.phl[712]";
connectAttr "arms_iso.mwc" "RefRN.phl[713]";
connectAttr "RefRN.phl[714]" "legs_iso.dsm" -na;
connectAttr "groupId4.id" "RefRN.phl[715]";
connectAttr "legs_iso.mwc" "RefRN.phl[716]";
connectAttr "RefRN.phl[717]" "torso_iso.dsm" -na;
connectAttr "groupId5.id" "RefRN.phl[718]";
connectAttr "torso_iso.mwc" "RefRN.phl[719]";
connectAttr "groupParts5.og" "RefRN.phl[720]";
connectAttr "RefRN.phl[721]" "head_iso.dsm" -na;
connectAttr "RefRN.phl[722]" "groupParts3.ig";
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
connectAttr "rShoulderControl_pointConstraint1.ctx" "rShoulderControl.tx" -l on;
connectAttr "rShoulderControl_pointConstraint1.cty" "rShoulderControl.ty" -l on;
connectAttr "rShoulderControl_pointConstraint1.ctz" "rShoulderControl.tz" -l on;
connectAttr "rShoulderControl_pointConstraint1.w0" "rShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rShoulderControl.pim" "rShoulderControl_pointConstraint1.cpim";
connectAttr "rShoulderControl.rp" "rShoulderControl_pointConstraint1.crp";
connectAttr "rShoulderControl.rpt" "rShoulderControl_pointConstraint1.crt";
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
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.ctx" "Ref:prp_pantsFront_RControlGroup.tx"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cty" "Ref:prp_pantsFront_RControlGroup.ty"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.ctz" "Ref:prp_pantsFront_RControlGroup.tz"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crx" "Ref:prp_pantsFront_RControlGroup.rx"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cry" "Ref:prp_pantsFront_RControlGroup.ry"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crz" "Ref:prp_pantsFront_RControlGroup.rz"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.ro" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.pim" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.rp" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.rpt" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_RFK.t" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_RFK.rp" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_RFK.rpt" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_RFK.r" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_RFK.ro" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_RFK.s" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_RFK.pm" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w0" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_RIK.t" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_RIK.rp" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_RIK.rpt" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_RIK.r" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_RIK.ro" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_RIK.s" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_RIK.pm" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_RIK.jo" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w1" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent3.out[0]" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rLegIKFK" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.ctx" "Ref:prp_pantsBack_RControlGroup.tx"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cty" "Ref:prp_pantsBack_RControlGroup.ty"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.ctz" "Ref:prp_pantsBack_RControlGroup.tz"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crx" "Ref:prp_pantsBack_RControlGroup.rx"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cry" "Ref:prp_pantsBack_RControlGroup.ry"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crz" "Ref:prp_pantsBack_RControlGroup.rz"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.ro" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.pim" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.rp" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.rpt" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_RFK.t" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_RFK.rp" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_RFK.rpt" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_RFK.r" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_RFK.ro" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_RFK.s" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_RFK.pm" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w0" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_RIK.t" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_RIK.rp" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_RIK.rpt" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_RIK.r" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_RIK.ro" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_RIK.s" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_RIK.pm" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_RIK.jo" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w1" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent4.out[0]" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rLegIKFK" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.ctx" "Ref:prp_pantsFront_LControlGroup.tx"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cty" "Ref:prp_pantsFront_LControlGroup.ty"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.ctz" "Ref:prp_pantsFront_LControlGroup.tz"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crx" "Ref:prp_pantsFront_LControlGroup.rx"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cry" "Ref:prp_pantsFront_LControlGroup.ry"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crz" "Ref:prp_pantsFront_LControlGroup.rz"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.ro" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.pim" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.rp" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.rpt" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_LFK.t" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_LFK.rp" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_LFK.rpt" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_LFK.r" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_LFK.ro" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_LFK.s" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_LFK.pm" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w0" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_LIK.t" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_LIK.rp" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_LIK.rpt" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_LIK.r" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_LIK.ro" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_LIK.s" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_LIK.pm" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_LIK.jo" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w1" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent5.out[0]" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lLegIKFK" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.ctx" "Ref:prp_pantsBack_LControlGroup.tx"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cty" "Ref:prp_pantsBack_LControlGroup.ty"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.ctz" "Ref:prp_pantsBack_LControlGroup.tz"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crx" "Ref:prp_pantsBack_LControlGroup.rx"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cry" "Ref:prp_pantsBack_LControlGroup.ry"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crz" "Ref:prp_pantsBack_LControlGroup.rz"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.ro" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.pim" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.rp" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.rpt" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_LFK.t" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_LFK.rp" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_LFK.rpt" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_LFK.r" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_LFK.ro" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_LFK.s" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_LFK.pm" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w0" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_LIK.t" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_LIK.rp" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_LIK.rpt" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_LIK.r" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_LIK.ro" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_LIK.s" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_LIK.pm" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_LIK.jo" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w1" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent6.out[0]" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lLegIKFK" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.ctx" "Ref:prp_wristOuter_RControlGroup.tx"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cty" "Ref:prp_wristOuter_RControlGroup.ty"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.ctz" "Ref:prp_wristOuter_RControlGroup.tz"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crx" "Ref:prp_wristOuter_RControlGroup.rx"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cry" "Ref:prp_wristOuter_RControlGroup.ry"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crz" "Ref:prp_wristOuter_RControlGroup.rz"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.ro" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.pim" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.rp" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.rpt" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_RFK.t" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_RFK.rp" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_RFK.rpt" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_RFK.r" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_RFK.ro" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_RFK.s" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_RFK.pm" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w0" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_RIK.t" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_RIK.rp" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_RIK.rpt" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_RIK.r" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_RIK.ro" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_RIK.s" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_RIK.pm" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_RIK.jo" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w1" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent7.out[0]" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.ctx" "Ref:prp_wristInner_RControlGroup.tx"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.cty" "Ref:prp_wristInner_RControlGroup.ty"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.ctz" "Ref:prp_wristInner_RControlGroup.tz"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.crx" "Ref:prp_wristInner_RControlGroup.rx"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.cry" "Ref:prp_wristInner_RControlGroup.ry"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.crz" "Ref:prp_wristInner_RControlGroup.rz"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.ro" "Ref:prp_wristInner_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.pim" "Ref:prp_wristInner_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.rp" "Ref:prp_wristInner_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.rpt" "Ref:prp_wristInner_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_RFK.t" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_RFK.rp" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_RFK.rpt" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_RFK.r" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_RFK.ro" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_RFK.s" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_RFK.pm" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.w0" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_RIK.t" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_RIK.rp" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_RIK.rpt" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_RIK.r" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_RIK.ro" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_RIK.s" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_RIK.pm" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_RIK.jo" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.w1" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent8.out[0]" "Ref:prp_wristInner_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:prp_wristInner_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.ctx" "Ref:prp_wristOuter_LControlGroup.tx"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cty" "Ref:prp_wristOuter_LControlGroup.ty"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.ctz" "Ref:prp_wristOuter_LControlGroup.tz"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crx" "Ref:prp_wristOuter_LControlGroup.rx"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cry" "Ref:prp_wristOuter_LControlGroup.ry"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crz" "Ref:prp_wristOuter_LControlGroup.rz"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.ro" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.pim" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.rp" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.rpt" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_LFK.t" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_LFK.rp" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_LFK.rpt" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_LFK.r" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_LFK.ro" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_LFK.s" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_LFK.pm" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w0" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_LIK.t" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_LIK.rp" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_LIK.rpt" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_LIK.r" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_LIK.ro" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_LIK.s" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_LIK.pm" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_LIK.jo" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w1" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent9.out[0]" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.ctx" "Ref:prp_wristInner_LControlGroup.tx"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.cty" "Ref:prp_wristInner_LControlGroup.ty"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.ctz" "Ref:prp_wristInner_LControlGroup.tz"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.crx" "Ref:prp_wristInner_LControlGroup.rx"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.cry" "Ref:prp_wristInner_LControlGroup.ry"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.crz" "Ref:prp_wristInner_LControlGroup.rz"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.ro" "Ref:prp_wristInner_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.pim" "Ref:prp_wristInner_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.rp" "Ref:prp_wristInner_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.rpt" "Ref:prp_wristInner_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_LFK.t" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_LFK.rp" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_LFK.rpt" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_LFK.r" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_LFK.ro" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_LFK.s" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_LFK.pm" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.w0" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_LIK.t" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_LIK.rp" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_LIK.rpt" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_LIK.r" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_LIK.ro" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_LIK.s" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_LIK.pm" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_LIK.jo" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.w1" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent10.out[0]" "Ref:prp_wristInner_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:prp_wristInner_LControlGroup_parentConstraint1.w1"
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
connectAttr "Ref:prp_coat_front_0_RControl.t" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_0_RControl.rp" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_0_RControl.rpt" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_0_RControl.r" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_0_RControl.ro" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_0_RControl.s" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_0_RControl.pm" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.w0" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_coat_front_0_LControl.t" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_0_LControl.rp" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_0_LControl.rpt" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_0_LControl.r" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_0_LControl.ro" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_0_LControl.s" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_0_LControl.pm" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.w0" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_pantsBack_RControl.t" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsBack_RControl.rp" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsBack_RControl.rpt" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsBack_RControl.r" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsBack_RControl.ro" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsBack_RControl.s" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsBack_RControl.pm" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.w0" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_pantsFront_RControl.t" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsFront_RControl.rp" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsFront_RControl.rpt" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsFront_RControl.r" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsFront_RControl.ro" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsFront_RControl.s" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsFront_RControl.pm" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.w0" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_pantsBack_LControl.t" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsBack_LControl.rp" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsBack_LControl.rpt" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsBack_LControl.r" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsBack_LControl.ro" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsBack_LControl.s" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsBack_LControl.pm" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.w0" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_pantsFront_LControl.t" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsFront_LControl.rp" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsFront_LControl.rpt" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsFront_LControl.r" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsFront_LControl.ro" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsFront_LControl.s" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsFront_LControl.pm" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.w0" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_wristInner_RControl.t" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristInner_RControl.rp" "Ref:prp_wristInner_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristInner_RControl.rpt" "Ref:prp_wristInner_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristInner_RControl.r" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristInner_RControl.ro" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristInner_RControl.s" "Ref:prp_wristInner_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristInner_RControl.pm" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_R_parentConstraint1.w0" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_wristOuter_RControl.t" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristOuter_RControl.rp" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristOuter_RControl.rpt" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristOuter_RControl.r" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristOuter_RControl.ro" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristOuter_RControl.s" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristOuter_RControl.pm" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.w0" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_wristInner_LControl.t" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristInner_LControl.rp" "Ref:prp_wristInner_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristInner_LControl.rpt" "Ref:prp_wristInner_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristInner_LControl.r" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristInner_LControl.ro" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristInner_LControl.s" "Ref:prp_wristInner_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristInner_LControl.pm" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_L_parentConstraint1.w0" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_wristOuter_LControl.t" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristOuter_LControl.rp" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristOuter_LControl.rpt" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristOuter_LControl.r" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristOuter_LControl.ro" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristOuter_LControl.s" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristOuter_LControl.pm" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.w0" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_cigControl.t" "Ref:prp_cig_parentConstraint1.tg[0].tt";
connectAttr "Ref:prp_cigControl.rp" "Ref:prp_cig_parentConstraint1.tg[0].trp";
connectAttr "Ref:prp_cigControl.rpt" "Ref:prp_cig_parentConstraint1.tg[0].trt";
connectAttr "Ref:prp_cigControl.r" "Ref:prp_cig_parentConstraint1.tg[0].tr";
connectAttr "Ref:prp_cigControl.ro" "Ref:prp_cig_parentConstraint1.tg[0].tro";
connectAttr "Ref:prp_cigControl.s" "Ref:prp_cig_parentConstraint1.tg[0].ts";
connectAttr "Ref:prp_cigControl.pm" "Ref:prp_cig_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_cig_parentConstraint1.w0" "Ref:prp_cig_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:bip_thumb_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "plotted.dsm" -na;
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
connectAttr "Ref:bip_thumb_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "plotted.dsm" -na;
connectAttr "rkneeControl.iog" "plotted.dsm" -na;
connectAttr "rFootControl.iog" "plotted.dsm" -na;
connectAttr "rToeControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_cigControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsFront_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsBack_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsFront_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsBack_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristOuter_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristInner_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristOuter_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristInner_LControl.iog" "plotted.dsm" -na;
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
connectAttr "main.rLegIKFK" "fkParent3.in[0]";
connectAttr ":time1.o" "fkParent3.tim";
connectAttr "main.rLegIKFK" "fkParent4.in[0]";
connectAttr ":time1.o" "fkParent4.tim";
connectAttr "main.lLegIKFK" "fkParent5.in[0]";
connectAttr ":time1.o" "fkParent5.tim";
connectAttr "main.lLegIKFK" "fkParent6.in[0]";
connectAttr ":time1.o" "fkParent6.tim";
connectAttr "main.rArmIKFK" "fkParent7.in[0]";
connectAttr ":time1.o" "fkParent7.tim";
connectAttr "main.rArmIKFK" "fkParent8.in[0]";
connectAttr ":time1.o" "fkParent8.tim";
connectAttr "main.lArmIKFK" "fkParent9.in[0]";
connectAttr ":time1.o" "fkParent9.tim";
connectAttr "main.lArmIKFK" "fkParent10.in[0]";
connectAttr ":time1.o" "fkParent10.tim";
connectAttr "torso_iso.msg" "zooVisMan.dnsm" -na;
connectAttr "legs_iso.msg" "zooVisMan.dnsm" -na;
connectAttr "arms_iso.msg" "zooVisMan.dnsm" -na;
connectAttr "head_iso.msg" "zooVisMan.dnsm" -na;
connectAttr "hands_iso.msg" "zooVisMan.dnsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "torso_iso.dsm" -na;
connectAttr "rShoulderControl.iog" "torso_iso.dsm" -na;
connectAttr "lShoulderControl.iog" "torso_iso.dsm" -na;
connectAttr "PelvisControlShape.iog" "torso_iso.dsm" -na;
connectAttr "UpperbodyControlShape.iog" "torso_iso.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControl.iog" "torso_iso.dsm" -na;
connectAttr "Ref:prp_coat_back_0_RControl.iog" "torso_iso.dsm" -na;
connectAttr "Ref:prp_coat_front_0_RControl.iog" "torso_iso.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControl.iog" "torso_iso.dsm" -na;
connectAttr "groupId5.msg" "torso_iso.gn" -na;
connectAttr "lToeControl.iog" "legs_iso.dsm" -na;
connectAttr "lFootControl.iog" "legs_iso.dsm" -na;
connectAttr "rToeControl.iog" "legs_iso.dsm" -na;
connectAttr "rFootControl.iog" "legs_iso.dsm" -na;
connectAttr "rkneeControl.iog" "legs_iso.dsm" -na;
connectAttr "lkneeControl.iog" "legs_iso.dsm" -na;
connectAttr "Ref:prp_pantsBack_RControl.iog" "legs_iso.dsm" -na;
connectAttr "Ref:prp_pantsFront_RControl.iog" "legs_iso.dsm" -na;
connectAttr "Ref:prp_pantsFront_LControl.iog" "legs_iso.dsm" -na;
connectAttr "Ref:prp_pantsBack_LControl.iog" "legs_iso.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "legs_iso.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "legs_iso.dsm" -na;
connectAttr "PelvisControlShape.iog" "legs_iso.dsm" -na;
connectAttr "UpperbodyControlShape.iog" "legs_iso.dsm" -na;
connectAttr "groupId4.msg" "legs_iso.gn" -na;
connectAttr "likHandControl.iog" "arms_iso.dsm" -na;
connectAttr "Ref:prp_wristOuter_LControl.iog" "arms_iso.dsm" -na;
connectAttr "Ref:prp_wristInner_LControl.iog" "arms_iso.dsm" -na;
connectAttr "Ref:prp_wristInner_RControl.iog" "arms_iso.dsm" -na;
connectAttr "Ref:prp_wristOuter_RControl.iog" "arms_iso.dsm" -na;
connectAttr "rHandControl.iog" "arms_iso.dsm" -na;
connectAttr "rikHandControl.iog" "arms_iso.dsm" -na;
connectAttr "lHandControl.iog" "arms_iso.dsm" -na;
connectAttr "rElbowControl.iog" "arms_iso.dsm" -na;
connectAttr "lElbowControl.iog" "arms_iso.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.iog" "arms_iso.dsm" -na;
connectAttr "Ref:bip_upperArm_RFK.iog" "arms_iso.dsm" -na;
connectAttr "groupId3.msg" "arms_iso.gn" -na;
connectAttr "RefRN.phl[1]" "head_iso.dsm" -na;
connectAttr "headControl.iog" "head_iso.dsm" -na;
connectAttr "Ref:prp_cigControl.iog" "head_iso.dsm" -na;
connectAttr "neckControl.iog" "head_iso.dsm" -na;
connectAttr "rHandControl.iog" "hands_iso.dsm" -na;
connectAttr "rikHandControl.iog" "hands_iso.dsm" -na;
connectAttr "lHandControl.iog" "hands_iso.dsm" -na;
connectAttr "likHandControl.iog" "hands_iso.dsm" -na;
connectAttr "Ref:prp_wristInner_LControl.iog" "hands_iso.dsm" -na;
connectAttr "Ref:prp_wristOuter_LControl.iog" "hands_iso.dsm" -na;
connectAttr "Ref:prp_wristInner_RControl.iog" "hands_iso.dsm" -na;
connectAttr "Ref:prp_wristOuter_RControl.iog" "hands_iso.dsm" -na;
connectAttr "Ref:bip_hand_RFK.iog" "hands_iso.dsm" -na;
connectAttr "Ref:bip_hand_LFK.iog" "hands_iso.dsm" -na;
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "main.iog" "RigControls.dsm" -na;
connectAttr "UpperbodyControl.iog" "RigControls.dsm" -na;
connectAttr "PelvisControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_coat_front_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_coat_back_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "RigControls.dsm" -na;
connectAttr "lShoulderControl.iog" "RigControls.dsm" -na;
connectAttr "rShoulderControl.iog" "RigControls.dsm" -na;
connectAttr "neckControl.iog" "RigControls.dsm" -na;
connectAttr "headControl.iog" "RigControls.dsm" -na;
connectAttr "likHandControl.iog" "RigControls.dsm" -na;
connectAttr "lElbowControl.iog" "RigControls.dsm" -na;
connectAttr "lHandControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "RigControls.dsm" -na;
connectAttr "lkneeControl.iog" "RigControls.dsm" -na;
connectAttr "lFootControl.iog" "RigControls.dsm" -na;
connectAttr "lToeControl.iog" "RigControls.dsm" -na;
connectAttr "rikHandControl.iog" "RigControls.dsm" -na;
connectAttr "rElbowControl.iog" "RigControls.dsm" -na;
connectAttr "rHandControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "RigControls.dsm" -na;
connectAttr "rkneeControl.iog" "RigControls.dsm" -na;
connectAttr "rFootControl.iog" "RigControls.dsm" -na;
connectAttr "rToeControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_pantsFront_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_pantsBack_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_pantsFront_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_pantsBack_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_wristOuter_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_wristInner_RControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_wristOuter_LControl.iog" "RigControls.dsm" -na;
connectAttr "Ref:prp_wristInner_LControl.iog" "RigControls.dsm" -na;
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
connectAttr "Ref:prp_cigControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_back_0_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_front_0_RControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_back_0_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsFront_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsBack_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsFront_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsBack_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristOuter_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristInner_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristOuter_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristInner_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of spy_rig.ma
