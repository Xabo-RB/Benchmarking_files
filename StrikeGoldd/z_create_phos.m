
clear all;

% 3 states:
syms x5 x6 x4 x2 x1 x3
syms k5 k3 k4 k2 k6 k1
x = [x1 x2 x3 x4 x5 x6].';

% 5 parameters:

p = [k1 k2 k3 k4 k5 k6].';

% 2 outputs:
h = [x2,x3].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [k4*x6 + k2*x4 - k1*x1*x2;
    k3*x4 + k2*x4 + k1*x1*x2;
    k5*x6 + k3*x4 - k6*x5*x3;
	-k3*x4 - k2*x4 + k1*x1*x2;
	k5*x6 + k4*x6 - k6*x5*x3;
	-k5*x6 - k4*x6 + k6*x5*x3];

% initial conditions:
ics  =  [];   

% which initial conditions are known:
known_ics = [0,0,0,0,0,0]; 

save('phos','x','p','u','w','h','f','ics','known_ics');

