
read("../IdentifiabilityODE.mpl");

sigma := [
  diff(x1(t), t) = a1 * (x2(t) - x1(t)) - (ka * n * x1(t)) / (kc * ka + kc * x3(t) + ka * x1(t)),
  diff(x2(t), t) = a1 * (x1(t) - x2(t)),
  diff(x3(t), t) = b1 * (x4(t) - x3(t)) - (kc * n * x3(t)) / (kc * ka + kc * x3(t) + ka * x1(t)),
  diff(x4(t), t) = b2 * (x3(t) - x4(t)),
  y1(t) = x1(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma));
