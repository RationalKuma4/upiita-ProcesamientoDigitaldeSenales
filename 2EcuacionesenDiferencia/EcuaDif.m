clear all;
close all;

% a)x(n)=(1/2)^n*u(n)
% b)x(n)=dirac(n)
% c)x(n)=u(n)
% d)x(n)=(4)^n*u(n)

%Establecer condiciones iniciales
%a) d)
%y=[-1,1/2];
%x=[0, 0];

%b) c)
y=[0,0];
%x=[0,0];
x=[0,0,1 zeros(1,50)];

%Ciclo paara calculo
for n=0:50
    %Ecuacion para x
    %x(n+3)=(1/2)^n;
    %x(n+3)=1;
    %x(n+3)=4^n;
    
    %Ecuacion para y
    %y(n+3)=(5/6)*y(n-1+3)-(1/6)*y(n-2+3)+x(n+3);
    %y(n+3)=.6*y(n-1+3)-.08*y(n-2+3)+x(n+3);
    y(n+3)=.7*y(n-1+3)-.1*y(n-2+3)+x(n+3)-x(n-2+3);
end

%Muestras
n=-2:50;

figure('Color','w');
subplot(2, 1, 1);
stem(n,x);
%title('x(n)')
%axis([-1 3 0 5])
%set(gca,'xtick',0:4,'ytick',0:5,'LineWidth',1,'FontSize',8)

subplot(2, 1, 2);
stem(n,y);
%title('x(n)')
%axis([-1 3 0 5])
%set(gca,'xtick',0:4,'ytick',0:5,'LineWidth',1,'FontSize',8)