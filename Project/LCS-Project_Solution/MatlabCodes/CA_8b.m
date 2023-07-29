s = tf('s');
Gb = (0.28)/((s^2)+(0.4*s)+0.04);
H = 0.5/(s+0.5);
f = 2.24*(s+0.09)*(s+0.09)/s;
G = H*Gb*f;
%rlocus(G)
margin(G);
fbb = bandwidth(G);


% M=feedback(Gb*f, H);
% step(M)
% stepinfo(M)
% SP = 1;
% [y, t]=step(SP*M);
% sse=abs(SP-y(end))