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

a1 := 1 / 2:
a2 := 1 / 5:
a3 := 1:
c1a := 5 / 10^(7):
c2a := 0:
c5a := 1 / 10^(4):
c6a := 2 / 10^(5):
c1 := 5 / 10^(7):
c2 := 0:
c3 := 4 / 10^(4):
c4 := 1 / 2:
kv := 5:
e1a := 5 / (10^4):
c1c := 5 / (10^7):
c2c := 0:
c3c := 4 / (10^4):

r1 := kprod-kdeg*x1-k1*x1*u1:
r2 := -k3*x2-kdeg*x2-a2*x2*x10+t1*x4-a3*x2*x13+t2*x5+(k1*x1-k2*x2*x8)*u1:
r3 := k3*x2-kdeg*x3+k2*x2*x8*u1:
r4 := a2*x2*x10-t1*x4:
r5 := a3*x2*x13-t2*x5:
r6 := c6a*x13-a1*x6*x10+t2*x5-i1*x6:
r7 := i1*kv*x6-a1*x11*x7:
r8 := c4*x9-c5*x8:
r9 := c2+c1*x7-c3*x9:
r10:= -a2*x2*x10-a1*x10*x6+c4a*x12-c5a*x10-i1a*x10+e1a*x11:
r11 := -a1*x11*x7+i1a*kv*x10-e1a*kv*x11:
r12 := c2a+c1a*x7-c3a*x12:
r13 := a1*x10*x6-c6a*x13-a3*x2*x13+e2a*x14:
r14 := a1*x11*x7-e2a*kv*x14:
r15 := c2c+c1c*x7-c3c*x15:

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
	r10,
	r11,
	r12,
	r13,
	r14,
	r15
] :

# We assume that OutputsVariables[i] = OutputSystem[i].
OutputSystem := [

	x7, x10+x13, x9, x1+x2+x3, x2, x12
] :

#-----------------------------------------------------------------------------#
OutputsVariables:= [y1,y2,y3,y4,y5,y6] 					:
Inputs 		:= [u1] 					:
Parameters 	:= [t1,t2,c3a,c4a,c5,k1,k2,k3,kprod,kdeg,i1,e2a,i1a]					:
# The variables have to be ordered as the vectors field.
Variables 	:= [x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15] 					:
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
