% runHIV runs the structural identifiability analysis for the 
% model of HIV dynamics described by
% 
%    Meshkat et al. (2014). On finding and using identifiable parameter
%    combinations in nonlinear dynamic Systems Biology models and
%    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

% Confirm execution
%genssiAskForConfirmation(1);
syms k1 k2 k3 k4 k5 k6 ...
    ps1 ps2 ps3 ...
    s1t s22t s3t ...
    KK1 KK2 n1 n2 alphaa  ...
	ps10 ps20 ps30

genssiMain('MAPK',7,[k1; k2; k3; k4; k5; k6]);
genssiMain('MAPK',7,[s1t; s22t; s3t; KK1; KK2; n1; n2; alphaa]);