function model = ruminal()
    % HIV provides the GenSSI implementation of model for HIC dynamics
    % described by
    % 
    %    Meshkat et al. (2014). On finding and using identifiable parameter
    %    combinations in nonlinear dynamic Systems Biology models and
    %    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

    % Symbolic variables
	syms x4 x2 x1 x3 x5
	syms  k3 k4 k2 k1
	syms x40 x20 x10 x30 x50

    % Parameters
	%model.sym.p = [k2;k3;k4];
	model.sym.p = [k3; k4; k2;x10;x20;x30;x40;x50];

    % State variables
	model.sym.x = [x1 x2 x3 x4 x5];

    % Control vectors (g)
	model.sym.g = [];

    % Autonomous dynamics (f)
	model.sym.xdot = [-x1*x5 / (k2 + x1)
                      2 * x1 * x5 / ((k2 + x1) * 3) - k4 * x2
                      k4*x2*0.5 - k4*x3
                      x1*x5/ (3 * (k2 + x1)) + k4*x2*0.5 + k4 * x3
					  -k3 * x5];

    % Initial conditions
	model.sym.x0 = [x10;x20;x30;x40;x50];

    % Observables    
	model.sym.y = [x1 x3+x2 x4];
end