s = tf('s');
Ga = (7)/((7.25*s)+1);
H = 0.5/(s+0.5);
G = H*Ga;
%rlocus(G)
margin(G);
fba = bandwidth(G);