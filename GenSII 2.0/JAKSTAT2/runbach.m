% runNFkB runs the structural identifiability analysis for model of NFkB
% signalling introduced by
% 
%    Lipniacki et al. (2004). Mathematical model of NFkB regulatory  
%    module, Journal of Theoretical Biology 228, 195-215.

% Symbolic parameters for identifiability analysis

% Confirm execution
%genssiAskForConfirmation(3);

% Structural identifiability analysis
genssiMain('bach',2);