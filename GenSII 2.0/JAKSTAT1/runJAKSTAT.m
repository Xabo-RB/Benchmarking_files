% runNFkB runs the structural identifiability analysis for model of NFkB
% signalling introduced by
% 
%    Lipniacki et al. (2004). Mathematical model of NFkB regulatory  
%    module, Journal of Theoretical Biology 228, 195-215.

% Symbolic parameters for identifiability analysis
 syms t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12...
    t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23...
    x01 x02 x03 x04 x05 x06 x08 x010 x011 x013 

% Confirm execution
%genssiAskForConfirmation(3);

% Structural identifiability analysis
%genssiMain('JAKSTAT',9,[t2 ; t3 ; t4 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12]);
%genssiMain('JAKSTAT',8,[t14 ; t15 ; t16 ; t17; t22]);
%genssiMain('JAKSTAT',8,[t2 ; t3 ; t4 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12; t14 ; t15 ; t16 ; t17; t22]);
%genssiMain('JAKSTAT',10,[t11 ; t14 ; t15 ; t16 ; t17; t21 ; t22]);


%% 1
%genssiMain('JAKSTAT',3,[t1; t2 ; t3 ; t4 ; t5 ; t6 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12...
 %   ; t13 ; t14 ; t15 ; t16 ; t17; t18 ; t19 ; t20 ; t21 ; t22]);

%% 2
%genssiMain('JAKSTAT',5,[t1; t2 ; t3 ; t4 ; t5 ; t6 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12...
%    ; t13 ; t14 ; t15 ; t16 ; t17; t18 ; t19 ; t20 ; t21 ; t22]);

%% 3
% genssiMain('JAKSTAT',8,[t1; t2 ; t3 ; t4 ; t5 ; t6 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12...
%     ; t13 ; t14 ; t15 ; t16 ; t17; t18 ; t19 ; t20 ; t21 ; t22]);

%% 4
% genssiMain('JAKSTAT',7,[t1; t2 ; t3 ; t4 ; t5 ; t6 ; t7 ; t8 ; t9 ; t10 ; t11 ; t12...
%     ; t13 ; t14 ; t15 ; t16 ; t17; t18 ; t19 ; t20 ; t21 ; t22]);

%% 5
%genssiMain('JAKSTAT',7,[t7 ; t8 ; t9 ; t10 ...
%    ; t13 ; t14 ; t15 ; t16 ; t17; t22]);

%% 6
%genssiMain('JAKSTAT',7,[t7 ; t8 ; t9 ; t10 ...
%    ; t13 ; t14 ; t15 ; t16 ; t17; t22; x01; x02; x03; x04; x05; x06; x08; x010; x011; x013]);

%% 7
genssiMain('JAKSTAT',7,[t7 ; t8 ; t9 ; t10 ...
    ; t13 ; t14 ; t15 ; t16 ; t17; t22]);