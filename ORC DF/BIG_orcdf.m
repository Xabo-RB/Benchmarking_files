% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms p1 si gamma c alphaa...
    y1...
    G betaa I ...
    input 


% known constants
muplus  = 0.021/(24*60); % turnover of functional mass
muminus = 0.025/(24*60);
% auxiliary functions
syms rhoG  lambdaplus lambdaminus 
rhoG        = G^2/(alphaa^2+G^2); 
lambdaplus  = muplus/(1+(8.4/G)^1.7);   
lambdaminus = muminus/(1+(G/4.8)^8.5);

% Step 2: write the system functions 
F=[input-(c+si*I)*G;
     beta*(lambdaplus-lambdaminus);     
     p1*betaa*rhoG-gamma*I];


% Step 3: write the output functions
h=[G]; 

% Step 4: write the vector of dynamic states
X=[G betaa I];

% Step 5: write the vector of unknown parameters
Theta=[p1, si, gamma, c, alphaa];

% Step 6: write the vector of measured inputs U=[u1,...,ur]; U=[], if no
% measured inputs are applied
U=[input];

% Step 7: write the vector of unmeasured inputs W=[w1,...,wnw]; W=[], if no
% unmeasured inputs are applied
W=[];

% Step 8: choose the maximum order of the time derivative of unmeasured
% inputs considered; normally, it is recommended that kmax=2^i-1>n+l+nw 
% (i=1,2,3,..., n is the number of dynamic states, l is the number of
% parameters, nw is the number of unmeasured inputs); if no unmeasured
% inputs are applied, the default kmax is n+l-1.
kmax=8; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)


toc