read "../IdentifiabilityODE.mpl";

st := time()
sigma := [
  diff(x1(t), t) = -x1(t) * x5(t) / (k2 + x1(t)),
  diff(x2(t), t) = 2 * x1(t) * x5(t) / ((k2 + x1(t)) * 3) - k4 * x2(t),
  diff(x3(t), t) = k4*(x2(t))/2 - k4*x3(t),
  diff(x4(t), t) = x1(t) * x5(t) / (3 * (k2 + x1(t))) + k4 * (x2(t))/2 + k4 * x3(t),
  diff(x5(t), t) = -k3 * x5(t),
  y1(t) = x1(t),
  y2(t) = x2(t) + x3(t),
  y3(t) = x4(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
time() - st;