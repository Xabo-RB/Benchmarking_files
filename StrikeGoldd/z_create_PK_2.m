
clear all;

% 3 states:
syms x3 x1 x2 x4
syms a2 ka n b2 kc b1 a1
x = [x1; x2; x3; x4].';

% 5 parameters:

p = [a2 ka n b2 kc b1 a1].';

% 2 outputs:
h = [x1].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [a1 * (x2 - x1) - (ka * n * x1) / (kc * ka + kc * x3 + ka * x1);
   a1 * (x1 - x2);
   b1 * (x4 - x3) - (kc * n * x3) / (kc * ka + kc * x3 + ka * x1);
   b2 * (x3 - x4)];

% initial conditions:
ics  =  [];   

% which initial conditions are known:
known_ics = [0,0,0,0]; 

save('PKSs','x','p','u','w','h','f','ics','known_ics');

