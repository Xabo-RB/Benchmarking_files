% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms x1 x2 x3 x4 x5
syms k3 k4 k5 k6 k7 a b d
     

% Step 2: write the system functions 
F=[	-(k3+k7)*x1+k4*x2;
    k3*x1-(k4+a*k5+b*d*k5)*x2+k6*x3+k6*x4+k5*x2*x3+k5*x2*x4;
    a*k5*x2-k6*x3-k5*x2*x4;
    b*d*k5*x2-k6*x4-k5*x2*x4
	k7*x1];


% Step 3: write the output functions
h=[x5]; 

% Step 4: write the vector of dynamic states
X=[x1 x2 x3 x4 x5];

% Step 5: write the vector of unknown parameters
Theta=[k3 k4 k5 k6 k7 a b d];

% Step 6: write the vector of measured inputs U=[u1,...,ur]; U=[], if no
% measured inputs are applied
U=[];

% Step 7: write the vector of unmeasured inputs W=[w1,...,wnw]; W=[], if no
% unmeasured inputs are applied
W=[];

% Step 8: choose the maximum order of the time derivative of unmeasured
% inputs considered; normally, it is recommended that kmax=2^i-1>n+l+nw 
% (i=1,2,3,..., n is the number of dynamic states, l is the number of
% parameters, nw is the number of unmeasured inputs); if no unmeasured
% inputs are applied, the default kmax is n+l-1.
kmax=13; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc