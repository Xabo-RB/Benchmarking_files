function model = SIWR()


    % Symbolic variables
	syms S I W R 
    syms bi gam muu bw k xi a
	syms S0 I0 W0 R0
	
    % Parameters
	
	%model.sym.p = [bi; gam; muu; bw; k; xi; a; S0; I0; W0; R0];
	model.sym.p = [bi; gam; muu; bw; k; xi; a];
    % State variables
	model.sym.x = [S I W R];

    % Control vectors (g)
	model.sym.g = [];

    % Autonomous dynamics (f)
	model.sym.xdot = [-bi*S*I - S*muu - S*bw*W + R*a + muu
                      bi*S*I - gam*I + S*bw*W - muu*I
                      xi*I - xi*W
					  gam*I - R*muu - R*a];

    % Initial conditions
	model.sym.x0 = [S0;I0;W0;R0];

    % Observables    
	model.sym.y = [k*I; S + R + I];
end