clear all;

syms x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 ...
     x11 x12 x13 x14 x15 x16 x17 x18 x19 x20...
     x21 x22 x23 x24 x25 x26 x27 x28 x29 x30...
     x31 x32 x33 x34 x35 x36 x37 x38 x39 x40...
     x41 x42 x43 x44 x45 x46 x47 x48 x49 x50...
     x51 x52 x53 x54 x55 x56 x57 x58 x59 x60...
     x61 x62 x63 x64 x65 x66 x67 x68 x69 x70...
     x71 x72 x73 x74 x75 x76 x77 x78 x79 x80...
     x81 x82 x83 x84 x85 x86 x87 x88 x89 x90...
     x91 x92 x93 x94 x95 x96 x97 x98 x99 x100...
     k1 kr1 kr2 k2 k3 kr3 k4 kr4 k5 k6 kr6 k7 k8...
     kr8 k10 kr10 kr11 k11 kr12 k12 k13 k14 kr14... 
     k15 kr16 k16 kr17 k17 kr18 k18 kr19 k19 kr20...
     k20 k21 kr21 k22 kr22 k23 kr23 k24 kr24 kr25 k25...
     k28 kr28 k29 kr29 kr32 k32 k33 kr33 k34 kr34 k35 kr35...
     Vm36 Km36 k37 kr37 k40 kr40 kr41 k41 k42 kr42 k43 kr44...
     k44 k45 k47 kr48 k48 k49 kr50 k50 k52 kr52 k53 k55...
     kr56 k56 k57 kr58 k58 k59 k60 k61 

x = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 ...
    x11 x12 x13 x14 x15 x16 x17 x18 x19 x20...
    x21 x22 x23 x24 x25 x26 x27 x28 x29 x30...
    x31 x32 x33 x34 x35 x36 x37 x38 x39 x40...
    x41 x42 x43 x44 x45 x46 x47 x48 x49 x50...
    x51 x52 x53 x54 x55 x56 x57 x58 x59 x60...
    x61 x62 x63 x64 x65 x66 x67 x68 x69 x70...
    x71 x72 x73 x74 x75 x76 x77 x78 x79 x80...
    x81 x82 x83 x84 x85 x86 x87 x88 x89 x90...
    x91 x92 x93 x94 x95 x96 x97 x98 x99 x100].';

p = [k1 kr1 kr2 k2 k3 kr3 k4 kr4 k5 k6 kr6 k7 k8...
    kr8 k10 kr10 k13 k14 kr14... 
    k15 kr16 k16 kr17 k17 kr18 k18 kr19 k19 kr20...
    k20 k21 kr21 k22 kr22 k23 kr23 k24 kr24 kr25 k25...
    k28 kr28 k29 kr29 kr32 k32 k33 kr33 k34 kr34 k35 kr35...
    Vm36 Km36 k37 kr37 k40 kr40 kr41 k41 k42 kr42 k43 kr44...
    k44 k45 k47 kr48 k48 k49 kr50 k50 k52 kr52 k53 k55...
    kr56 k56 k57 kr58 k58 k59 k60 k61].';

h = x;    
u = [];
w = [];

