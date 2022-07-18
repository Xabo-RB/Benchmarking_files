
import sympy as sym
from math import log

# 2 states
x1 = sym.Symbol('x1')  # define the symbolic variable x1
x2 = sym.Symbol('x2')  # define the symbolic variable x2
a1 = sym.Symbol('a1')  # define the symbolic variable x3
a2 = sym.Symbol('a2')  # define the symbolic variable x4
b11 = sym.Symbol('b11')  # define the symbolic variable x5
b12 = sym.Symbol('b12')  # define the symbolic variable x6
b21 = sym.Symbol('b21')  # define the symbolic variable x7
b22 = sym.Symbol('b22')  # define the symbolic variable x8

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
f = [[x1*(a1-b11*log(x1)-b12*log(x2))], [x2*(a2-b21*log(x1)-b22*log(x2))]]


variables_locales = locals().copy()
