% runNFkB runs the structural identifiability analysis for model of NFkB
% signalling introduced by
% 
%    Lipniacki et al. (2004). Mathematical model of NFkB regulatory  
%    module, Journal of Theoretical Biology 228, 195-215.

% Symbolic parameters for identifiability analysis
syms a1 a2 t1 a3 t2 c1a c2a c3a c4a c5a c6a c1 c2 c3 c4 c5 ...
    k1 k2 k3 kprod kdeg kv i1 e2a i1a e1a c1c c2c c3c x01 x06 x07 x08 x09 x010 x011 x012 x014 x015 NF

% 
% model.sym.p = [a1;a2;t1;a3;t2;c1a;c2a;c3a;c4a;c5a;c6a;c1;c2;c3;c4;c5;...
%                    k1;k2;k3;kprod;kdeg;kv;i1;e2a;i1a;e1a;c1c;c2c;c3c;x01;...
%                    x06;x07;x08;x09;x010;x011;x012;x014;x015;NF];


% Confirm execution
%genssiAskForConfirmation(3);

% Structural identifiability analysis
genssiMain('NFkB',8,[x01;x06;x07;x08;x09;x010;x011;x012;x014;x015;NF]);