% Step 1: create symbols for the dynamic states, unknown parameters,
% measured input(s) and unmeasured input(s) of the system
tic
syms x1 x2 
syms a1 b11 b12 a2 b21 b22

% Step 2: write the system functions 
F=[-t1*x1*2.265*u1-t5*x1+t6*x2;
	t5*x1-t6*x2;
	t1*2.265*u1*x1-t2*x3*(-x6+2.8);
	t2*x3*(-x6+2.8)-t3*x4;
	t3*x4-t4*x5;
	-t7*x3*x6/(1+t13*x1)-t7*x4*x6/(1+t13*x13)+t8*(-x6+2.8)*92;
	-t9*x8*(-x6+2.8)+t10*(-x8+165)*92;
	t11*(-x8+165);
	-t12*2.265*u1*x11;
	x10*t14/(t15+x10)-t16*x13];

% Step 3: write the output functions
h=[x1 + x3 + x4 t18*(x3 + x4 + x5 +(0.34-x11)) t19*(x4 + x5) t20*(-x6+2.8) t21*x10 t22*x10*t17/t11 x13 -x8+165]; 

% Step 4: write the vector of dynamic states
X=[x1 x2 x3 x4 x5 x6 x8 x10 x11 x13];

% Step 5: write the vector of unknown parameters
Theta=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12...
     t13 t14 t15 t16 t17 t18 t19 t20 t21 t22];

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
kmax=33; %i is chosen as 4

% Step 9: input to the function
NonlinearObservabilityTest(F,h,X,Theta,U,W,kmax)

% Results: v1 and v2 are observable; deltak1, k2 and m are identifiable; x1
% and x2 are unobservable; k1 is unidentifiable; w is unobservable.
toc