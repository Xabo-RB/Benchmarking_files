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


r1 := (p1*x4) - (p3*x1) - p4*( (x1^2/(p5+x1))* (1+ (p6*u1/(p7+u1)) ) ):
r2 := p8 - (p9*x2)- p10*( (x1*x2/(p11+x2)) * (1+(p12*u1/(p13+u1)) ) ):
r3 := p14 - (p15*x3) - p16*x1*x3*(1-p18*u1)/(p17+x3):
r4 := p20 - p21*(1-p24)*(1-p25)/((p22^4)+1) - (p20*x4) + (p21*(x3^4)) + (1+p23*u1)*(1-p24*x1)*(1-p25*x2)/(p22^4+x3^4):

VectorField := [

	r1,
	r2,
	r3,
	r4
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x1, x2,x3,x4
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2,y3,y4] 					:
Inputs 		:= [u1] 					:
Parameters 	:= [p1,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p20,p21,p22,p23,p24,p25]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1,x2,x3,x4] 					:
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
