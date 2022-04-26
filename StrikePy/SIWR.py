# Lee, E. C., Kelly, M. R., Ochocki, B. M., Akinwumi, S. M., Hamre, K. E., Tien, J. H., Eisenberg, M. C.,
# Model distinguishability and inference robustness in mechanisms of cholera transmission and loss of immunity
# https://doi.org/10.1016/j.jtbi.2017.01.032
# Eq. (3)

import sympy as sym

S, I, W, R, bi, gam, mu, bw, k, xi, a = sym.symbols('S I W R bi gam mu bw k xi a')

#3 states:
x = [[S], [I], [W], [R]]

# 5 parameters:
p = [[bi], [gam], [mu], [bw], [k], [xi], [a]]

# 2 outputs:
h = [[k*I], [S+R+I]]

# 1 unknown input (time-varying parameter):
u = []
w = []

# dynamic equations:
f = [[-bi*S*I - S*mu - S*bw*W + R*a + mu],
    [bi*S*I - gam*I + S*bw*W - mu*I],
    [xi*I - xi*W],
	[gam*I - R*mu - R*a]]

variables_locales = locals().copy()
