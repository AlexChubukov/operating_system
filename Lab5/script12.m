k=1;
T=0.5;
T1=1.6;
B=[k];
A=[T*T1, T+T1,1,0];
w=0.6:0.001:30;
APK=freqs(B,A,w);
u=real(APK);
v=imag(APK);
t=0:pi/100:2*pi; 
x=sin(t); 
y=cos(t); 
plot(u,v,x,y,"LineWidth",2);
grid on;
axis equal
title('Годограф АФЧХ разомкнутой системы');
W=tf(B,A)
figure();
nyquist(W)
axis equal
figure();
bode(W)
grid on
step(W/(1+W))