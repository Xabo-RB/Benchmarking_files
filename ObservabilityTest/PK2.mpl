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


r1 := a1 * (x2 - x1) - (ka * n * x1) / (kc * ka + kc * x3 + ka * x1):
r2 := a1 * (x1 - x2):
r3 := b1 * (x4 - x3) - (kc * n * x3) / (kc * ka + kc * x3 + ka * x1):
r4 := b2 * (x3 - x4):

VectorField := [

	r1,
	r2,
	r3,
	r4
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x1
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1] 					:
Inputs 		:= [] 					:
Parameters 	:= [ka, n, b2, kc, b1, a1]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1, x2, x3, x4] 					:
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
