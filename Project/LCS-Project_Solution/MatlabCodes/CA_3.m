Fq = [0.01 0.02 0.1 0.2 0.5 1 2 5 10 20 50];
Ar = [6.984 6.938 5.77 3.919 1.287 0.34 0.06 0.0053 0.0007 0.000087 0.00000056]; 
Ph_rad = [-0.09717 -0.18314 -0.8716 -1.52636 -2.2955 -3.385 -3.194 -4.3 -4.5 -4.6 -4.65]; 
phase = (180/pi).*Ph_rad;
f=log10(Fq);
gain=20*log10(Ar);
close;subplot(2,1,1);plot(f,gain);
xlabel('frequency log10(\omega)');ylabel('Gain(dB)');title('Amplitude')
subplot(2,1,2);plot(f,phase);
xlabel('frequency log10(\omega)');ylabel('Phase(deg)');title('Phase')