reaction_v1=k1*x1*x2-kr1*x3;
reaction_v2=k2*x3*x3-kr2*x4;
reaction_v3=k3*x4-kr3*x5;
reaction_v4=k4*x23*x12-kr4*x7;
reaction_v5=k5*x7;
reaction_v6=k6*x2-kr6*x6;
reaction_v7=k7*x5;
reaction_v8=k8*x5*x14-kr8*x15;
reaction_v9=k7*x23;
reaction_v10= k10*x6*x16- kr10*x10;
reaction_v11= k2*x10*x10- kr2*x11;
reaction_v12= k3*x11- kr3*x8;
reaction_v13= k13;
reaction_v14= k14*x8*x14- kr14*x17;
reaction_v15= k15*x9;
reaction_v16= k16*x22*x15- kr16*x23;
reaction_v17= k17*x24*x23- kr17*x25;
reaction_v18= k18*x26*x25- kr18*x27;
reaction_v19= k19*x27- kr19*x28*x25;
reaction_v20= k20*x25*x43- kr20*x29;
reaction_v21= k21*x29- kr21*x25*x26;
reaction_v22= k22*x31*x15- kr22*x32;
reaction_v23= k23*x32- kr23*x33;
reaction_v24= k24*x22*x33- kr24*x34;
reaction_v25= k25*x24*x34- kr25*x35;
reaction_v26= k18*x26*x35- kr18*x36;
reaction_v27= k19*x36- kr19*x35*x28;
reaction_v28= k28*x28*x41- kr28*x42;
reaction_v29= k29*x42- kr29*x43*x45;
reaction_v30= k20*x35*x43- kr20*x37;
reaction_v31= k21*x37- kr21*x35*x26;
reaction_v32= k32*x35- kr32*x15*x38;
reaction_v33= k33*x38- kr33*x40*x30;
reaction_v34= k34*x25- kr34*x15*x30;
reaction_v35= k35*x30- kr35*x24*x22;
reaction_v36= Vm36*x40/( Km36+x40);
reaction_v37= k37*x33- kr37*x15*x40;
reaction_v38= k24*x22*x40- kr24*x39;
reaction_v39= k37*x34- kr37*x15*x39;
reaction_v40= k40*x24*x39- kr40*x38;
reaction_v41= k41*x30*x33- kr41*x35;
reaction_v42= k42*x44*x45- kr42*x46;
reaction_v43= k43*x46;
reaction_v44= k44*x47*x45- kr44*x48;
reaction_v45= k45*x48;
reaction_v46= k44*x49*x45- kr44*x50;
reaction_v47= k47*x50;
reaction_v48= k48*x51*x53- kr48*x52;
reaction_v49= k49*x52;
reaction_v50= k50*x53*x49- kr50*x54;
reaction_v51= k49*x54;
reaction_v52= k52*x55*x51- kr52*x56;
reaction_v53= k53*x56;
reaction_v54= k52*x51*x57- kr52*x58;
reaction_v55= k55*x58;
reaction_v56= k56*x59*x60- kr56*x61;
reaction_v57= k57*x61;
reaction_v58= k58*x60*x57- kr58*x62;
reaction_v59= k59*x62;
reaction_v60= k60*x6;
reaction_v61= k61*x16;
reaction_v62= k60*x8;
reaction_v63= k16*x17*x22- kr16*x18;
reaction_v64= k17*x24*x18- kr17*x19;
reaction_v65= k18*x26*x19- kr18*x20;
reaction_v66= k19*x20- kr19*x69*x19;
reaction_v67= k20*x71*x19- kr20*x21;
reaction_v68= k21*x21- kr21*x19*x26;
reaction_v69= k22*x31*x17- kr22*x63;
reaction_v70= k23*x63- kr23*x64;
reaction_v71= k24*x22*x64- kr24*x65;
reaction_v72= k25*x24*x65- kr25*x66;
reaction_v73= k18*x26*x66- kr18*x67;
reaction_v74= k19*x67- kr19*x66*x69;
reaction_v75= k28*x69*x41- kr28*x70;
reaction_v76= k29*x70- kr29*x71*x72;
reaction_v77= k20*x71*x66- kr20*x68;
reaction_v78= k21*x68- kr21*x66*x26;
reaction_v79= k32*x66- kr32*x17*x38;
reaction_v80= k34*x19- kr34*x17*x30;
reaction_v81= k37*x64- kr37*x17*x40;
reaction_v82= k37*x65- kr37*x17*x39;
reaction_v83= k41*x30*x64- kr41*x66;
reaction_v84= k42*x44*x72- kr42*x73;
reaction_v85= k43*x73;
reaction_v86= k44*x47*x72- kr44*x74;
reaction_v87= k45*x74;
reaction_v88= k44*x72*x75- kr44*x76;
reaction_v89= k47*x76;
reaction_v90= k48*x77*x53- kr48*x78;
reaction_v91= k49*x78;
reaction_v92= k50*x53*x75- kr50*x79;
reaction_v93= k49*x79;
reaction_v94= k52*x55*x77- kr52*x80;
reaction_v95= k53*x80;
reaction_v96= k52*x77*x81- kr52*x82;
reaction_v97= k55*x82;
reaction_v98= k56*x83*x60- kr56*x84;
reaction_v99= k57*x84;
reaction_v100= k58*x60*x81- kr58*x85;
reaction_v101= k59*x85;
reaction_v102= k6*x15- kr6*x17;
reaction_v103= k6*x32- kr6*x63;
reaction_v104= k6*x33- kr6*x64;
reaction_v105= k6*x25- kr6*x19;
reaction_v106= k4*x25*x12- kr4*x88;
reaction_v107= k5*x88;
reaction_v108= k6*x27- kr6*x20;
reaction_v109= k4*x27*x12- kr4*x89;
reaction_v110= k5*x89;
reaction_v111= k6*x29- kr6*x21;
reaction_v112= k4*x29*x12- kr4*x90;
reaction_v113= k5*x90;
reaction_v114= k6*x34- kr6*x65;
reaction_v115= k4*x34*x12- kr4*x91;
reaction_v116= k5*x91;
reaction_v117= k6*x35- kr6*x66;
reaction_v118= k4*x35*x12- kr4*x92;
reaction_v119= k5*x92;
reaction_v120= k6*x36- kr6*x67;
reaction_v121= k4*x36*x12- kr4*x93;
reaction_v122= k5*x93;
reaction_v123= k6*x37- kr6*x68;
reaction_v124= k4*x37*x12- kr4*x94;
reaction_v125= k5*x94;



