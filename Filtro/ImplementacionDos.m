% Aplicacion de filtros FIR de fase lineal en la Toria de Comunicaciones
% Simular un sistema de modulacion DSB-SC (doble banda lateral con
% portadora suprimida), utilizando la señal moduladora m(t) y portadorac(t)
clear all;
close all;

%% Modulacion Graficar las señales analogicas m(t) y c(t) en tiempo continuo
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
stem(n, abs(M));
subplot(2,1,2);
stem(n, abs(M));

%% Modulacion Utilizando un filtro Fir de sale lineal antisimetrico con M=101
% eliminar las bandas laterales superiores para obtener la señal yssb(n)

%% Graficar yssb(n) y su espectro de magnitud

%% Demodulacion 

%% Demodulacion Obtener la señal r(n)=y(n)c(n) y graficar en tiempo discreto
r=y.*c;
figure(6);
stem(n, r);

%% Graficar el espectro de magnitud de r(n)
figure(7);
stem(n, abs(y));

%% Eliminar las bandas laetrales de r(n) mediante un filtro FIR simetrico con
% M=100, obteniendo la señal m2(n)
M=100;
A=Akn(M);
Hr=[ones(1,9) zeros(1,41)];
h=inv(A).*Hr';

w=-pi:0.01:pi;
Hw=h((M-1)/2+1);
for n=0:(M-3)/2
    Hw=Hw+2*h(n+1)*cos(((M-1)/2-n)*w);
end

plot(w, abs(Hw));
plot(w, 20*log10(abs(Hw)));
grid on
axis([-pi pi -80 10])

%% Graficar la señal m2(n) y su espectro de magnitud

