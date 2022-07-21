%--------------------------------------------------------------------------
% HIV Model with Constant and Time Varying Parameters
% Miao H, Xia X, Perelson AS, Wu H. 
% "On identifiability of nonlinear ODE models and applications in viral dynamics." 
% SIAM review 53.1 (2011): 3-39.
%--------------------------------------------------------------------------
clear all;

% 3 states:
syms x1 x2 x3 x4
x = [x1 x2 x3 x4].';

% 5 parameters:
syms b c d q1 q2 k1 k2 w1 w2 s 
p = [b c d q1 q2 k1 k2 w1 w2 s].';

% 2 outputs:
h = [x1,x4].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [-b*x1*x4-d*x1 + s;
    b*q1*x1*x4-k1*x2-w1*x2;
    b*q2*x1*x4+k1*x2-w2*x3;
	-c*x4+k2*x3];

% initial conditions:
ics  = [];   

% which initial conditions are known:
known_ics = [0,0,0,0]; 

save('HIV','x','p','u','w','h','f','ics','known_ics');

