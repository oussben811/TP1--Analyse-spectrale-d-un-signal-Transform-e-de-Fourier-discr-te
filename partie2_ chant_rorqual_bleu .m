clear all
close all
clc


[signal,fs] = audioread('bluewhale.au'); % on a récuperé les valeurs qu a pris le signal et la frequence du signal.
chant = signal(2.45e4:3.10e4); % on prend un extrait du signal 
sound(chant,fs);  % la commande sound nous permet d écouter le son géneré par le signal
N = length(chant);
ts = 1/fs;
t = (0:N-1)*(10*ts);
%plot(t,chant); % on trace le signal temporel chant
f = (0:floor(N/2))*(fs/N)/10; 
y = abs(fft(chant)).^2/N; % on applique la transformée de fourier discrete sur le signal chant 
plot(f,y(1:floor(N/2)+1));