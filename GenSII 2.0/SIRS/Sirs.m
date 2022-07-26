function model = Sirs()


    % Symbolic variables
	syms s x2 ii r x1
    syms nu b1 b0 M muu g
	syms s0 x20 ii0 r0 x10
	
    % Parameters
	
	%model.sym.p = [nu; b1; b0; M; muu; g; s0; x20; ii0; r0; x10];
	model.sym.p = [nu; b1; b0; M; muu; g];
    % State variables
	model.sym.x = [s x2 ii r x1];

    % Control vectors (g)
	model.sym.g = [];

    % Autonomous dynamics (f)
	model.sym.xdot = [-b1*b0*s*x1*ii - b0*s*ii - s*muu + muu + g*r
                      M*x1
                      -nu*ii + b1*b0*s*x1*ii + b0*s*ii - muu*ii
					  nu*ii - muu*r - g*r
					  -M*x2];

    % Initial conditions
	model.sym.x0 = [s0; x20; ii0; r0; x10];

    % Observables    
	model.sym.y = [ii;r];
end