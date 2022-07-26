function model = bach()

    syms x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25
    syms t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 ...
	t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t01 t07 t09...
    x01 x02 x03 x04 x05 x06 x07 x08 x09 x010 x011 x012 x013 x014 x015 x016 x017 x018 x019 x020 x021 x022 x023 x024 x025
    k6 = 1;
    k7 = 1;
    % Parameters
    model.sym.p = [t1;t2;t3;t4;t5;t6;t7;t8;t9;t10;t11;t12;t13;t14;t15;t16;t17;...
	t18;t19;t20;t21;t22;t23;t24;t25;t26;t27;t01;t07;t09];

    % State variables
    model.sym.x = [x1;x2;x3;x4;x5;x6;x7;x8;x9;x10;x11;x12;x13;x14;x15;x16;...
	x17;x18;x19;x20;x21;x22;x23;x24;x25];

    % Control vectors (g)
    model.sym.g=[- x1*t10/((x25*t17/t15)+1)
                  x1*t10/((x25*t17/t15)+1)
                  0
                  0
                  0
                  0
                  0
                  0
                  0
                  0
                  0
                  -t5*x11/t27
                  0
                  0
                  0
				  0
				  0
				  t6*t2*t1
				  -t19*x11/t27
				  0
				  0
				  0
				  0
				  0
				  t20*t16*t15];

    % Autonomous dynamics (f)
    model.sym.xdot=[ (x2+x3+x4+x5)*x8*t11/t26
                    - x2*t7/((x25*t17/t15)+1) - x2*x8*t11/t26 - 3*x2*t7/((t8*x6+1)*((x25*t17/t15)+1))
                    t7*x2/((x25*t17/t15)+1) - t11*x8*x3/t26 - 3*t7*x3/((t8*x6+1)*((x25*t17/t15)+1))
                    3*x2*t7/((t8*x6+1)*((x25*t17/t15)+1)) - t7*x4/((x25*t17/t15)+1) - t11*x8*x4/t26
                    t7*x4/((x25*t17/t15)+1) - t11*x8*x5/t26 + 3*t7*x3/((t8*x6+1)*((x25*t17/t15)+1))
                    -x6*(t9/t25)*(x5+x3)
                    t13*x8 - x7*(t12/t25)*(x2+x3+x4+x5)
                    x7 *(t12/t25)*(x2+x3+x4+x5) - t13*x8
                    k6*t23*x11/k7 - x9*(t22/t25)*(x2+x3+x4+x5)/((x25*t17/t15)+1) - x9*t21*((x5+x3)^2)/((x18*t3/t1 +1)*((x25*t17/t15)+1)*(t25^2))
                    x9*t22*(x2+x3+x4+x5)*((x25*t17/t15)+1)/t25 - t24*x10 + x9*t21*((x5+x3)^2)/((t25^2)*(x18*t3/t1 + 1)*((x25*t17/t15)+1))
                    k7*t24*x10/k6 - t23*x11
                    -x12*t4 + t5*x11/t27
                    x12*t4 - x13*t4
                    x13*t4 - x14*t4
                    x14*t4 -x15*t4
					x15*t4 - x16*t4
					x16*t4*k6/k7 - x17*t5
					x17*t1*t6 - x18*t6
					-x19*t18 + t19*x11/t27
					x19*t18 - x20*t18
					x20*t18 - x21*t18
					x21*t18 - x22*t18
					x22*t18 - x23*t18
					k6*x23*t18/k7 - x24*t19
					x24*t15*t20 - x25*t20];   

    % Initial conditions
    model.sym.x0 = [x01;x02;x03;x04;x05;x06;x07;x08;x09;x010;x011;x012;x013;...
        x014;x015;x016;x017;x018;x019;x020;x021;x022;x023;x024;x025];

    % Observables
    model.sym.y = [2*(x2+x3+x4+x5)*t25;16*(x3+x4+x5)*t25;x18*t1;x25/t14;(x9+x10)/t27;x10*t27;...
	x9;x7+x8;x18;x25;100*x10/(x10+x9);x24;x17;(x7+x8)*(1+(k4*t27))/t26];
end