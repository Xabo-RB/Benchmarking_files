% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms s x2 ii r x1
syms nu b1 b0 M mu g
     

% Step 2: write the system functiions 
F=[-b1*b0*s*x1*ii - b0*s*ii - s*mu + mu + g*r;
    M*x1;
    -nu*ii + b1*b0*s*x1*ii + b0*s*ii - mu*ii;
	nu*ii - mu*r - g*r;
	-M*x2];


% Step 3: wriite the output functiions
h=[ii;r]; 

% Step 4: write the vector of dynamic states
X=[s x2 ii r x1];

% Step 5: write the vector of unknown parameters
Theta=[nu b1 b0 M mu g];

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
kmax=12; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc