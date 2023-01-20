fe=10000 ;
N=5000;
Te=1/fe ;
df=fe/N;

t=0:Te:(N-1)*Te;
xt=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);

plot(t,xt);
title('Signal temporel');
xlabel('t')
ylabel('x(t)')
