s = tf('s');
Gc = 7/((1+1.127*s)*(1+1.135*s)*(1+1.136*s));
H = 0.5/(s+0.5);
G = H*Gc;
rlocus(G)
% margin(G);
fbc = bandwidth(G);