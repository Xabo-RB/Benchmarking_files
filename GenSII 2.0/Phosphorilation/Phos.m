function model = Phos()
    % HIV provides the GenSSI implementation of model for HIC dynamics
    % described by
    % 
    %    Meshkat et al. (2014). On finding and using identifiable parameter
    %    combinations in nonlinear dynamic Systems Biology models and
    %    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

    % Symbolic variables
	syms x5 x6 x4 x2 x1 x3
	syms k5 k3 k4 k2 k6 k1
	syms x01 x02 x03 x04 x05 x06

    % Parameters
	%model.sym.p = [k1;k2;k3;k4;k5;k6];
	model.sym.p = [k5; k3; k4; k2; k6; k1;x01;x02;x03;x04;x05;x06];

    % State variables
	model.sym.x = [x1 x2 x3 x4 x5 x6];

    % Control vectors (g)
	model.sym.g = [];

    % Autonomous dynamics (f)
	model.sym.xdot = [k4*x6 + k2*x4 - k1*x1*x2
                      k3*x4 + k2*x4 + k1*x1*x2
                      k5*x6 + k3*x4 - k6*x5*x3
                      -k3*x4 - k2*x4 + k1*x1*x2
					  k5*x6 + k4*x6 - k6*x5*x3
					  -k5*x6 - k4*x6 + k6*x5*x3];

    % Initial conditions
	model.sym.x0 = [x01;x02;x03;x04;x05;x06];

    % Observables    
	model.sym.y = [x2 x3];
end