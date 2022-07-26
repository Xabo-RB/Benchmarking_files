function model = JAKSTAT()

	syms x1 x2 x3 x4 x5 x6 x8 x10 x11 x13
    syms t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12...
    t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23...
    x01 x02 x03 x04 x05 x06 x08 x010 x011 x013 

    % Parameters
    model.sym.p = [t1; t2 ; t3 ; t4 ; t5 ; t6 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12...
    ; t13 ; t14 ; t15 ; t16 ; t17; t18 ; t19 ; t20 ; t21 ; t22; x01; x02; x03; x04; x05; x06; x08; x010; x011; x013];

    % State variables
    model.sym.x = [x1; x2; x3; x4; x5; x6; x8; x10; x11; x13];
	
    % Control vectors (g)
    model.sym.g=[-t1*x1*2.265
                  0
                  t1*x1*2.265
                  0
                  0
                  0
                  0
				  0
                  -t12*2.265*x11
                  0];

    % Autonomous dynamics (f)
    model.sym.xdot=[-t5*x1+t6*x2
                    t5*x1-t6*x2
                    -t2*x3*(-x6+2.8)
                    t2*x3*(-x6+2.8)-t3*x4
                    t3*x4-t4*x5
                    -t7*x3*x6/(1+t13*x1)-t7*x4*x6/(1+t13*x13)+t8*(-x6+2.8)*91
                    -t9*x8*(-x6+2.8)+t10*(-x8+165)*91
                    t11*(-x8+165)
                    0
                    x10*t14/(t15+x10)-t16*x13
                    ];   

    % Initial conditions
    model.sym.x0 = [x01; x02; x03; x04; x05; x06; x08; x010; x011; x013];

    % Observables
    model.sym.y = [x1 + x3 + x4;t18*(x3 + x4 + x5 +(0.34-x11));t19*(x4 + x5);t20*(-x6+2.8);t21*x10;t22*x10*t17/t11;x13;-x8+165];
end