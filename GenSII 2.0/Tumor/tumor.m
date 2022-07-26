function model = tumor()
    % HIV provides the GenSSI implementation of model for HIC dynamics
    % described by
    % 
    %    Meshkat et al. (2014). On finding and using identifiable parameter
    %    combinations in nonlinear dynamic Systems Biology models and
    %    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

    % Symbolic variables
	syms k3 k4 k5 k6 k7 a b d
    syms x1 x2 x3 x4 x5 x01 x02 x03 x04 x05

    % Parameters
	model.sym.p = [k3; k4; k5; k6; k7];
	model.sym.p = [k3; k4; k5; k6; k7;x01;x02;x03;x04;x05];

    % State variables
	model.sym.x = [x1 x2 x3 x4 x5];

    % Control vectors (g)
	model.sym.g = [0
                   0
				   0
                   0
                   0];

    % Autonomous dynamics (f)
	model.sym.xdot = [-(k3+k7)*x1+k4*x2
                       k3*x1-(k4+a*k5+b*d*k5)*x2+k6*x3+k6*x4+k5*x2*x3+k5*x2*x4
                       a*k5*x2-k6*x3-k5*x2*x4
                       b*d*k5*x2-k6*x4-k5*x2*x4
					   k7*x1];

    % Initial conditions
	model.sym.x0 = [x01;x02;x03;x04;x05];

    % Observables    
	model.sym.y = [x5];
end