s = tf('s');
Ga = (7)/((7.25*s)+1);
H = 0.5/(s+0.5);
f = 0.34*(s+1.51)*(s+0.07)/s;
G = H*Ga*f;
%rlocus(G);
margin(G);
fba = bandwidth(G);


%M=feedback(Ga*f, H);
% step(M)
% stepinfo(M)
% SP = 1;
% [y, t]=step(SP*M);
% sse=abs(SP-y(end))