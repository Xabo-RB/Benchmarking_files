st := time()
read "../IdentifiabilityODE.mpl";

sigma := [
  diff(x1(t), t) = -b*x1(t)*x4(t) - d*x1(t) + s,
  diff(x2(t), t) = b*q1*x1(t)*x4(t)-k1*x2(t)-w1*x2(t),
  diff(x3(t), t) = b*q2*x1(t)*x4(t)+k1*x2(t)-w2*x3(t),
  diff(x4(t), t) = -c*x4(t)+k2*x3(t),
  y1(t) = x1(t),
  y2(t) = x4(t),
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
time() - st;