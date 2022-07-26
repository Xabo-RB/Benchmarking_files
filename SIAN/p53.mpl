# Example 6.3 from the paper "Global Identifiability of Differential Models", taken from
# Balsa-Canto, E., Alonso, A. A., Banga, J. R., 
# An iterative identification procedure for dynamic modeling of biochemical networks
st := time()
read "C:/Users/Even/Desktop/SIAN-master/IdentifiabilityODE.mpl";


sigma := [
  diff(x1(t), t) = (p1*x4(t)) - (p3*x1(t)) - p4*( (x1(t)^2/(p5+x1(t)))* (1+ (p6*u1(t)/(p7+u1(t))) ) ),
  diff(x2(t), t) = p8 - (p9*x2(t))- p10*( (x1(t)*x2(t)/(p11+x2(t))) * (1+(p12*u1(t)/(p13+u1(t))) ) ),
  diff(x3(t), t) = p14 - (p15*x3(t)) - p16*x1(t)*x3(t)*(1-p18*u1(t))/(p17+x3(t)),
  diff(x4(t), t) = p20 - p21*(1-p24)*(1-p25)/((p22^4)+1) - (p20*x4(t)) + (p21*(x3(t)^4)) + (1+p23*u1(t))*(1-p24*x1(t))*(1-p25*x2(t))/(p22^4+x3(t)^4),
  y1(t) = x1(t),
  y2(t) = x2(t),
  y3(t) = x3(t),
  y4(t) = x4(t)
];

IdentifiabilityODE(sigma, GetParameters(sigma)):
time() - st;