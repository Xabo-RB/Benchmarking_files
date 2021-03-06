%--------------------------------------------------------------------------
% HIV Model with Constant and Time Varying Parameters
% Miao H, Xia X, Perelson AS, Wu H. 
% "On identifiability of nonlinear ODE models and applications in viral dynamics." 
% SIAM review 53.1 (2011): 3-39.
%--------------------------------------------------------------------------
clear all;

% 3 states:
syms Tu Ti V
x = [Tu Ti V].';

% 5 parameters:
syms lambda rho N delta c 
p = [lambda rho N delta c].';

% 2 outputs:
h = [V, Tu+Ti].';

% 1 unknown input (time-varying parameter):
syms eta;
u = [eta];
w = [];

% dynamic equations:
f = [lambda-rho*Tu-eta*Tu*V;
    eta*Tu*V-delta*Ti;
    N*delta*Ti-c*V];

% initial conditions:
ics  = [600,33,1e5];   

% which initial conditions are known:
known_ics = [0,0,0]; 

save('HIV','x','p','u','w','h','f','ics','known_ics');
