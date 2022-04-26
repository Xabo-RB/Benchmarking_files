#Joseph Distefano. Dynamic systems biology modeling and simulation. Academic Press, 2015

import sympy as sym

x1,x2,x3,x4,u1,p1,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p20,p21,p22,p23,p24,p25 = sym.symbols('x1 x2 x3 x4 u1 p1 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p20 p21 p22 p23 p24 p25')

# 3 states:
x = [[x1], [x2], [x3], [x4]]

# 5 parameters:
p = [[p1], [p3], [p4], [p5], [p6], [p7], [p8], [p9], [p10], [p11], [p12], [p13], [p14], [p15], [p16], [p17], [p18], [p20], [p21], [p22], [p23], [p24], [p25]]

# 2 outputs:
h = [[x1], [x2], [x3], [x4]]

# 1 unknown input (time-varying parameter):
u = [u1]
w = []

# dynamic equations:
f = [[(p1*x4) - (p3*x1) - p4*( (x1**2/(p5+x1))* (1+ (p6*u1/(p7+u1)) ) )],
    [p8 - (p9*x2)- p10*( (x1*x2/(p11+x2)) * (1+(p12*u1/(p13+u1)) ) )],
    [p14 - (p15*x3) - p16*x1*x3*(1-p18*u1)/(p17+x3)],
	[(p20 - p21*(1-p24)*(1-p25)/((p22**4)+1) ) - (p20*x4) + (p21*(x3**4)) * (1+p23*u1)*(1-p24*x1)*(1-p25*x2)/(p22**4+x3**4)]]

variables_locales = locals().copy()