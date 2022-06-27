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

r1 := -t1*x1*c1*u1-t5*x1+t6*x2:
r2 := t5*x1-t6*x2:
r3 := t1*c1*u1*x1-t2*x3*(-x6+2.8):
r4 := t2*x3*(-x6+2.8)-t3*x4:
r5 := t3*x4-t4*x5:
r6 := -t7*x3*x6/(1+t13*x1)-t7*x4*x6/(1+t13*x13)+t8*(-x6+2.8)*c2:
r7 := -t9*x8*(-x6+2.8)+t10*(-x8+165)*c2:
r8 := t11*(-x8+165):
r9 := -t12*c1*u1*x11:
r10:= x10*t14/(t15+x10)-t16*x13:


VectorField := [

	r1,
	r2,
	r3,
	r4,
	r5,
	r6,
	r7,
	r8,
	r9,
	r10
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x1 + x3 + x4, t18*(x3 + x4 + x5 +(0.34-x11)), t19*(x4 + x5), t20*(-x6+2.8), t21*x10, t22*x10*t17/t11, x13, -x8+165
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2,y3,y4,y5,y6,y7,y8] 					:
Inputs 		:= [u1] 					:
Parameters 	:= [t1, t2 , t3 , t4 , t5 , t6 , t7 , t8 , t9 , t10 , t11 , t12, t13 , t14 , t15 , t16 , t17, t18 , t19 , t20 , t21 , t22]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1,x2,x3,x4,x5,x6,x8,x10,x11,x13] 					:
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
