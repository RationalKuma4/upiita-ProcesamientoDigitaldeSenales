clear all;
close all;
%% Enunciados
% Considere el siguiente sistema en tiempo discreto 
% recursivo descrtito por la ecuacion en diferencias
% y(n)=-a_1y(n-1)-a_2y(n-2)+b_0x(n) donde:

% a) Escriba un programa para calcular y dibujar la respuesta al impulso 
% h(n) del sistema para 0<=n<=49.

% b) Escriba un prgrama para calcular y dibujar la respuesta al escalon 
% en estado nulo s(n) del sistemas para 0<=n<=100

% c)Defina un sistema FIR con respuesta al impulso h_FIR(n) dada por 
% h_FIR(n)= h(n) para 0<=n<=19, 0 en otro caso
% donde h(n) es la respuesta al impulso calculada en el inciso (a).
% Escriba un programa para calcular y dibujar la respuesta al escalon para
% 0<=n<=100

% d) Compare los resultados obetnidos en los incisos (b) y (c) y explique
% sus similitudes y diferencias

a_1=-0.8;
a_2=0.64;
b_0=0.866;
% y(n)=-a_1*y(n-1)-a_2*y(n-2)+b_0*x(n);

%% Inciso a
y=[0, 0];
x=[0,0,1 zeros(1, 49)];

for n=0:49
    y(n+3)=-a_1*y(n-1+3)-a_2*y(n-2+3)+b_0*x(n+3);
end;

n=-2:49;
figure('Color','w');
subplot(2, 1, 1);
stem(n,x);
title('x(n)')
%axis([-3 50 0 1]);

subplot(2, 1, 2);
stem(n,y);
title('y(n)')
%axis([-3 50 0.7 1]);

yr=y;

%% Inciso b
y=[0,0];
x=[0,0];

for n=0:100
    %0.866*
    x(n+3)=1;
    y(n+3)=-a_1*y(n-1+3)-a_2*y(n-2+3)+b_0*x(n+3);
end;

n=-2:100;
figure('Color','w');
subplot(2, 1, 1);
stem(n,x);
title('x(n)');
axis([-3 100 0 1]);

subplot(2, 1, 2);
stem(n,y);
title('y(n)');
axis([-3 100 0 2]);

%% Inciso c
n=-2:49;
h_FIR = yr.*(n>=0 & n<=19);
nhFir=0:51;
h=ones(1,20);
nh=0:19;

[y, ny] = ConvolucionDiscreta(h_FIR, nhFir, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nhFir, h_FIR);
title('h_FIR(n))');
axis([-3 40 -0.5 1]);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');

subplot(3, 1, 3);
stem(ny, y);
title('y(n)');

