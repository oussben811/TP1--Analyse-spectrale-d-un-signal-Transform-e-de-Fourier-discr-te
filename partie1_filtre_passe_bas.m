close all
clear all
clc


fe = 1e4;%frequence dechantillonage
te = 1/fe;
N=5000;
t=0:te:(N-1)*te;%axe du temps
%ON DECLARE LE SIGNAL
x=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t); %le signal initial
x1=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t); % le signal voulu par filtrage 
spectre_x=fft(x);


% conception du filtre pass bas ideal

pass_bas_ideal = zeros(size(x));
fc = 2000; % en hertz
indexe_fc = ceil((fc*N)/fe);
pass_bas_ideal(1:indexe_fc)=1;
pass_bas_ideal(N-indexe_fc+1:N)=1;

f=(0:N-1)*(fe/N);
% plot(f,pass_bas_ideal,'linewidth',1.2);

% Filtrage 

spectre_x_filtree = pass_bas_ideal .* spectre_x ; % on applique le fitre pass_bas_ideal sur le signal
tmp_x_filre = ifft(spectre_x_filtree,'symmetric');%  on applique transformée de fourier inverse 


fshift=(-N/2:N/2-1)*(fe/N);
plot(fshift,fftshift(abs(fft(tmp_x_filre))));

plot(t,x1-tmp_x_filre)