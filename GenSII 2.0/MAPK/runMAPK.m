% Confirm execution
%genssiAskForConfirmation(1);
syms k1 k2 k3 k4 k5 k6 ...
    ps1 ps2 ps3 ...
    s1t s22t s3t ...
    KK1 KK2 n1 n2 alphaa  ...
	ps10 ps20 ps30

genssiMain('MAPK',7,[k1; k2; k3; k4; k5; k6]);
genssiMain('MAPK',7,[s1t; s22t; s3t; KK1; KK2; n1; n2; alphaa]);
