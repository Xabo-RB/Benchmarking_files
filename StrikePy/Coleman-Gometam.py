#Alejandro F Villaverde, Neil D Evans, Michael J Chappell, and Julio R Banga. Input-dependent
#structural identifiability of nonlinear systems. IEEE Control Systems Letters, 3(2):272–277, 2018

import sympy as sym

# 2 states
x1 = sym.Symbol('x1')  # define the symbolic variable x1
x2 = sym.Symbol('x2')  # define the symbolic variable x2
x3 = sym.Symbol('a1')  # define the symbolic variable x3
x4 = sym.Symbol('a2')  # define the symbolic variable x4
x5 = sym.Symbol('b11')  # define the symbolic variable x5
x6 = sym.Symbol('b12')  # define the symbolic variable x6
x6 = sym.Symbol('b21')  # define the symbolic variable x7
x6 = sym.Symbol('b22')  # define the symbolic variable x8

x = [[x1], [x2]]

# 1 output
h = [x1]

# 1 known input
#u1 = sym.Symbol('u1')  # define the symbolic variable u1
u = []

# 0 unknown inputs
w = []

# 4 unknown parameters
p = [[a1], [b11], [b12], [b21], [a2], [b22]]

# dynamic equations
f = [[x1*(a1-b11*ln(x1)-b12*ln(x2))], [x2*(a2-b21*ln(x1)-b22*ln(x2))]]


variables_locales = locals().copy()
