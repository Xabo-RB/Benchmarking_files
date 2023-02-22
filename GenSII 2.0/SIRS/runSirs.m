% runHIV runs the structural identifiability analysis for the 
% model of HIV dynamics described by
% 
%Capistrán, M. A., Moreles, M. A., & Lara, B. (2009). Parameter estimation of some epidemic models. 
% The case of recurrent epidemics caused by respiratory syncytial virus. Bulletin of mathematical biology, 71, 1890-1901.

% Confirm execution
genssiAskForConfirmation(1);

%3 derivadas de Lie, en el original son 4, pero también son 4 estados
genssiMain('Sirs',4);
