# Example 6.3 from the paper "Global Identifiability of Differential Models", taken from
# Balsa-Canto, E., Alonso, A. A., Banga, J. R., 
# An iterative identification procedure for dynamic modeling of biochemical networks

read "../IdentifiabilityODE.mpl";


sigma := [
  diff(x1(t), t) = -t1*x1(t)*2.265*u(t) - t5*x1(t) + t6*x2(t),
  diff(x2(t), t) = t5*x1(t)-t6*x2(t),
  diff(x3(t), t) = t1*2.265*u(t)*x1(t)-t2*x3(t)*(-x6(t)+2.8),
  diff(x4(t), t) = t2*x3(t)*(-x6(t)+2.8) - t3*x4(t),
  diff(x5(t), t) = t3*x4(t)-t4*x5(t),
  diff(x6(t), t) = -t7*x3(t)*x6(t)/(1+t13*x1(t))-t7*x4(t)*x6(t)/(1+t13*x10(t))+t8*(-x6(t)+2.8)*92,
  diff(x7(t), t) = -t9*x7(t)*(-x6(t)+2.8)+t10*(-x7(t)+165)*92,
  diff(x8(t), t) = t11*(-x7(t)+165),
  diff(x9(t), t) = -t12*2.265*u(t)*x9(t),
  diff(x10(t), t) = x8(t)*t14/(t15+x8(t))-t16*x10(t),
  y1(t) = x1(t)+x3(t)+x4(t),
  y2(t) = t18*(x3(t) + x4(t) + x5(t) +(0.34-x9(t))),
  y3(t) = t19*(x4(t) + x5(t)),
  y4(t) = t20*(-x6(t)+2.8),
  y5(t) = t21*x8(t),
  y6(t) = t22*x8(t)*t17/t11,
  y7(t) = x10(t),
  y8(t) = -x7(t)+165
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
