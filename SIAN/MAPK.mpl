# Example 6.3 from the paper "Global Identifiability of Differential Models", taken from
# Balsa-Canto, E., Alonso, A. A., Banga, J. R., 
# An iterative identification procedure for dynamic modeling of biochemical networks

read "C:/Users/Even/Desktop/SIAN-master/IdentifiabilityODE.mpl";

sys := [
diff(x1(t), t) = k1*(s1t-x1(t))*(KK1^n1)/(KK1^n1+x3(t)^n1)-k2*x1(t),
diff(x2(t), t) = k3*(s2t-x2(t))*x1(t)*(1+(alpha*x3(t)^n2)/(KK2^n2+x3(t)^n2))-k4*x2(t),
diff(x3(t), t) = k5*(s3t-x3(t))*x2(t)-k6*x3(t),
y1(t) = x1(t),
y2(t) = x2(t),
y3(t) = x3(t)
];
CodeTools[CPUTime](IdentifiabilityODE(sys, GetParameters(sys)));