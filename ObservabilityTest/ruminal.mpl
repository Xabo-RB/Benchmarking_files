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


r1 := -x1*x5/(k1 + x1):
r2 := (2*x1*x5/((k1 + x1) * 3)) - k3*x2:
r3 := k3*x2*(1/2) - k3*x3:
r4 := x1*x5/(3*(k1 + x1)) + (k3*x2*(1/2)) + (k3*x3):
r5 := -k2*x5:

VectorField := [

	r1,
	r2,
	r3,
	r4,
	r5
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x1, x2+x3, x4
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2,y3] 					:
Inputs 		:= [] 					:
Parameters 	:= [k1,k2,k3]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1,x2,x3,x4,x5] 					:
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
