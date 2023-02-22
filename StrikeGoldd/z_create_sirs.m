%Capistrán, M. A., Moreles, M. A., & Lara, B. (2009). Parameter estimation of some epidemic models. The case of recurrent epidemics caused by respiratory syncytial virus. 
%Bulletin of mathematical biology, 71, 1890-1901.

clear all;

% 3 states:
syms s x2 ii r x1
syms nu b1 b0 M mu g
x = [s x2 ii r x1].';

% 5 parameters:

p = [nu b1 b0 M mu g].';

% 2 outputs:
h = [ii,r].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [-b1*b0*s*x1*ii - b0*s*ii - s*mu + mu + g*r;
    M*x1;
    -nu*ii + b1*b0*s*x1*ii + b0*s*ii - mu*ii;
	nu*ii - mu*r - g*r;
	-M*x2];

% initial conditions:
ics  =  [];   

% which initial conditions are known:
known_ics = [0,0,0,0,0,0]; 

save('sirs','x','p','u','w','h','f','ics','known_ics');

