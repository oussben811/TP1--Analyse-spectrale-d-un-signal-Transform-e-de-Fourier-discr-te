clear  
close all 
clc

fe = 10000 ; 
te  = 1/fe; 
N = 5000;

t = (0:N-1)*te;
x = 1.2*cos(2*pi*440*t + 0.2) + 1*cos(2*pi*550*t)+ 0.6*cos(2*pi*2500*t); 

fshift = (-N/2:N/2-1)*(fe/N);

noise = 2*randn(size(x));  % On crée un signal bruit blanc gaussien à partir du signal x(t) en utilisant la fonction randn.
xnoise = x+noise; 
%{
On a fusionné le signal x(t) avec le signa bruit >> xnoise, puis on trace sa représentation dans le 
domaine fréquentiel ynoise.
%}

ynoise = fft(xnoise);
plot(fshift,fftshift(2*abs(ynoise)/N));
