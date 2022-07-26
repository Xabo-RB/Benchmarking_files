% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms x1 x2 w1 w2 mnj
syms k01 k1 tatc natc ntetr ...
     k02 k2 tiptg niptg nlaci
     

% Step 2: write the system functions 
F=[k01 + k1/(1+(x2/(1+(w1/tatc)^natc))^ntetr) - x1;
   k02 + k2/(1+(x1/(1+(w2/tiptg)^niptg))^nlaci) - x2;];


% Step 3: write the output functions
h=[x1 x2]; 

% Step 4: write the vector of dynamic states
X=[x1 x2];

% Step 5: write the vector of unknown parameters
Theta=[k01 k1 tatc natc ntetr ...
      k02 k2 tiptg niptg nlaci];

% Step 6: write the vector of measured inputs U=[u1,...,ur]; U=[], if no
% measured inputs are applied
U=[];

% Step 7: write the vector of unmeasured inputs W=[w1,...,wnw]; W=[], if no
% unmeasured inputs are applied
W=[w1,w2];

% Step 8: choose the maximum order of the time derivative of unmeasured
% inputs considered; normally, it is recommended that kmax=2^i-1>n+l+nw 
% (i=1,2,3,..., n is the number of dynamic states, l is the number of
% parameters, nw is the number of unmeasured inputs); if no unmeasured
% inputs are applied, the default kmax is n+l-1.
kmax=14; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc