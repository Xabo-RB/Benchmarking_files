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


r1 := k1*(s1t-ps1)*(KK1^n1)/(KK1^n1+ps3^n1)-k2*ps1:
r2 := k3*(s2t-ps2)*ps1*(1+(alpha*ps3^n2)/(KK2^n2+ps3^n2))-k4*ps2 :
r3 := k5*(s3t-ps3)*ps2-k6*ps3:

VectorField := [

	r1,
	r2,
	r3
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	ps1,ps2,ps3
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2,y3] 					:
Inputs 		:= [] 					:
Parameters 	:= [k1,k2,k3, k4, k5, k6,s1t, s2t, s3t, KK1, KK2, n1, n2, alpha]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [ps1,ps2,ps3] 					:
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
