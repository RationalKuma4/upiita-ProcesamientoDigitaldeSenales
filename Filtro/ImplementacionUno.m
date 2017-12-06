% Aplicacion de filtros FIR de fase lineal en la Toria de Comunicaciones
% Simular un sistema de modulacion DSB-SC (doble banda lateral con
% portadora suprimida), utilizando la señal moduladora m(t) y portadorac(t)
clear all;
close all;

%% Graficar las señales analogicas m(t) y c(t) en tiempo continuo
% Funciones continuas
Tm=800;
fm=1/Tm;
mt=@(t) 5*cos(2*pi*fm*t*100)+2*cos(2*pi*fm*t*200)+cos(2*pi*fm*t*400);

Tc=800;
fc=1/Tc;
ct=@(t) cos(2*pi*t*fc*1800);

% Grafica
t=-15:15;
figure(1);
subplot(2,1,1);
plot(t, mt(t));
subplot(2,1,2);
plot(t, ct(t));

%% Muestrear las señales analogicas m(t) y c(t) utilizando la frecuencia de muestreo fs=9000Hz 
% Frecuencia y Periodo de Muestreo
fs=9000;
Ts=1/fs;
n=-100:100;

% Omegas y funcion m
w0=2*pi*200*Ts;
w1=2*pi*400*Ts;
w2=2*pi*800*Ts;
m=5*cos(w0*n)+2*cos(w1*n)+cos(w2*n);

% Omega y funcion c
w3=2*pi*3600*Ts;
c=cos(w3*n);

% Grafica
figure(2);
subplot(2,1,1);
plot(n, m);
subplot(2,1,2);
plot(n, c);

%% Graficar las señales m(n) y c(n) en tiempo discreto
% Grafica
figure(3);
subplot(2,1,1);
stem(n, m);
subplot(2,1,2);
stem(n, c);

%% Calcular la tranformada de Fourier de m(t) y c(t) utilizando las muestras 
% obtenidas m(n) y c(n) y graficar los espectros de magnitud(espectros continuos)
% Mostrar en el eje horizontal la frecuencias reales de las señales en Hz
M=fft(m);
C=fft(m);
figure(3);
subplot(2,1,1);
stem(n, m);
subplot(2,1,2);
stem(n, c);







