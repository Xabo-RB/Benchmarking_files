#-----------------------------------------------------------------------------#
#								     	System 
# Description 	: 
# Result	:
#
#-----------------------------------------------------------------------------#
infolevel[observabilityTest] := 1 :
infolevel[observabilitySymmetries] := 1 :
#-----------------------------------------------------------------------------#
# Bibliography : Milena Anguelova, private communication 2006
# This examples is observable while previous code say opposite. The bug is know
# fixed. 
#-----------------------------------------------------------------------------#
# We assume that diff(Variables[i],t) = VectorsField[i]

cyt := 2/5:
nuc := 11/40:

VectorField := [

	EpoRpJAK2*(JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act + (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p12EpoRpJAK2 + (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p1EpoRpJAK2 + (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p2EpoRpJAK2 - (Epo*EpoRJAK2*JAK2ActEpo)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) ,
 (Epo*EpoRJAK2*JAK2ActEpo)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (EpoRpJAK2*EpoRActJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (3*EpoRpJAK2*EpoRActJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) - EpoRpJAK2*(JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act ,
 (EpoRpJAK2*EpoRActJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p1EpoRpJAK2 - (3*EpoRActJAK2*p1EpoRpJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ,
 (3*EpoRpJAK2*EpoRActJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) - (EpoRActJAK2*p2EpoRpJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p2EpoRpJAK2 ,
 (EpoRActJAK2*p2EpoRpJAK2)/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (JAK2EpoRDeaSHP1 / init_SHP1)*SHP1Act*p12EpoRpJAK2 + (3*EpoRActJAK2*p1EpoRpJAK2)/((EpoRCISInh*EpoRJAK2_CIS + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ,
 -EpoRJAK2_CIS*(EpoRCISRemove / init_EpoRJAK2)*(p12EpoRpJAK2 + p1EpoRpJAK2) ,
 SHP1Dea*SHP1Act - SHP1*(SHP1ActEpoR / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) ,
 SHP1*(SHP1ActEpoR / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2) - SHP1Dea*SHP1Act ,
 (STAT5Exp*npSTAT5*nuc)/cyt - (STAT5*(STAT5ActJAK2 / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2))/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - (STAT5*(STAT5ActEpoR / init_EpoRJAK2^2)*(p12EpoRpJAK2 + p1EpoRpJAK2)^2)/((CIS*(CISInh / CISEqc) + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ,
 (STAT5*(STAT5ActJAK2 / init_EpoRJAK2)*(EpoRpJAK2 + p12EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2))/(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1) - STAT5Imp*pSTAT5 + (STAT5*(STAT5ActEpoR / init_EpoRJAK2^2)*(p12EpoRpJAK2 + p1EpoRpJAK2)^2)/((CIS*(CISInh / CISEqc) + 1)*(SOCS3*(SOCS3Inh / SOCS3Eqc) + 1)) ,
 (STAT5Imp*cyt*pSTAT5)/nuc - STAT5Exp*npSTAT5 ,
 - CISnRNA1*CISRNADelay - (1 / 914745)*CISRNATurn*npSTAT5*(ActD - 1) ,
 CISnRNA1*CISRNADelay - CISnRNA2*CISRNADelay ,
 CISnRNA2*CISRNADelay - CISnRNA3*CISRNADelay ,
 CISnRNA3*CISRNADelay - CISnRNA4*CISRNADelay ,
 CISnRNA4*CISRNADelay - CISnRNA5*CISRNADelay ,
 (CISnRNA5*CISRNADelay*nuc)/cyt - CISRNA*CISRNATurn ,
 CISRNA*CISEqc*CISTurn - CIS*CISTurn + CISoe*CISTurn*CISEqcOE * CISEqc ,
 - SOCS3nRNA1*SOCS3RNADelay - (1 / 914745)*SOCS3RNATurn*npSTAT5*(ActD - 1) ,
 SOCS3nRNA1*SOCS3RNADelay - SOCS3nRNA2*SOCS3RNADelay ,
 SOCS3nRNA2*SOCS3RNADelay - SOCS3nRNA3*SOCS3RNADelay ,
 SOCS3nRNA3*SOCS3RNADelay - SOCS3nRNA4*SOCS3RNADelay ,
 SOCS3nRNA4*SOCS3RNADelay - SOCS3nRNA5*SOCS3RNADelay ,
 (SOCS3nRNA5*SOCS3RNADelay*nuc)/cyt - SOCS3RNA*SOCS3RNATurn ,
 SOCS3RNA*SOCS3Eqc*SOCS3Turn - SOCS3*SOCS3Turn + SOCS3oe*SOCS3Turn*SOCS3EqcOE * SOCS3Eqc

]  :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [1 / init_EpoRJAK2 *  2 * (EpoRpJAK2 + p1EpoRpJAK2 + p2EpoRpJAK2 + p12EpoRpJAK2),
 1 / init_EpoRJAK2 *  16 * (p1EpoRpJAK2 + p2EpoRpJAK2 + p12EpoRpJAK2),
 1 / SOCS3Eqc * SOCS3,
 1 / 914745 * (STAT5+pSTAT5),
 1 / 914745 * pSTAT5,
 STAT5,
 SHP1 + SHP1Act,
 CIS,
 SOCS3,
 100*pSTAT5/(pSTAT5+STAT5),
 SOCS3RNA,
 CISRNA,
 1 / init_SHP1 * (SHP1 + SHP1Act) * (1 + (SHP1oe * SHP1ProOE)),
 1 / CISEqc * CIS] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14] 					:
Inputs 		:= [ActD,  CISoe, SOCS3oe, SHP1oe, Epo] 					:
Parameters 	:= [CISEqc,
CISEqcOE,
CISInh,
CISRNADelay,
CISRNATurn,
CISTurn,
EpoRActJAK2,
EpoRCISInh,
EpoRCISRemove,
JAK2ActEpo,
JAK2EpoRDeaSHP1,
SHP1ActEpoR,
SHP1Dea,
SHP1ProOE,
SOCS3Eqc,
SOCS3EqcOE,
SOCS3Inh,
SOCS3RNADelay,
SOCS3RNATurn,
SOCS3Turn,
STAT5ActEpoR,
STAT5ActJAK2,
STAT5Exp,
STAT5Imp,
init_EpoRJAK2,
init_SHP1]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [EpoRJAK2,
EpoRpJAK2,
p1EpoRpJAK2,
p2EpoRpJAK2,
p12EpoRpJAK2,
EpoRJAK2_CIS,
SHP1,
SHP1Act,
STAT5,
pSTAT5,
npSTAT5,
CISnRNA1,
CISnRNA2,
CISnRNA3,
CISnRNA4,
CISnRNA5,
CISRNA,
CIS,
SOCS3nRNA1,
SOCS3nRNA2,
SOCS3nRNA3,
SOCS3nRNA4,
SOCS3nRNA5,
SOCS3RNA,
SOCS3] 					:
#-----------------------------------------------------------------------------#
# CAUTION read section II of the file INSTALL
libname := cat(currentdir(),"/release"),libname :
readlib(observabilityTest) :
NonObservable := observabilityTest(	VectorField	,
					Variables	,
					OutputSystem	,
					Parameters	,
					Inputs			) :
print(%) :					
GroupInfGen := observabilitySymmetries(	VectorField	,
					Variables	,
					OutputSystem	,
					Parameters	,
					Inputs		,
					NonObservable		) :
print(%) :
#-----------------------------------------------------------------------------#
quit :

