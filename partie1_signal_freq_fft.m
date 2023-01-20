fe=10000 ;
N=5000;
Te=1/fe ;


t=0:Te:(N-1)*Te;
x=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);


f = (0:N-1)*(fe/N);
y = fft(x);

plot(f,2*abs(y)/N);
title('Signal frequentiel');
xlabel('f')
ylabel('x(f)')

%{
La commande fft calcule une transformée de Fourier Rapide dans le domaine fréquentiel :
1- Définition du vecteur de fréquence f de taille N et d’un pas égale à fe/N.
2- L’utilisation de abs pour tracer le spectre d’amplitude.
3- Puis on a besoin de diviser par N et multiplier par 2 pour des valeurs plus exactes en 
amplitude.
Remarque: Les raies du spectre obtenu font une symétrie conjuguée par rapport à fe/2.
}%