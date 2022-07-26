% runHIV runs the structural identifiability analysis for the 
% model of HIV dynamics described by
% 
%    Meshkat et al. (2014). On finding and using identifiable parameter
%    combinations in nonlinear dynamic Systems Biology models and
%    COMBOS: a novel Web implementation, PLoS ONE, 9, e110261.

% Confirm execution
genssiAskForConfirmation(1);

%3 derivadas de Lie, en el original son 4, pero también son 4 estados
genssiMain('SIRS',10);