function model = coleman()
    % Symbolic variables
syms x1 x2 
syms a1 b11 b12 a2 b21 b22
    
    % Parameters
    model.sym.p = [a1;b11;b12;a2;b21;b22];

    % State variables
    model.sym.x = [x1;x2];

    % Control vectors (g)
    model.sym.g = [0
                    0];

    % Autonomous dynamics (f)
    %aquí no se define la salida, y
    model.sym.xdot = [x1*(a1-b11*log(x1)-b12*log(x2))
                       x2*(a2-b21*log(x1)-b22*log(x2))];
                  
                  
    % Initial conditions
    model.sym.x0 = [x10 x20];
    
    %SE REFIERE A LAS SALIDAS, CUÁLES DE LOS ESTADOS SON SALIDAS, ES DECIR
    %SI SON MEDIBLES
    % Observables
    model.sym.y = x1;
end