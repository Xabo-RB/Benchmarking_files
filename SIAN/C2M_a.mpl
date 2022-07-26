# Example 6.3 from the paper "Global Identifiability of Differential Models", taken from
# Balsa-Canto, E., Alonso, A. A., Banga, J. R., 
# An iterative identification procedure for dynamic modeling of biochemical networks
st := time()
read "C:/Users/Even/Desktop/SIAN-master/IdentifiabilityODE.mpl";


sigma := [
  diff(x1(t), t) = -(k12 + k1e)*x1(t) + k21*x2(t) + b*ku,
  diff(x2(t), t) = k12 * x1(t) - k21 * x2(t),
  y1(t) = x1(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma));
time() - st;