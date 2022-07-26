st := time()
read "../IdentifiabilityODE.mpl";


sigma := [
  diff(x1(t), t) = -(k12 + k1e)*x1(t) + k21*x2(t) + b*ku,
  diff(x2(t), t) = k12 * x1(t) - k21 * x2(t),
  y1(t) = x1(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma));
time() - st;