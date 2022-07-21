
clear all;

% 3 states:
syms S I W R
syms bi gam mu bw k xi a
x = [S I W R].';

% 5 parameters:

p = [bi gam mu bw k xi a].';

% 2 outputs:
h = [k*I, S+R+I].';

% 1 unknown input (time-varying parameter):
u = [];
w = [];

% dynamic equations:
f = [-bi*S*I - S*mu - S*bw*W + R*a + mu;
    bi*S*I - gam*I + S*bw*W - mu*I;
    xi*I - xi*W;
	gam*I - R*mu - R*a];

% initial conditions:
ics  =  [];   

% which initial conditions are known:
known_ics = [0,0,0,0]; 

save('SIWR','x','p','u','w','h','f','ics','known_ics');

