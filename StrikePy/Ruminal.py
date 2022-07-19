import sympy as sym

k1 = sym.Symbol('k1')
k2 = sym.Symbol('k2')
k3 = sym.Symbol('k3')
k4 = sym.Symbol('k4')
x1 = sym.Symbol('x1')
x2 = sym.Symbol('x2')
x3 = sym.Symbol('x3')
x4 = sym.Symbol('x4')
x5 = sym.Symbol('x5')

# 5 states
x = [[x1], [x2], [x3], [x4], [x5]]

# 1 output
h = [x1, x2+x3, x4]

# 0 known inputs
u = []

# no unknown inputs
w = []

# 5 unknown parameters
p = [[k1], [k2], [k3], [k4]]

# dynamic equations
f = [[-x1*x5/(k2 + x1)], [2*x1*x5/((k2 + x1)*3)-k4*x2], [k4*x2*0.5-k4*x3], [x1*x5/(3*(k2+x1))+k4*x2*0.5+k4*x3], [-k3 * x5]]


variables_locales = locals().copy()