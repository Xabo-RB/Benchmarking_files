# Wodarz, D., Nowak, M.
# Specific therapy regimes could lead to long-term immunological control of HIV
# https://doi.org/10.1073/pnas.96.25.14464
# Page 1

import sympy as sym

# 5 states:
xx = sym.Symbol('xx')
y = sym.Symbol('y')
v = sym.Symbol('v')
ww = sym.Symbol('ww')
z = sym.Symbol('z')
x = [[xx], [y], [v], [ww], [z]]

# 10 parameters:
beta = sym.Symbol('beta')
lm = sym.Symbol('lm')
a = sym.Symbol('a')
b = sym.Symbol('b')
c = sym.Symbol('c')
d = sym.Symbol('k1')
hh = sym.Symbol('hh')
k = sym.Symbol('k')
q = sym.Symbol('q')
uu = sym.Symbol('uu')
p = [[beta], [lm], [a], [a], [b], [c], [d], [hh], [k], [q], [uu]]


# 2 outputs:
h = [[ww], [z]]

# 0 unknown input (time-varying parameter):
u = [];
w = [];

# dynamic equations:
f = [[lm - (d * xx) - (beta * xx * v)],[(beta * xx * v) - (a * y)],[(k * y) - (uu * v)],[(c * z * y * ww) - (c * q * y * ww) - (b * ww)],[(c * q * y * ww) - (hh * z)]]

variables_locales = locals().copy()