w=[0.03, 0.05, 0.1, 0.3, 0.5, 1, 3, 5, 10];
Aw=[3.5, 3.501, 3.505, 3.547, 3.63, 4.002, 1.902, 0.6127, 0.1433];
dt=[-0.5, -0.4, -0.5, -0.5, -0.5, -0.55, -0.77, -0.55, -0.29];
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

k = 3.5;
T = 0.5;
xi = 0.45;
W=tf([k],[T^2,2*T*xi,1]);
figure();
bode(W);

figure();
nyquist(W);
hold on;
polar(phi*pi/180, Aw, 'r-');
title('�������� ����');


