s = tf('s');
Gc = 7/((1+1.127*s)*(1+1.135*s)*(1+1.136*s));
H = 0.5/(s+0.5);
f = 0.4*(s+0.09)*(s+0.43)/s;
G = H*Gb*f;
%rlocus(G)
margin(G);
fbc = bandwidth(G);



% M=feedback(Gc*f, H);
% step(M)
% stepinfo(M)
% SP = 1;
% [y, t]=step(SP*M);
% sse=abs(SP-y(end))