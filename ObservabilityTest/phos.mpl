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


r1 := -b1*b0*s*x1*i - b0*s*i - s*mu + mu + g*r:
r2 := M*x1:
r3 := -nu*i + b1*b0*s*x1*i + b0*s*i - mu*i:
r4 := nu*i - mu*r - g*r:
r5 := -M*x2:

VectorField := [

	r1,
	r2,
	r3,
	r4,
	r5
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	i,r
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2] 					:
Inputs 		:= [] 					:
Parameters 	:= [nu, b1, b0, M, mu, g]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [s, x2, i, r, x1] 					:
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
