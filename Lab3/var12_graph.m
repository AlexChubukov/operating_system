w=[0.03, 0.05, 0.1, 0.3, 0.5, 1, 3, 5, 10];
Aw=[2, 2, 2.001, 2.006, 2.016, 2.067, 2.724, 3.333, 0.619];
dt=[-0.1, -0.1, -0.1, -0.1, -0.2, -0.12, -0.17, -0.31, -0.28];
Tw=2*pi./w;
phi=dt./Tw*360
L=20*log10(Aw)

figure();
plot(w, Aw, 'LineWidth',2);
grid on;
title('������ ���');
ylabel('A(\omega)');
xlabel('\omega, ��');

figure();
plot(w, phi, 'LineWidth',2);
grid on;
title('������ ���');
ylabel('\phi(\omega), ����.');
xlabel('\omega, ��');

figure();
semilogx(w, L, 'LineWidth',2);
grid on
title('������ ��������������� ���');
ylabel('L(\omega), ��');
xlabel('\omega, ������ ��');

k = 2;
T = 0.2;
xi = 0.3;
W=tf([k],[T^2,2*T*xi,1]);
figure();
bode(W);

figure();
nyquist(W);
hold on;
polar(phi*pi/180, Aw, 'r-');
title('�������� ����');


