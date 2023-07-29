C = [1 0 0];
B = [0 ; 0; 50];
A = [0 1 0; 14.06 -0.2 13; 0 0 -250];
I = eye(3);
s = tf('s');
M = s*I-A;
MI = inv(M);
G = C*MI*B;
Gc = (11.7 + 0.001/s)*G;
rlocus(Gc)
