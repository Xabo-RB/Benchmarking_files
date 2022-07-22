
clear all;

% 3 states:
syms x1 x2 
syms a1 b11 b12 a2 b21 b22
x = [x1 x2].';

% 5 parameters:

p = [a1,b11,b12,a2,b21,b22].';

% 2 outputs:
h = [x1].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [x1*(a1-b11*log(x1)-b12*log(x2));
     x2*(a2-b21*log(x1)-b22*log(x2))];

% initial conditions:
ics  =  [];   

% which initial conditions are known:
known_ics = [0,0]; 

save('coleman','x','p','u','w','h','f','ics','known_ics');

