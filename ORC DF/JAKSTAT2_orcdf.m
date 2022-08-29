% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
%states
syms EpoRJAK2 EpoRpJAK2 p1EpoRpJAK2 p2EpoRpJAK2 p12EpoRpJAK2 EpoRJAK2_CIS
syms SHP1 SHP1Act STAT5 pSTAT5 npSTAT5 CISnRNA1 CISnRNA2
syms CISnRNA3 CISnRNA4 CISnRNA5 CISRNA CIS
syms SOCS3nRNA1 SOCS3nRNA2 SOCS3nRNA3 SOCS3nRNA4 SOCS3nRNA5 SOCS3RNA SOCS3
% 27 parameters (3 are initial conditions):
syms CISEqc CISEqcOE CISInh CISRNADelay  CISRNATurn CISTurn
syms EpoRActJAK2 EpoRCISInh EpoRCISRemove JAK2ActEpo JAK2EpoRDeaSHP1 SHP1ActEpoR
syms SHP1Dea SHP1ProOE SOCS3Eqc SOCS3EqcOE SOCS3Inh SOCS3RNADelay 
syms SOCS3RNATurn SOCS3Turn STAT5ActEpoR STAT5ActJAK2 STAT5Exp STAT5Imp
syms init_EpoRJAK2 init_SHP1 init_STAT5
syms ActD CISoe SOCS3oe SHP1oe Epo
%constants
cyt = 0.4;
nuc = 0.275;

