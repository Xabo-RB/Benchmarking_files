% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms k1 k2 k3 k4 k5 k6 ps1 ps2 ps3 ...
    s1t s2t s3t ...
    KK1 KK2 n1 n2 alphaa 
     

% Step 2: write the system functions 
F=[	k1*(s1t-ps1)*(KK1^n1)/(KK1^n1+ps3^n1)-k2*ps1;
    k3*(s2t-ps2)*ps1*(1+(alphaa*ps3^n2)/(KK2^n2+ps3^n2))-k4*ps2 ;
    k5*(s3t-ps3)*ps2-k6*ps3];


% Step 3: write the output functions
h=[ps1 ps2 ps3]; 

% Step 4: write the vector of dynamic states
X=[ps1 ps2 ps3];

% Step 5: write the vector of unknown parameters
Theta=[k1 k2 k3 k4 k5 k6 s1t s2t s3t KK1 KK2 n1 n2 alphaa];

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
kmax=17; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc