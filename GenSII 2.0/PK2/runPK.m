% runPharmacokinetics runs the structural identifiability analysis for the 
% model of the pharmacokinetics of glucose-oxidase introduced by
% 
%    Demignot, S. and Domurado, D. (1987). Effect of prosthetic 
%    sugar groups on the pharmacokinetics of glucose-oxidase, 
%    Drug. Des. Deliv., 1, 333-348.

% Confirm execution
syms ka kc n a1
syms a2 b2 b1 
syms x30 x10 x20 x00

genssiMain('PK',3,[x30;x10;x20;x00]);