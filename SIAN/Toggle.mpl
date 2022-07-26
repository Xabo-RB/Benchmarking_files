

# Taken from
# R. Munoz-Tamayo, L. Puillet, J.B. Daniel, D. Sauvant, O. Martin, M. Taghipoor, P. Blavy
# Review: To be or not to be an identifiable model. Is this a relevant question in animal science modelling?
# doi.org/10.1017/S1751731117002774
# System (1) in Supplementary Material 2, initial conditions are assumed to be unknown
# brought to the rational function form by introducing new state variable x5(t) = k1 e^(-k3 t)
read "C:/Users/Even/Desktop/SIAN-master/IdentifiabilityODE.mpl";
st := time()
sigma := [
  diff(x1(t), t) = k01 + k1/(1+(x2(t)/(1+(u1(t)/tatc)^natc))^ntetr) - x1(t),
  diff(x2(t), t) = k02 + k2/(1+(x1(t)/(1+(u2(t)/tiptg)^niptg))^nlaci) - x2(t),
  y1(t) = x1(t),
  y2(t) = x2(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
time() - st;