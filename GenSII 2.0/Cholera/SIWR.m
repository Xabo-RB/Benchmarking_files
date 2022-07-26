function model = SIWR()


    % Symbolic variables
	syms S I W R 
    syms bi gam mu bw k xi a
	syms S0 I0 W0 R0
	
    % Parameters
	
	model.sym.p = [bi; gam; mu; bw; k; xi; a; S0; I0; W0; R0];
	model.sym.p = [bi; gam; mu; bw; k; xi; a]
    % State variables
	model.sym.x = [S I W R];

    % Control vectors (g)
	model.sym.g = [];

    % Autonomous dynamics (f)
	model.sym.xdot = [-bi*S*I - S*mu - S*bw*W + R*a + mu
                      bi*S*I - gam*I + S*bw*W - mu*I
                      xi*I - xi*W
					  gam*I - R*mu - R*a];

    % Initial conditions
	model.sym.x0 = [s0; x20; i0; r0; x10];

    % Observables    
	model.sym.y = [k*I; S + R + I];
end