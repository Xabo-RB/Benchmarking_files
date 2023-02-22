% runHIV runs the structural identifiability analysis for the 
% model of HIV dynamics described by
% 


% Confirm execution
genssiAskForConfirmation(1);

%3 derivadas de Lie, en el original son 4, pero también son 4 estados
genssiMain('BIG',10);
