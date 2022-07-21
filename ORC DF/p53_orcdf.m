% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14...
	p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25...
    x1 x2 x3 x4 u1
     

% Step 2: write the system functions 
F=[(p1*x4) - (p3*x1) - p4*( (x1^2/(p5+x1))* (1+ (p6*u1/(p7+u1)) ) );
    p8 - (p9*x2)- p10*( (x1*x2/(p11+x2)) * (1+(p12*u1/(p13+u1)) ) );
    p14 - (p15*x3) - p16*x1*x3*(1-p18*u1)/(p17+x3);
	p20 - p21*(1-p24)*(1-p25)/((p22^4)+1) - (p20*x4) + (p21*(x3^4)) + (1+p23*u1)*(1-p24*x1)*(1-p25*x2)/(p22^4+x3^4)];


% Step 3: write the output functions
h=[x1 x2 x3 x4]; 

% Step 4: write the vector of dynamic states
X=[x1 x2 x3 x4];

% Step 5: write the vector of unknown parameters
Theta=[p1 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14...
	p15 p16 p17 p18 p20 p21 p22 p23 p24 p25];

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
kmax=27; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc