%--------------------------------------------------------------------------
% Pharmacokinetic (PK) model.
% The model is taken from:
%--------------------------------------------------------------------------
% Merkt et al (2015) "Higher-order Lie symmetries in identifiability and
% predictability analysis of dynamic models" Phys Rev E 92(1-1):012920.
%--------------------------------------------------------------------------
clear all;

% 4 states:
syms x1 x2 x3 x4 x5
x = [x1 x2 x3 x4 x5].';

% 10 parameters:
syms k3 k4 k5 k6 k7 a b d
p = [k3 k4 k5 k6 k7].';

% 2 outputs:
h = [x5];

% 1 input:


% dynamic equations:
f = [ 
	-(k3+k7)*x1+k4*x2;
    k3*x1-(k4+a*k5+b*d*k5)*x2+k6*x3+k6*x4+k5*x2*x3+k5*x2*x4;
    a*k5*x2-k6*x3-k5*x2*x4;
    b*d*k5*x2-k6*x4-k5*x2*x4;
	k7*x1
];

% initial conditions:
ics  = [];   

% which initial conditions are known:
known_ics = [0,0,0,0,0]; 

u = [];
w = [];
save('tumor','x','p','u','w','h','f','ics','known_ics');
% u = [];
% w = u1;
% save('PK_unknown_input','x','p','u','w','h','f','ics','known_ics');