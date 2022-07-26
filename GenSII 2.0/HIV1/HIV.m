function model = HIV()
% HIV Model with Constant and Time Varying Parameters
% Miao H, Xia X, Perelson AS, Wu H. 
% "On identifiability of nonlinear ODE models and applications in viral dynamics." 
% SIAM review 53.1 (2011): 3-39.

%COMO SI EL PARÁMETRO DESCONOCIDO FUESE UNA ENTRADA CONOCIDA U

    % Symbolic variables
	syms lambda rho N d c x01 x02 x03
    syms Tu Ti V

    % Parameters
	model.sym.p = [lambda;rho;N;d;c];

    % State variables
	model.sym.x = [Tu Ti V];

    % Control vectors (g)
	model.sym.g = [-Tu*Ti
                   Tu*V
                   0];

    % Autonomous dynamics (f)
	model.sym.xdot = [lambda - (rho*Tu)
                       -d*Ti
                       N*d*Ti - c*V];

    % Initial conditions
	model.sym.x0 = [x01;x02;x03];

    % Observables    
	model.sym.y = [V;Ti+Tu];
end