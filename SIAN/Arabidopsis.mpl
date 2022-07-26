read "../IdentifiabilityODE.mpl";

sys := [
diff(x1(t), t) = n1*x6(t)^a/(g1^a+x6(t)^a)-m1*x1(t)/(k1+x1(t))+q1*x7(t)*u1(t),
diff(x2(t), t) = p1*x1(t)-r1*x2(t)+r2*x3(t)-m2*x2(t)/(k2+x2(t)),
diff(x3(t), t) = r1*x2(t)-r2*x3(t)-m3*x3(t)/(k3+x3(t)),
diff(x4(t), t) = n2*g2^2/(g2^2+x3(t)^2)-m4*x4(t)/(k4+x4(t)),
diff(x5(t), t) = p2*x4(t)-r3*x5(t)+r4*x6(t)-m5*x5(t)/(k5+x5(t)),
diff(x6(t), t) = r3*x5(t)-r4*x6(t)-m6*x6(t)/(k6+x6(t)),
diff(x7(t), t) = p3-m7*x7(t)/(k7+x7(t))-(p3+q2*x7(t))*u1(t),
y1(t) = x1(t)
y2(t) = x4(t)
];
CodeTools[CPUTime](IdentifiabilityODE(sys, GetParameters(sys)));