f = [0;
     (-1.0 * reaction_v1) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v13);
	 ( 1.0 * reaction_v1) + (-2.0 * reaction_v2);
	 ( 1.0 * reaction_v2) + (-1.0 * reaction_v3);
	 ( 1.0 * reaction_v3) + (-1.0 * reaction_v7) + (-1.0 * reaction_v8);
	 ( 1.0 * reaction_v6) + (-1.0 * reaction_v10) + (-1.0 * reaction_v60);
	 ( 1.0 * reaction_v4) + (-1.0 * reaction_v5);
	 ( 1.0 * reaction_v7) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v14) + (-1.0 * reaction_v62);
	 ( 1.0 * reaction_v5) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v107) + ( 1.0 * reaction_v110) + ( 1.0 * reaction_v113) + ( 1.0 * reaction_v116) + ( 1.0 * reaction_v119) + ( 1.0 * reaction_v122) + ( 1.0 * reaction_v125);
	 ( 1.0 * reaction_v10) + (-2.0 * reaction_v11);
	 ( 1.0 * reaction_v11) + (-1.0 * reaction_v12);
	 (-1.0 * reaction_v4) + ( 1.0 * reaction_v15) + (-1.0 * reaction_v106) + (-1.0 * reaction_v109) + (-1.0 * reaction_v112) + (-1.0 * reaction_v115) + (-1.0 * reaction_v118) + (-1.0 * reaction_v121) + (-1.0 * reaction_v124);
	 ( 1.0 * reaction_v61);
	 (-1.0 * reaction_v8) + (-1.0 * reaction_v14);
	 ( 1.0 * reaction_v8) + (-1.0 * reaction_v16) + (-1.0 * reaction_v22) + ( 1.0 * reaction_v32) + ( 1.0 * reaction_v34) + ( 1.0 * reaction_v37) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v102);
	 (-1.0 * reaction_v10) + (-1.0 * reaction_v61);
	 ( 1.0 * reaction_v14) + (-1.0 * reaction_v63) + (-1.0 * reaction_v69) + ( 1.0 * reaction_v79) + ( 1.0 * reaction_v80) + ( 1.0 * reaction_v81) + ( 1.0 * reaction_v82) + ( 1.0 * reaction_v102);
	 ( 1.0 * reaction_v5) + ( 1.0 * reaction_v9) + ( 1.0 * reaction_v63) + (-1.0 * reaction_v64);
	 ( 1.0 * reaction_v64) + (-1.0 * reaction_v65) + ( 1.0 * reaction_v66) + (-1.0 * reaction_v67) + ( 1.0 * reaction_v68) + (-1.0 * reaction_v80) + ( 1.0 * reaction_v105) + ( 1.0 * reaction_v107);
	 ( 1.0 * reaction_v65) + (-1.0 * reaction_v66) + ( 1.0 * reaction_v108) + ( 1.0 * reaction_v110);
	 ( 1.0 * reaction_v67) + (-1.0 * reaction_v68) + ( 1.0 * reaction_v111) + ( 1.0 * reaction_v113);
	 (-1.0 * reaction_v16) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v38) + (-1.0 * reaction_v63) + (-1.0 * reaction_v71);
	 (-1.0 * reaction_v4) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v16) + (-1.0 * reaction_v17);
	 (-1.0 * reaction_v17) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v40) + (-1.0 * reaction_v64) + (-1.0 * reaction_v72);
	 ( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + ( 1.0 * reaction_v19) + (-1.0 * reaction_v20) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v34) + (-1.0 * reaction_v105) + (-1.0 * reaction_v106);
	 (-1.0 * reaction_v18) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v26) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v65) + ( 1.0 * reaction_v68) + (-1.0 * reaction_v73) + ( 1.0 * reaction_v78);
	 ( 1.0 * reaction_v18) + (-1.0 * reaction_v19) + (-1.0 * reaction_v108) + (-1.0 * reaction_v109);
	 ( 1.0 * reaction_v19) + ( 1.0 * reaction_v27) + (-1.0 * reaction_v28);
	 ( 1.0 * reaction_v20) + (-1.0 * reaction_v21) + (-1.0 * reaction_v111) + (-1.0 * reaction_v112);
	 ( 1.0 * reaction_v33) + ( 1.0 * reaction_v34) + (-1.0 * reaction_v35) + (-1.0 * reaction_v41) + ( 1.0 * reaction_v80) + (-1.0 * reaction_v83);
	 (-1.0 * reaction_v22) + ( 1.0 * reaction_v36) + (-1.0 * reaction_v69);
	 ( 1.0 * reaction_v22) + (-1.0 * reaction_v23) + (-1.0 * reaction_v103);
	 ( 1.0 * reaction_v23) + (-1.0 * reaction_v24) + (-1.0 * reaction_v37) + (-1.0 * reaction_v41) + (-1.0 * reaction_v104);
	 ( 1.0 * reaction_v24) + (-1.0 * reaction_v25) + (-1.0 * reaction_v39) + (-1.0 * reaction_v114) + (-1.0 * reaction_v115);
	 ( 1.0 * reaction_v25) + (-1.0 * reaction_v26) + ( 1.0 * reaction_v27) + (-1.0 * reaction_v30) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v32) + ( 1.0 * reaction_v41) + (-1.0 * reaction_v117) + (-1.0 * reaction_v118);
	 ( 1.0 * reaction_v26) + (-1.0 * reaction_v27) + (-1.0 * reaction_v120) + (-1.0 * reaction_v121);
	 ( 1.0 * reaction_v30) + (-1.0 * reaction_v31) + (-1.0 * reaction_v123) + (-1.0 * reaction_v124);
	 ( 1.0 * reaction_v32) + (-1.0 * reaction_v33) + ( 1.0 * reaction_v40) + ( 1.0 * reaction_v79);
	 ( 1.0 * reaction_v38) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v40) + ( 1.0 * reaction_v82);
	 ( 1.0 * reaction_v33) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v37) + (-1.0 * reaction_v38) + ( 1.0 * reaction_v81);
	 (-1.0 * reaction_v28) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v75) + ( 1.0 * reaction_v85);
	 ( 1.0 * reaction_v28) + (-1.0 * reaction_v29);
	 (-1.0 * reaction_v20) + ( 1.0 * reaction_v29) + (-1.0 * reaction_v30);
	 (-1.0 * reaction_v42) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v84) + ( 1.0 * reaction_v85);
	 ( 1.0 * reaction_v29) + (-1.0 * reaction_v42) + (-1.0 * reaction_v44) + ( 1.0 * reaction_v45) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v47);
	 ( 1.0 * reaction_v42) + (-1.0 * reaction_v43);
	 (-1.0 * reaction_v44) + ( 1.0 * reaction_v51) + (-1.0 * reaction_v86) + ( 1.0 * reaction_v93);
	 ( 1.0 * reaction_v44) + (-1.0 * reaction_v45);
	 ( 1.0 * reaction_v45) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v50);
	 ( 1.0 * reaction_v46) + (-1.0 * reaction_v47);
	 ( 1.0 * reaction_v47) + (-1.0 * reaction_v48) + (-1.0 * reaction_v52) + ( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v55);
	 ( 1.0 * reaction_v48) + (-1.0 * reaction_v49);
	 (-1.0 * reaction_v48) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v50) + ( 1.0 * reaction_v51) + (-1.0 * reaction_v90) + ( 1.0 * reaction_v91) + (-1.0 * reaction_v92) + ( 1.0 * reaction_v93);
	 ( 1.0 * reaction_v50) + (-1.0 * reaction_v51);
	 (-1.0 * reaction_v52) + ( 1.0 * reaction_v59) + (-1.0 * reaction_v94) + ( 1.0 * reaction_v101);
	 ( 1.0 * reaction_v52) + (-1.0 * reaction_v53);
	 ( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58);
	 ( 1.0 * reaction_v54) + (-1.0 * reaction_v55);
	 ( 1.0 * reaction_v55) + (-1.0 * reaction_v56);
	 (-1.0 * reaction_v56) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58) + ( 1.0 * reaction_v59) + (-1.0 * reaction_v98) + ( 1.0 * reaction_v99) + (-1.0 * reaction_v100) + ( 1.0 * reaction_v101);
	 ( 1.0 * reaction_v56) + (-1.0 * reaction_v57);
	 ( 1.0 * reaction_v58) + (-1.0 * reaction_v59);
	 ( 1.0 * reaction_v69) + (-1.0 * reaction_v70) + ( 1.0 * reaction_v103);
	 ( 1.0 * reaction_v70) + (-1.0 * reaction_v71) + (-1.0 * reaction_v81) + (-1.0 * reaction_v83) + ( 1.0 * reaction_v104);
	 ( 1.0 * reaction_v71) + (-1.0 * reaction_v72) + (-1.0 * reaction_v82) + ( 1.0 * reaction_v114) + ( 1.0 * reaction_v116);
	 ( 1.0 * reaction_v72) + (-1.0 * reaction_v73) + ( 1.0 * reaction_v74) + (-1.0 * reaction_v77) + ( 1.0 * reaction_v78) + (-1.0 * reaction_v79) + ( 1.0 * reaction_v83) + ( 1.0 * reaction_v117) + ( 1.0 * reaction_v119);
	 ( 1.0 * reaction_v73) + (-1.0 * reaction_v74) + ( 1.0 * reaction_v120) + ( 1.0 * reaction_v122);
	 ( 1.0 * reaction_v77) + (-1.0 * reaction_v78) + ( 1.0 * reaction_v123) + ( 1.0 * reaction_v125);
	 ( 1.0 * reaction_v66) + ( 1.0 * reaction_v74) + (-1.0 * reaction_v75);
	 ( 1.0 * reaction_v75) + (-1.0 * reaction_v76);
	 (-1.0 * reaction_v67) + ( 1.0 * reaction_v76) + (-1.0 * reaction_v77);
	 ( 1.0 * reaction_v76) + (-1.0 * reaction_v84) + (-1.0 * reaction_v86) + ( 1.0 * reaction_v87) + (-1.0 * reaction_v88) + ( 1.0 * reaction_v89);
	 ( 1.0 * reaction_v84) + (-1.0 * reaction_v85);
	 ( 1.0 * reaction_v86) + (-1.0 * reaction_v87);
	 ( 1.0 * reaction_v87) + (-1.0 * reaction_v88) + ( 1.0 * reaction_v91) + (-1.0 * reaction_v92);
	 ( 1.0 * reaction_v88) + (-1.0 * reaction_v89);
	 ( 1.0 * reaction_v89) + (-1.0 * reaction_v90) + (-1.0 * reaction_v94) + ( 1.0 * reaction_v95) + (-1.0 * reaction_v96) + ( 1.0 * reaction_v97);
	 ( 1.0 * reaction_v90) + (-1.0 * reaction_v91);
	 ( 1.0 * reaction_v92) + (-1.0 * reaction_v93);
	 ( 1.0 * reaction_v94) + (-1.0 * reaction_v95);
	 ( 1.0 * reaction_v95) + (-1.0 * reaction_v96) + ( 1.0 * reaction_v99) + (-1.0 * reaction_v100);
	 ( 1.0 * reaction_v96) + (-1.0 * reaction_v97);
	 ( 1.0 * reaction_v97) + (-1.0 * reaction_v98);
	 ( 1.0 * reaction_v98) + (-1.0 * reaction_v99);
	 ( 1.0 * reaction_v100) + (-1.0 * reaction_v101);
	 ( 1.0 * reaction_v60);
	 ( 1.0 * reaction_v62);
	 ( 1.0 * reaction_v106) + (-1.0 * reaction_v107);
	 ( 1.0 * reaction_v109) + (-1.0 * reaction_v110);
	 ( 1.0 * reaction_v112) + (-1.0 * reaction_v113);
	 ( 1.0 * reaction_v115) + (-1.0 * reaction_v116);
	 ( 1.0 * reaction_v118) + (-1.0 * reaction_v119);
	 ( 1.0 * reaction_v121) + (-1.0 * reaction_v122);
	 ( 1.0 * reaction_v124) + (-1.0 * reaction_v125);
	 x42+x28+x70+x69;
	 x51+x77;
	 x59+x83;
	 x45+x46+x48+x50+x72+x73+x74+x76;
	 x33+x34+x35+x36+x37+x38+x39+x40+x91+x92+x93+x94+x64+x65+x66+x67+x68;
	 x5+x7+x15+x23+x25+x27+x29+x32+x33+x34+x35+x36+x37+x88+x89+x90+x91+x92+x93+x94+x8+x11+x17+x18+x19+x20+x21+x63+x64+x65+x66+x67+x68];
	 
ics = [4962.0,50000.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0, 81000.0,0.0,12000.0,...
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,11000.0,0.0,26300.0, 0.0,72000.0,0.0,0.0,0.0,40000.0,...
	101000.0, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,40000.0,0.0,0.0,40000.0,0.0,0.0,...
	2.2E7,0.0,0.0,0.0,0.0, 0.0,40000.0,0.0,2.1E7,0.0,0.0,0.0,0.0,1.0E7,0.0,0.0,0.0,...
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,...
	0.0, 0.0,0.0, 0.0,0.0,0.0,0.0,0.0, 0.0,0.0,0.0,0.0,0.0,0.0, 0.0,0.0,0.0,0.0];
	
known_ics = ones(1,100);

save('MAP','x','p','u','w','h','f','ics','known_ics');
