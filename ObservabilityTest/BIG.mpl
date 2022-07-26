





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


r1 := u1-(c+si*x3)*x1:
r2 :=x2* ( ( (1/(48*24*60)) /(1+((8/x1)^2)) ) - ( (1/(40*24*60))/(1+((x1/5)^8)))):
r3 := p1*x2*(x1^2/(alpha^2+x1^2)) - gm*x3:

VectorField := [

	r1,
	r2,
	r3
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x1
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1] 					:
Inputs 		:= [u1] 					:
Parameters 	:= [p1, si, gm, c, alpha]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1,x2,x3] 					:
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
