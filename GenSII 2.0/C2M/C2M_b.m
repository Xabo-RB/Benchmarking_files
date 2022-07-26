function model = C2M()
    % Symbolic variables
    syms x1 x2
    syms k12 k1e k21 b x10 x20 u1
    
    % Parameters
    model.sym.p = [k12;k1e;k21;b;u1];

    % State variables
    model.sym.x = [x1;x2];

    % Control vectors (g)
    %Cuando hay entradas las ecuaciones se escriben en esta matriz y f tiene
    %las derivadas de los estados sin entradas, para dudas ver glicolisis,
    %cada columna de esta matriz es para cada entrada ui. Si ui = u1, 
    %entonces es un vector, en las filas las derivadas de los estados.
    model.sym.g = [0
                    0];

    % Autonomous dynamics (f)
    %aquí no se define la salida, y
    model.sym.xdot = [-((k1e+k12)*x1) + (k21*x2)+b*u1
                      (k12*x1) - (k21*x2)];
                  
                  
    % Initial conditions
    model.sym.x0 = [x10 x20];
    
    %SE REFIERE A LAS SALIDAS, CUÁLES DE LOS ESTADOS SON SALIDAS, ES DECIR
    %SI SON MEDIBLES
    % Observables
    model.sym.y = x1;
end