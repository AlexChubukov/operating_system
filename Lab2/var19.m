k=1;
T=1;
xi=0.6;
B1=[k];
A1=[1];
W1=tf(B1,A1);

B2=[k];
A2=[1,0];
W2=tf(B2,A2);

B3=[k];
A3=[T,1];
W3=tf(B3,A3);


B4=[k,0];
A4=[T,1]
W4=tf(B4,A4);

B5=[k];
A5=[T^2,2*T*xi,1];
W5=tf(B5,A5);

B6=[2*k];
A6=[T^2,2*T*xi,1];
W6=tf(B6,A6);

B7=[k];
A7=[(2*T)^2,4*T*xi,1];
W7=tf(B7,A7);

B8=[k];
A8=[T^2,2*T*(1/2*xi),1];
W8=tf(B8,A8);

B9=[k];
A9=[T^2,2*T*0,1];
W9=tf(B9,A9);

B10=[k];
A10=[T^2,2*T*1,1];
W10=tf(B10,A10);

ltiview({'step';'impulse';'bode';'nyquist';'pzmap'},W5, W10);
