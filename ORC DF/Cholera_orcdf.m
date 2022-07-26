% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms S I W R
syms bi gam mu bw k xi a
     

% Step 2: write the system functions 
F=[-bi*S*I - S*mu - S*bw*W + R*a + mu;
    bi*S*I - gam*I + S*bw*W - mu*I;
    xi*I - xi*W;
	gam*I - R*mu - R*a];


% Step 3: write the output functions
h=[k*I S+R+I]; 

% Step 4: write the vector of dynamic states
X=[S I W R];

% Step 5: write the vector of unknown parameters
Theta=[bi gam mu bw k xi a];

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