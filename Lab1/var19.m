function dx=var19(t,x)
dx=zeros(2,1);
y=1;
dx(1)=x(2);
dx(2)=2*(y-x(1)-(1/2)*x(2));
