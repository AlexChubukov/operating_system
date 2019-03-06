T1=2.3;
T=5;
k=0;
A = [T*T1, T+T1, 1, k];
B=[k];
w=0.001:0.001:0.5;
GM=freqs(A, 1, w);
U=real(GM);
V=imag(GM);
plot(U,V);
title('k=0')
%title('k=k_{kp}')
hold on
plot(0,0,'r+');
grid
hold off

T=[0.1, 0.2, 0.3, 0.5, 1, 1.5, 2, 2.5, 3, 4, 5];
k_cr=[10.43, 5.432, 3.763, 2.432, 1.433, 1.1, 0.9338, 0.8347, 0.7653, 0.6819, 0.631];
figure();
plot(T,k_cr,'b-','LineWidth',2);
title('Граница устойчивости системы');
grid on
hold on

k=0.5;
T=0.5;
W1=tf([k], [T*T1, T+T1,1,k]);
plot(T,k,'g*', 'LineWidth', 2);

k=1.433;
T=1;
W2=tf([k], [T*T1, T+T1,1,k]);

plot(T,k,'b*', 'LineWidth', 2);

k=3;
T=3;
W3=tf([k], [T*T1, T+T1,1,k]);
ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W3);
plot(T,k,'r*', 'LineWidth', 2);
