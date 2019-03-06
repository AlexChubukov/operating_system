function dx=var12(t,x)
global w;
k = 2;
T = 0.2;
xi = 0.3;
dx=zeros(2,1);
y=sin(w*t);
a2 = T^2;
a1 = 2 * xi * T;
a0 = 1;
b0 = k;
dx(1)=x(2);
dx(2)= 1 / (a2) * (b0 * y - (a1 * x(2) + a0 * x(1)));
