function model = p53()
    % HIV provides the GenSSI implementation of model for HIC dynamics
    % described by
    % 
    %    Meshkat et al. (2014). On finding and using identifiable parameter
    %    combinations in nonlinear dynamic Systems Biology models and
    %    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

    % Symbolic variables
syms p1 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14...
	p15 p16 p17 p18 p20 p21 p22 p23 p24 p25
    syms x1 x2 x3 x4

    % Parameters
	model.sym.p = [p1;p3;p4;p5;p6;p7;p8;p9;p10;p11;p12;p13;p14;p15;p16...
	p17;p18;p20;p21;p22 ;p23;p24;p25];

    % State variables
	model.sym.x = [x1;x2;x3;x4];

    % Control vectors (g)
	model.sym.g = [- p4*( (x1^2/(p5+x1))* (1+ (p6*u1/(p7+u1)) ) )
                   - p10*( (x1*x2/(p11+x2)) * (1+(p12*u1/(p13+u1)) ) )
                   - p16*x1*x3*(1-p18*u1)/(p17+x3)
                   + (1+p23*u1)*(1-p24*x1)*(1-p25*x2)/(p22^4+x3^4)];

    % Autonomous dynamics (f)
	model.sym.xdot = [(p1*x4) - (p3*x1)
                       p8 - (p9*x2)
                       p14 - (p15*x3) 
                       (p20 - p21*(1-p24)*(1-p25)/((p22^4)+1) ) - (p20*x4) + (p21*(x3^4))];

    % Initial conditions
	model.sym.x0 = [x01;x02;x03;x04];

    % Observables    
	model.sym.y = [x1;x2;x3;x4];
end