T=12;
X0=[-1,0.5];
options=odeset('AbsTol',[1e-5,1e-5],'RelTol',1e-5);
[t,x]=ode45('var19',[0,T],X0,options);
plot(t,x(:,1),'b-',t,x(:,2),'g--','LineWidth',2);
legend('x_1(t)','x_2(t)');
grid on;
xlabel('t, c');
ylabel('x_i(t)');
title('Реакция системы на входной сигнал y=1 при начальных условиях [-1,0.5]');
annotation('arrow',[0.13 0.13],[0.13 0.95], 'HeadStyle', 'plain')
annotation('arrow',[0.11 0.92],[0.11 0.11], 'HeadStyle', 'plain')