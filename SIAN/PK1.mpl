read "../IdentifiabilityODE.mpl";

sys := [
diff(x1(t), t) = u1(t)-(k1+k2)*x1(t),
diff(x2(t), t) = k1*x1(t)-(k3+k6+k7)*x2(t)+k5*x4(t),
diff(x3(t), t) = k2*x1(t)+k3*x2(t)-k4*x3(t),
diff(x4(t), t) = k6*x2(t)-k5*x4(t),
y1(t) = s2*x2(t),
y2(t) = s3*x3(t)
];

CodeTools[CPUTime](IdentifiabilityODE(sys, GetParameters(sys)));