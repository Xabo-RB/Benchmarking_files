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


r1 := k4*x6 + k2*x4 - k1*x1*x2:
r2 := k3*x4 + k2*x4 + k1*x1*x2):
r3 := k5*x6 + k3*x4 - k6*x5*x3:
r4 := -k3*x4 - k2*x4 + k1*x1*x2:
r5 := k5*x6 + k4*x6 - k6*x5*x3:
r6 := -k5*x6 - k4*x6 + k6*x5*x3:

VectorField := [

	r1,
	r2,
	r3,
	r4,
	r5,
	r6
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x2,x3
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2] 					:
Inputs 		:= [] 					:
Parameters 	:= [k1, k2, k3, k4, k5, k6]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1,x2,x3,x4,x5,x6] 					:
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
