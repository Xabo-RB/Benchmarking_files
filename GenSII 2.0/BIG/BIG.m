function model = BIG()
% HIV Model with Constant and Time Varying Parameters
% Miao H, Xia X, Perelson AS, Wu H. 
% "On identifiability of nonlinear ODE models and applications in viral dynamics." 
% SIAM review 53.1 (2011): 3-39.

%COMO SI EL PARÁMETRO DESCONOCIDO FUESE UNA ENTRADA CONOCIDA U

    % Symbolic variables
	syms p1 si gamma c alphaa
    syms G beta I 
	muplus  = 0.021/(24*60); % turnover of functional mass
	muminus = 0.025/(24*60);
	% auxiliary functions
	syms rhoG  lambdaplus lambdaminus 
	rhoG        = G^2/(alpha^2+G^2); 
	lambdaplus  = muplus/(1+(8.4/G)^1.7);   
	lambdaminus = muminus/(1+(G/4.8)^8.5);


    % Parameters
	model.sym.p = [p1; si; gamma; c; alphaa];

    % State variables
	model.sym.x = [G beta I];

    % Control vectors (g)
	model.sym.g = [1
                   0
                   0];

    % Autonomous dynamics (f)
	model.sym.xdot = [-(c+si*I)*G
                       beta*(lambdaplus-lambdaminus)
                       p1*beta*rhoG-gamma*I];

    % Initial conditions
	model.sym.x0 = [x01;x02;x03];

    % Observables    
	model.sym.y = [G];
end