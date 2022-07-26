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


r1 := u1-(k1+k2)*x1:
r2 := k1*x1-(k3+k6+k7)*x2+k5*x4:
r3 := k2*x1+k3*x2-k4*x3:
r4 := k6*x2-k5*x4:

VectorField := [

	r1,
	r2,
	r3,
	r4
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	s2*x2, s3*x3
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2] 					:
Inputs 		:= [u1] 					:
Parameters 	:= [k1, k2, k3, k4, k5, k6, k7, s2, s3]					:
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
