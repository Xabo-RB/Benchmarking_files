%--------------------------------------------------------------------------
% HIV Model with Constant and Time Varying Parameters
% Miao H, Xia X, Perelson AS, Wu H. 
% "On identifiability of nonlinear ODE models and applications in viral dynamics." 
% SIAM review 53.1 (2011): 3-39.
%--------------------------------------------------------------------------
clear all;

% 3 states:
syms xx y v ww z 
x = [xx y v ww z].';

% 5 parameters:
syms beta lm a b c d hh k q uu 
p = [beta lm a b c d hh k q uu ].';

% 2 outputs:
h = [ww,z].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [lm - (d * xx) - (beta * xx * v);
    (beta * xx * v) - (a * y);
    (k * y) - (uu * v);
	(c * z * y * ww) - (c * q * y * ww) - (b * ww);
    (c * q * y * ww) - (hh * z)];

% initial conditions:
ics  =  [0,0,0,0,0];   

% which initial conditions are known:
known_ics = [0,0,0,0,0]; 

save('HIV','x','p','u','w','h','f','ics','known_ics');

