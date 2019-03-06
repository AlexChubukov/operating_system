T1=1.6;
T=0.1;
k=0;
A = [T*T1, T+T1, 1, k];
B=[k];
w=0.001:0.001:5;
GM=freqs(A, 1, w);
U=real(GM);
V=imag(GM);
plot(U,V);
hold on
plot(0,0,'r+');
grid
hold off

T=[0.1, 0.2, 0.3, 0.5, 1, 1.5, 2, 2.5, 3, 4, 5];
k_cr=[10.63, 5.626, 3.956, 2.625, 1.627, 1.29, 1.125, 1.025, 0.9565, 0.8737, 0.8271];
figure();
plot(T,k_cr,'b-','LineWidth',2);
title('Граница устойчивости системы');
grid on
hold on

k=0.5;
T=1;
W1=tf([k], [T*T1, T+T1,1,k]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W1);
plot(T,k,'g*', 'LineWidth', 2);

k=1.125;
T=2;
W2=tf([k], [T*T1, T+T1,1,k]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W2);
plot(T,k,'b*', 'LineWidth', 2);

k=3;
T=3;
W3=tf([k], [T*T1, T+T1,1,k]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W3);
plot(T,k,'r*', 'LineWidth', 2);