%% Aplicacion de filtros FIR de fase lineal en la Toria de Comunicaciones
% Simular un sistema de modulacion DSB-SC (doble banda lateral con
% portadora suprimida), utilizando la se�al moduladora m(t) y portadorac(t)
clear all;
close all;

%% Modulacion Graficar las se�ales analogicas m(t) y c(t) en tiempo continuo
% Funciones continuas

%% Muestrear las se�ales analogicas m(t) y c(t) utilizando la frecuencia de muestreo fs=9000Hz 
% Frecuencia y Periodo de Muestreo
fs=9000;
Ts=1/fs;
n=-100:100;

% Omegas y funcion m. w=2*pi*f
w0=2*pi*100*Ts;
w1=2*pi*200*Ts;
w2=2*pi*400*Ts;
mn=5*cos(w0*n)+2*cos(w1*n)+cos(w2*n);

% Omega y funcion c
w3=2*pi*1800*Ts;
cn=cos(w3*n);

%% Graficar las se�ales m(n) y c(n) en tiempo discreto
% Grafica
figure(2);
subplot(2,1,1);
stem(n, mn);
axis([-100 100 -6 9])
title('m(n)')
grid on;
subplot(2,1,2);
stem(n, cn);
axis([-100 100 -1 1.2])
title('c(t)')
grid on;

%% Calcular la tranformada de Fourier de m(t) y c(t) utilizando las muestras 
% obtenidas m(n) y c(n) y graficar los espectros de magnitud(espectros continuos)
% Mostrar en el eje horizontal la frecuencias reales de las se�ales en Hz
% Tranformada para m y centramos
M=fftshift(fft(mn));

% Tranformada de c y centramos
C=fftshift(fft(cn));

% Graficas
f=linspace(-fs/2,fs/2,201);    %Frecuencia real
figure(3);
subplot(2,1,1);
stem(f, abs(M));
%axis([-1800 1800 0 600])
title('Espectro de magnitud de m(n)')
grid on;
subplot(2,1,2);
stem(f, abs(C));
%axis([-3800 3800 0 100])
title('Espectro de magnitud de c(n)')
grid on;

%% Obtener la se�al modulada y(n)=m(n)c(n) y graficarla en tiempo discreto
y=mn.*cn;
figure(4);
stem(f, y);
title('Se�al modulada y(n)=m(n)c(n)')
grid on;

%% Calcular la tranformada de y(t) usando las muestras y(n) y graficar el espectro de magtnitud
% Mostrar en el eje horizontal las frecuancias reales de las se�ales en Hz
Y=fft(y);
figure(5);
stem(f, abs(Y));

%% Demodulacion Obtener la se�al r(n)=y(n)c(n) y graficar en tiempo discreto
r=y.*cn;
figure(6);
stem(n, r);
axis([-100 100 -5 9])
title('Se�al demodulada r(n)=y(n)c(n)')
grid on;

%% Graficar el espectro de magnitud de r(n)
% Tranformada de r
R=fftshift(fft(r));
figure(7);
stem(f, abs(R));
% axis([-100 100 -5 9])
title('Espectro de magnitud de r(n)')
grid on;

%% Eliminar las bandas laetrales de r(n) mediante un filtro FIR simetrico con
% M=100, obteniendo la se�al m2(n)
M=100;
A=Ank(M);
Hr=[ones(1,9) zeros(1,41)];
h=inv(A)*Hr';

w=-pi:0.01:pi;
Hw=h((M/2)-1);    %Simetrico =/ Hw=h((M-1)/2+1);
for n=0:(M-3)/2
    Hw=Hw+2*h(n+1)*cos(((M-1)/2-n)*w);
end

figure(7);
plot(w, abs(Hw));
grid on;
figure(8);
plot(w, 20*log10(abs(Hw)));
grid on;
axis([-pi pi -80 10]);
m2=conv(h,r);

%% Graficar la se�al m2(n) y su espectro de magnitud
% Transformada de m2
M2=fftshift(fft(m2));

figure(9);
stem(f, abs(M2));
% title('Espectro de magnitud de r(n)')
grid on;



