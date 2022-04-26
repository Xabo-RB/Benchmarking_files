# Capistran M., Moreles M., Lara B.
# Parameter Estimation of Some Epidemic Models. The Case of Recurrent Epidemics Caused by Respiratory Syncytial Virus
# doi.org/10.1007/s11538-009-9429-3
# Equations (7)-(11)

import sympy as sym

s,x2,i,r,x1,nu,b1,b0,M,mu,g = sym.symbols('s x2 i r x1 nu b1 b0 M mu g')

# 3 states:
x = [[s], [x2], [i], [r], [x1]]

# 5 parameters:
p = [[nu], [b1], [b0], [M], [mu], [g]]

# 2 outputs:
h = [[i],[r]]

# 1 unknown input (time-varying parameter):
u = []
w = []

# dynamic equations:
f = [[-b1*b0*s*x1*i - b0*s*i - s*mu + mu + g*r], [M*x1],[-nu*i + b1*b0*s*x1*i + b0*s*i - mu*i],[nu*i - mu*r - g*r], [-M*x2]]

variables_locales = locals().copy()