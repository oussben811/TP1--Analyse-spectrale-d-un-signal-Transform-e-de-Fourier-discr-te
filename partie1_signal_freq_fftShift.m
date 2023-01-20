fe=10000 ;
N=5000;
Te=1/fe ;
df=fe/N;

t=0:Te:(N-1)*Te;
x=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);


fshift = (-N/2:N/2-1)*(fe/N);
y = fft(x);

plot(fshift,fftshift(2*abs(y)/N));
title('Signal frequentiel');
xlabel('f')
ylabel('x(f)')

%{
La commande fftshift effectue un décalage circulaire centre sur 0 du spectre en amplitude obtenu par 
la commande fft. En l’appliquant sur un intervalle qui couvre la partie positif et négatif.
%}