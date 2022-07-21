
.
% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms t1 t2 c3a c4a c5 k1 k2 k3 kprod kdeg i1 e2a i1a...
    a1 a2 a3 c1a c2a c5a c6a c1 c2 c3 c4 kv e1a c1c c2c c3c...
    y1 y2 y3 y4 y5 y6...
    x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15...
    u1 

% Step 2: write the system functions 
F=[kprod-kdeg*x1-k1*x1*u1; 
    -k3*x2-kdeg*x2-a2*x2*x10+t1*x4-a3*x2*x13+t2*x5+(k1*x1-k2*x2*x8)*u1;
    k3*x2-kdeg*x3+k2*x2*x8*u1;
    a2*x2*x10-t1*x4;
    a3*x2*x13-t2*x5;
    c6a*x13-a1*x6*x10+t2*x5-i1*x6;
    i1*kv*x6-a1*x11*x7;
    c4*x9-c5*x8;
    c2+c1*x7-c3*x9;
    -a2*x2*x10-a1*x10*x6+c4a*x12-c5a*x10-i1a*x10+e1a*x11;
    -a1*x11*x7+i1a*kv*x10-e1a*kv*x11;
    c2a+c1a*x7-c3a*x12;
    a1*x10*x6-c6a*x13-a3*x2*x13+e2a*x14;
    a1*x11*x7-e2a*kv*x14;
    c2c+c1c*x7-c3c*x15];

% Step 3: write the output functions
h=[x7 x10+x13 x9 x1+x2+x3 x2 x12]; 

% Step 4: write the vector of dynamic states
X=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15];

% Step 5: write the vector of unknown parameters
Theta=[t1,t2,c3a,c4a,c5,k1,k2,k3,kprod,kdeg,i1,e2a,i1a,...
    a1,a2,a3,c1a,c2a,c5a,c6a,c1,c2,c3,c4,kv,e1a,c1c,c2c,c3c];

% Step 6: write the vector of measured inputs U=[u1,...,ur]; U=[], if no
% measured inputs are applied
U=u1;

% Step 7: write the vector of unmeasured inputs W=[w1,...,wnw]; W=[], if no
% unmeasured inputs are applied
W=[];

% Step 8: choose the maximum order of the time derivative of unmeasured
% inputs considered; normally, it is recommended that kmax=2^i-1>n+l+nw 
% (i=1,2,3,..., n is the number of dynamic states, l is the number of
% parameters, nw is the number of unmeasured inputs); if no unmeasured
% inputs are applied, the default kmax is n+l-1.
kmax=43; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc