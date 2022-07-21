% runHIV runs the structural identifiability analysis for the 
% model of HIV dynamics described by
% 
%    Meshkat et al. (2014). On finding and using identifiable parameter
%    combinations in nonlinear dynamic Systems Biology models and
%    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

% Symbolic parameters for identifiability analysis
syms p1 p2 p5 p8 p10 p11 p12 p15 p18 p19 p26 p27

% Structural identifiability analysis (for a subset of the parameters)
genssiMain('Arabidop',7,[p1;p2;p5;p8;p10;p11;p12;p15;p18;p26;p27]);


% Confirm execution
% genssiAskForConfirmation(1);
% 
% genssiMain('Arabidop',12);