% runHIV runs the structural identifiability analysis for the 
% model of HIV dynamics described by


% Confirm execution
%genssiAskForConfirmation(1);

%syms xx0 y0 v0 ww0 z0
%genssiMain('HIV',15,[xx0;y0;v0;ww0;z0]);

genssiMain('HIV',15);
