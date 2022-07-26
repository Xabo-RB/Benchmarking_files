read "../IdentifiabilityODE.mpl";

st := time()
sigma := [
  diff(x1(t), t) = k01 + k1/(1+(x2(t)/(1+(u1(t)/tatc)^natc))^ntetr) - x1(t),
  diff(x2(t), t) = k02 + k2/(1+(x1(t)/(1+(u2(t)/tiptg)^niptg))^nlaci) - x2(t),
  y1(t) = x1(t),
  y2(t) = x2(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
time() - st;