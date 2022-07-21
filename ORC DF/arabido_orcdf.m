% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms x1 x2 x3 x4 x5 x6 x7...
     a...
     g1 g2 k1 k2 k3 k4 k5 k6 k7 m1 m2 m3 m4 m5 m6 m7 n1 n2...
     p1 p2 p3 q1 q2 r1 r2 r3 r4...
     u1
 
     

% Step 2: write the system functions 
F=[	 n1*x6^a/(g1^a+x6^a)-m1*x1/(k1+x1)+q1*x7*u1;        
         p1*x1-r1*x2+r2*x3-m2*x2/(k2+x2);    
         r1*x2-r2*x3-m3*x3/(k3+x3);
         n2*g2^2/(g2^2+x3^2)-m4*x4/(k4+x4);
         p2*x4-r3*x5+r4*x6-m5*x5/(k5+x5);
         r3*x5-r4*x6-m6*x6/(k6+x6);
         p3-m7*x7/(k7+x7)-(p3+q2*x7)*u1];




% Step 3: write the output functions
h=[x1 x4]; 

% Step 4: write the vector of dynamic states
X=[x1 x2 x3 x4 x5 x6 x7];

% Step 5: write the vector of unknown parameters
Theta=[a n1 r3 g1 g2 k1 k2 k3 k4 k5 k6 k7 m1 m2 m3 m4 m5 m6 m7 n2...
     p1 p2 p3 q1 q2 r1 r2 r4];

% Step 6: write the vector of measured inputs U=[u1,...,ur]; U=[], if no
% measured inputs are applied
U=[u1];

% Step 7: write the vector of unmeasured inputs W=[w1,...,wnw]; W=[], if no
% unmeasured inputs are applied
W=[];

% Step 8: choose the maximum order of the time derivative of unmeasured
% inputs considered; normally, it is recommended that kmax=2^i-1>n+l+nw 
% (i=1,2,3,..., n is the number of dynamic states, l is the number of
% parameters, nw is the number of unmeasured inputs); if no unmeasured
% inputs are applied, the default kmax is n+l-1.
kmax=36; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)
º
% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc