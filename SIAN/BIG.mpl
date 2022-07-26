read "../IdentifiabilityODE.mpl";


sys := [
  diff(G(t), t) = u1(t)-(c+si*II(t))*G(t),
  diff(beta(t), t) = beta(t)* ( ( (1/(48*24*60)) /(1+((8/G(t))^2)) ) - ( (1/(40*24*60))/(1+((G(t)/5)^8)))),
  diff(II(t), t) = p1*beta(t)*(G(t)^2/(alpha^2+G(t)^2)) - gm*II(t),
  y1(t) = G(t)
];

CodeTools[CPUTime](IdentifiabilityODE(sys, GetParameters(sys)));

