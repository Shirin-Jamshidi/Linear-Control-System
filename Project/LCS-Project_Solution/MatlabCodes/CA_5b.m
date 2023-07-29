s = tf('s');
Gb = (0.28)/((s^2)+(0.4*s)+0.04);
H = 0.5/(s+0.5);
G = H*Gb;
rlocus(G)
% margin(G);
% fbb = bandwidth(G);