

read "../IdentifiabilityODE.mpl";


sigma := [
  diff(x1(t), t) = x1*(a1-b11*log(x1(t))-b12*log(x2(t))),
  diff(x2(t), t) =  x2(t)*(a2-b21*log(x1(t))-b22*log(x2(t))),
  y1(t) = x1(t),
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
