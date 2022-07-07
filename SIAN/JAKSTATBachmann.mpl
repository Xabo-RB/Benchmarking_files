# Example 6.3 from the paper "Global Identifiability of Differential Models", taken from
# Balsa-Canto, E., Alonso, A. A., Banga, J. R., 
# An iterative identification procedure for dynamic modeling of biochemical networks

read "../IdentifiabilityODE.mpl";


sys := [
  diff(x1(t), t) = (x2(t)+x3(t)+x4(t)+x5(t))*x8(t)*t11/t26 - u5(t)*x1(t)*t10/((x25(t)*t17/t15)+1),
  diff(x2(t), t) = u5(t)*x1(t)*t10/((x25(t)*t17/t15)+1) - x2(t)*t7/((x25(t)*t17/t15)+1) - x2(t)*x8(t)*t11/t26 - 3*x2(t)*t7/((t8*x6(t)+1)*((x25(t)*t17/t15)+1)),
  diff(x3(t), t) = t7*x2(t)/((x25(t)*t17/t15)+1) - t11*x8(t)*x3(t)/t26 - 3*t7*x3(t)/((t8*x6(t)+1)*((x25(t)*t17/t15)+1)),
  diff(x4(t), t) = 3*x2(t)*t7/((t8*x6(t)+1)*((x25(t)*t17/t15)+1)) - t7*x4(t)/((x25(t)*t17/t15)+1) - t11*x8(t)*x4(t)/t26,
  diff(x5(t), t) = t7*x4(t)/((x25(t)*t17/t15)+1) - t11*x8(t)*x5(t)/t26,
  diff(x6(t), t) = -x6(t)*(t9/t25)*(x5(t)+x3(t)),
  diff(x7(t), t) = t13*x8(t) - x7(t)*(t12/t25)*(x2(t)+x3(t)+x4(t)+x5(t)),
  diff(x8(t), t) =  x7(t) *(t12/t25)*(x2(t)+x3(t)+x4(t)+x5(t)) - t13*x8(t),
  diff(x9(t), t) = k6*t23*x11(t)/k7 - x9(t)*(t22/t25)*(x2(t)+x3(t)+x4(t)+x5(t))/((x25(t)*t17/t15)+1) - x9(t)*t21*((x5(t)+x3(t))^2)/((x18(t)*t3/(t1 +1))*((x25(t)*t17/t15)+1)*(t25^2)),
  diff(x10(t), t) = x9(t)*t22*(x2(t)+x3(t)+x4(t)+x5(t))*((x25(t)*t17/t15)+1)/t25 - t24*x10(t) + x9(t)*t21*((x5(t)+x3(t))^2)/((t25^2)*(x18(t)*t3/t1 + 1)*((x25(t)*t17/t15)+1)),
  diff(x11(t), t) = k7*t24*x10(t)/k6 - t23*x11(t),
  diff(x12(t), t) = -x12(t)*t4 - t5*x11(t)*(u1(t)-1)/t27,
  diff(x13(t), t) = x12(t)*t4 - x13(t)*t4,
  diff(x14(t), t) = x13(t)*t4 - x14(t)*t4,
  diff(x15(t), t) = x14(t)*t4 -x15(t)*t4,
  diff(x16(t), t) = x15(t)*t4 - x16(t)*t4,
  diff(x17(t), t) = x16(t)*t4*k6/k7 - x17(t)*t5,
  diff(x18(t), t) = x17(t)*t1*t6 - x18(t)*t6 +u2(t)*t6*t2*t1,
  diff(x19(t), t) = -x19(t)*t18 - t19*x11(t)*(u1(t)-1)/t27,
  diff(x20(t), t) = x19(t)*t18 - x20(t)*t18,
  diff(x21(t), t) = x20(t)*t18 - x21(t)*t18,
  diff(x22(t), t) = x21(t)*t18 - x22(t)*t18,
  diff(x23(t), t) = x22(t)*t18 - x23(t)*t18,
  diff(x24(t), t) = k6*x23(t)*t18/k7 - x24(t)*t19,
  diff(x25(t), t) = x24(t)*t15*t20 - x25(t)*t20 + u3(t)*t20*t16*t15, 
  y1(t) = 2*(x2(t)+x3(t)+x4(t)+x5(t))*t25,
  y2(t) = 16*(x3(t)+x4(t)+x5(t))*t25,
  y3(t) = x18(t)*t1,
  y4(t) = x25(t)/t14,
  y5(t) = (x9(t)+x10(t))/t27,
  y6(t) = x10(t)*t27,
  y7(t) = x9(t),
  y8(t) = x7(t)+x8(t),
  y9(t) = x18(t),
  y10(t) = x25(t),
  y11(t) = 100*x10(t)/(x10(t)+x9(t)),
  y12(t) = x24(t),
  y13(t) = x17(t),
  y14(t) = (x7(t)+x8(t))*((1+(u4(t)*t27))/t26)
];

CodeTools[CPUTime](IdentifiabilityODE(sys, GetParameters(sys)));
