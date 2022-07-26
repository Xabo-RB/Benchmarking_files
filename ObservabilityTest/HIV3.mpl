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


r1 := lm - (d * xx) - (beta * xx * v):
r2 := (beta * xx * v) - (a * y):
r3 := (k * y) - (uu * v):
r4 := (c * z * y * ww) - (c * q * y * ww) - (b * ww):
r5 := (c * q * y * ww) - (hh * z):

VectorField := [

	r1,
	r2,
	r3,
	r4,
	r5
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	ww, z
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2] 					:
Inputs 		:= [] 					:
Parameters 	:= [beta,lm,a,b,c,d,hh,k,q,uu]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [xx,y,v,ww,z] 					:
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
