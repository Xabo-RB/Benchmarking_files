# Example 6.3 from the paper "Global Identifiability of Differential Models", taken from
# Balsa-Canto, E., Alonso, A. A., Banga, J. R., 
# An iterative identification procedure for dynamic modeling of biochemical networks

read "../IdentifiabilityODE.mpl";


sigma := [
  diff(x1(t), t) = (x2+x3+x4+x5)*x8*t11/t26 - k5*x1*t10/((x25*t17/t15)+1),
  diff(x2(t), t) = k5*x1*t10/((x25*t17/t15)+1) - x2*t7/((x25*t17/t15)+1) - x2*x8*t11/t26 - 3*x2*t7/((t8*x6+1)*((x25*t17/t15)+1)),
  diff(x3(t), t) = t7*x2/((x25*t17/t15)+1) - t11*x8*x3/t26 - 3*t7*x3/((t8*x6+1)*((x25*t17/t15)+1)),
  diff(x4(t), t) = 3*x2*t7/((t8*x6+1)*((x25*t17/t15)+1)) - t7*x4/((x25*t17/t15)+1) - t11*x8*x4/t26,
  diff(x5(t), t) = t7*x4/((x25*t17/t15)+1) - t11*x8*x5/t26,
  diff(x6(t), t) = -x6*(t9/t25)*(x5+x3),
  diff(x7(t), t) = t13*x8 - x7*(t12/t25)*(x2+x3+x4+x5),
  diff(x8(t), t) =  x7 *(t12/t25)*(x2+x3+x4+x5) - t13*x8,
  diff(x9(t), t) = k6*t23*x11/k7 - x9*(t22/t25)*(x2+x3+x4+x5)/((x25*t17/t15)+1) - x9*t21*((x5+x3)^2)/((x18*t3/(t1 +1))*((x25*t17/t15)+1)*(t25^2)),
  diff(x10(t), t) = x9*t22*(x2+x3+x4+x5)*((x25*t17/t15)+1)/t25 - t24*x10 + x9*t21*((x5+x3)^2)/((t25^2)*(x18*t3/t1 + 1)*((x25*t17/t15)+1)),
  diff(x11(t), t) = k7*t24*x10/k6 - t23*x11,
  diff(x12(t), t) = -x12*t4 - t5*x11*(k1-1)/t27,
  diff(x13(t), t) = x12*t4 - x13*t4,
  diff(x14(t), t) = x13*t4 - x14*t4,
  diff(x15(t), t) = x14*t4 -x15*t4,
  diff(x16(t), t) = x15*t4 - x16*t4,
  diff(x17(t), t) = x16*t4*k6/k7 - x17*t5,
  diff(x18(t), t) = x17*t1*t6 - x18*t6 +k2*t6*t2*t1,
  diff(x19(t), t) = -x19*t18 - t19*x11*(k1-1)/t27,
  diff(x20(t), t) = x19*t18 - x20*t18,
  diff(x21(t), t) = x20*t18 - x21*t18,
  diff(x22(t), t) = x21*t18 - x22*t18,
  diff(x23(t), t) = x22*t18 - x23*t18,
  diff(x24(t), t) = k6*x23*t18/k7 - x24*t19,
  diff(x25(t), t) = x24*t15*t20 - x25*t20 + k3*t20*t16*t15, 
  y1(t) = 2*(x2+x3+x4+x5)*t25,
  y2(t) = 16*(x3+x4+x5)*t25,
  y3(t) = x18*t1,
  y4(t) = x25/t14,
  y5(t) = (x9+x10)/t27,
  y6(t) = x10*t27,
  y7(t) = x9,
  y8(t) = x7+x8,
  y9(t) = x18,
  y10(t) = x25,
  y11(t) = 100*x10/(x10+x9),
  y12(t) = x24,
  y13(t) = x17,
  y14(t) = (x7+x8)*((1+(k4*t27))/t26)
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