% Step 2: write the system functions 
F=[EpoRpJAK2*(JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act + (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p12EpoRpJAK2 + (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p1EpoRpJAK2 + (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p2EpoRpJAK2 - (Epo*EpoRJAK2*JAK2ActEpo)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) ;
 (Epo*EpoRJAK2*JAK2ActEpo)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (EpoRpJAK2*EpoRActJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (3*EpoRpJAK2*EpoRActJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) - EpoRpJAK2*(JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act ;
 (EpoRpJAK2*EpoRActJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p1EpoRpJAK2 - (3*EpoRActJAK2*p1EpoRpJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ;
 (3*EpoRpJAK2*EpoRActJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) - (EpoRActJAK2*p2EpoRpJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p2EpoRpJAK2 ;
 (EpoRActJAK2*p2EpoRpJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p12EpoRpJAK2 + (3*EpoRActJAK2*p1EpoRpJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ;
 -EpoRJAK2_CIS*(EpoRCISRemove / init_EpoRJAK2)*(p12EpoRpJAK2 + p1EpoRpJAK2) ;
 SHP1Dea*SHP1Act - SHP1*(SHP1ActEpoR / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) ;
 SHP1*(SHP1ActEpoR / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) - SHP1Dea*SHP1Act ;
 (STAT5Exp*npSTAT5*nuc)/cyt - (STAT5*(STAT5ActJAK2 / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2))/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (STAT5*(STAT5ActEpoR / init_EpoRJAK2^2)*(p12EpoRpJAK2 + p1EpoRpJAK2)^2)/((CIS*(CISInh / CISEqc) + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ;
 (STAT5*(STAT5ActJAK2 / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2))/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - STAT5Imp*pSTAT5 + (STAT5*(STAT5ActEpoR / init_EpoRJAK2^2)*(p12EpoRpJAK2 + p1EpoRpJAK2)^2)/((CIS*(CISInh / CISEqc) + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ;
 (STAT5Imp*cyt*pSTAT5)/nuc - STAT5Exp*npSTAT5 ;
 - CISnRNA1*CISRNADelay - (1 / init_STAT5)*CISRNATurn*npSTAT5*(ActD - 1) ;
 CISnRNA1*CISRNADelay - CISnRNA2*CISRNADelay ;
 CISnRNA2*CISRNADelay - CISnRNA3*CISRNADelay ;
 CISnRNA3*CISRNADelay - CISnRNA4*CISRNADelay ;
 CISnRNA4*CISRNADelay - CISnRNA5*CISRNADelay ;
 (CISnRNA5*CISRNADelay*nuc)/cyt - CISRNA*CISRNATurn ;
 CISRNA*CISEqc*CISTurn - CIS*CISTurn + CISoe*CISTurn*CISEqcOE * CISEqc ;
 - SOCS3nRNA1*SOCS3RNADelay - (1 / init_STAT5)*SOCS3RNATurn*npSTAT5*(ActD - 1) ;
 SOCS3nRNA1*SOCS3RNADelay - SOCS3nRNA2*SOCS3RNADelay ;
 SOCS3nRNA2*SOCS3RNADelay - SOCS3nRNA3*SOCS3RNADelay ;
 SOCS3nRNA3*SOCS3RNADelay - SOCS3nRNA4*SOCS3RNADelay ;
 SOCS3nRNA4*SOCS3RNADelay - SOCS3nRNA5*SOCS3RNADelay ;
 (SOCS3nRNA5*SOCS3RNADelay*nuc)/cyt - SOCS3RNA*SOCS3RNATurn ;
 SOCS3RNA*SOCS3Eqc*SOCS3Turn - SOCS3*SOCS3Turn + SOCS3oe*SOCS3Turn*SOCS3EqcOE * SOCS3Eqc];

% Step 3: write the output functions
h=[1 / init_EpoRJAK2 *  2 * (EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2 + p12EpoRpJAK2); 1 / init_EpoRJAK2 *  16 * (p1EpoRpJAK2 + p2EpoRpJAK2 + p12EpoRpJAK2); ...
	1 / SOCS3Eqc * SOCS3,  1 / init_STAT5 * (STAT5+pSTAT5);  1 / init_STAT5 * pSTAT5;  STAT5; SHP1 + SHP1Act; CIS;...
	SOCS3; 100*pSTAT5/(pSTAT5+STAT5); SOCS3RNA; CISRNA; 1 / init_SHP1 * (SHP1 + SHP1Act) * (1 + (SHP1oe * SHP1ProOE)); 1 / CISEqc * CIS]; 

% Step 4: write the vector of dynamic states
X = [EpoRJAK2 EpoRpJAK2 p1EpoRpJAK2 p2EpoRpJAK2 p12EpoRpJAK2 EpoRJAK2_CIS SHP1 SHP1Act STAT5 pSTAT5 ...
	 npSTAT5 CISnRNA1 CISnRNA2 CISnRNA3 CISnRNA4 CISnRNA5 CISRNA CIS SOCS3nRNA1 SOCS3nRNA2 SOCS3nRNA3 ...
	 SOCS3nRNA4 SOCS3nRNA5 SOCS3RNA SOCS3];  


% Step 5: write the vector of unknown parameters
Theta = [CISEqc CISEqcOE CISInh CISRNADelay CISRNATurn CISTurn EpoRActJAK2 EpoRCISInh EpoRCISRemove ...
	JAK2ActEpo JAK2EpoRDeaSHP1 SHP1ActEpoR SHP1Dea SHP1ProOE SOCS3Eqc SOCS3EqcOE SOCS3Inh SOCS3RNADelay ...
	SOCS3RNATurn SOCS3Turn STAT5ActEpoR STAT5ActJAK2 STAT5Exp STAT5Imp init_EpoRJAK2 init_SHP1 init_STAT5];


% Step 6: write the vector of measured inputs U=[u1,...,ur]; U=[], if no
% measured inputs are applied
U=[ActD CISoe SOCS3oe SHP1oe Epo];

% Step 7: write the vector of unmeasured inputs W=[w1,...,wnw]; W=[], if no
% unmeasured inputs are applied
W=[];

% Step 8: choose the maximum order of the time derivative of unmeasured
% inputs considered; normally, it is recommended that kmax=2^i-1>n+l+nw 
% (i=1,2,3,..., n is the number of dynamic states, l is the number of
% parameters, nw is the number of unmeasured inputs); if no unmeasured
% inputs are applied, the default kmax is n+l-1.
kmax=50; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc