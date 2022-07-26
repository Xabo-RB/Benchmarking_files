





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


r1 := -b*x1*x4-d*x1 + s:
r2 := b*q1*x1*x4-k1*x2-w1*x2:
r3 := b*q2*x1*x4+k1*x2-w2*x3:
r4 := -c*x4+k2*x3

VectorField := [

	r1,
	r2,
	r3,
	r4
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x1, x4
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2] 					:
Inputs 		:= [] 					:
Parameters 	:= [b,c,d,q1,q2,k1,k2,w1,w2,s]					:
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
