
clear all;

% 3 states:
syms x4 x2 x1 x3 x5
syms  k3 k4 k2 k1
x = [x1 x2 x3 x4 x5].';

% 5 parameters:

p = [k2 k3 k4].';

% 2 outputs:
h = [x1,x2+x3,x4].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [-x1*x5 / (k2 + x1);
    2 * x1 * x5 / ((k2 + x1) * 3) - k4 * x2;
    k4*x2*0.5 - k4*x3;
	x1*x5/ (3 * (k2 + x1)) + k4*x2*0.5 + k4 * x3;
	-k3 * x5];

% initial conditions:
ics  =  [];   

% which initial conditions are known:
known_ics = [0,0,0,0,0]; 

save('ruminal','x','p','u','w','h','f','ics','known_ics');

