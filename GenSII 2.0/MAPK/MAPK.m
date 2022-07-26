function model = MAPK()
    % HIV provides the GenSSI implementation of model for HIC dynamics
    % described by
    % 
    %    Meshkat et al. (2014). On finding and using identifiable parameter
    %    combinations in nonlinear dynamic Systems Biology models and
    %    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

    % Symbolic variables
syms k1 k2 k3 k4 k5 k6 ...
    ps1 ps2 ps3 ...
    s1t s22t s3t ...
    KK1 KK2 n1 n2 alphaa  ...
	ps10 ps20 ps30

    % Parameters
	model.sym.p = [k1; k2; k3; k4; k5; k6;...
					s1t; s22t; s3t; KK1; KK2; n1; n2; alphaa];  
	%model.sym.p = [k1; k2; k3; k4; k5; k6;...
	%				s1t; s22t; s3t; KK1; KK2; n1; n2; alphaa;ps10;ps20;ps30];  

    % State variables
	model.sym.x = [ps1;ps2;ps3];

    % Control vectors (g)
	model.sym.g = [0
                   0
                   0];

    % Autonomous dynamics (f)
	model.sym.xdot = [k1*(s1t-ps1)*(KK1^n1)/(KK1^n1+ps3^n1)-k2*ps1
                       k3*(s22t-ps2)*ps1*(1+(alphaa*ps3^n2)/(KK2^n2+ps3^n2))-k4*ps2 
                       k5*(s3t-ps3)*ps2-k6*ps3 ];

    % Initial conditions
	model.sym.x0 = [ps10;ps20;ps30];

    % Observables    
	model.sym.y = [ps1;ps2;ps3];
end