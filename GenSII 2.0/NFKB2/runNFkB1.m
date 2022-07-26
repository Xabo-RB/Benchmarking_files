% runNFkB runs the structural identifiability analysis for model of NFkB
% signalling introduced by
% 
%    Lipniacki et al. (2004). Mathematical model of NFkB regulatory  
%    module, Journal of Theoretical Biology 228, 195-215.

% Symbolic parameters for identifiability analysis
syms t1 a3 t2 c3a c4a c5 k1 k2 k3 kprod kdeg...
     i1 e2a i1a x01 x02 x03 x04 x05 x06 x07 x08 x09 x010 x011 x012 x013 x014 x015

% Confirm execution
genssiAskForConfirmation(3);

% Structural identifiability analysis
%genssiMain('NFkB1',2,[x01;x02;x03;x04;x05;x06;x07;x08;x09;x010;x011;x012;x013;...
%       x014;x015]);
genssiMain('NFkB1',4,[t1;t2;c3a;c4a;c5;...
                   k1;k2;k3;kprod;kdeg;i1;e2a;i1a]);


