clear all;
close all;

%x=[1, 2, 4];
%nx=0:2;
%h=[1, 1, 1, 1, 1];
%nh=0:4;
%stem(nx, x);
% y=conv(x, h);

% x=[2, 3, 5, 7];
% nx=-2:1;
% h=[1, 2, 3, 4];
% nh=-1:2;
% 
% [y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);
% figure(1);
% subplot(3, 1, 1);
% stem(nx, x);
% subplot(3, 1, 2);
% stem(nh, h);
% subplot(3, 1, 3);
% stem(ny, y);

%a
x=[1,2,4];
nx=0:2;
h=[1,1,1,1,1];
nh=0:4;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 3 0 5])
set(gca,'xtick',0:4,'ytick',0:5,'LineWidth',1,'FontSize',8)

subplot(3, 1, 2);
stem(nh, h);
title('h(n)')
axis([-1 5 0 2])
set(gca,'xtick',-1:5,'ytick',0:2,'LineWidth',1,'FontSize',8)

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)')
axis([-1 7 1 8])
set(gca,'xtick',-1:7,'ytick',1:8,'LineWidth',1,'FontSize',8)


%b
x=[1,2,-1];
nx=0:2;
h=[1,2,-1];
nh=0:2;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 3 -2 3]);
set(gca,'xtick',-1:3,'ytick',-2:3,'LineWidth',1,'FontSize',8);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');
axis([-1 3 -2 3]);
set(gca,'xtick',-1:3,'ytick',-2:3,'LineWidth',1,'FontSize',8);

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)');
axis([-1 5 -5 5]);
set(gca,'LineWidth',1,'FontSize',8);

%c
x=[0,1,-2,3,-4];
nx=0:4;
h=[1/2,1/2,1,1/2];
nh=0:3;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 5 -5 4]);
set(gca,'LineWidth',1,'FontSize',8);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');
axis([-1 4 0 2]);
set(gca,'xtick',-1:4,'ytick',0:2,'LineWidth',1,'FontSize',8);

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)');
axis([-1 8 -3 2]);
set(gca,'xtick',-1:8,'ytick',-3:2,'LineWidth',1,'FontSize',8);

%d
x=[1,2,3,4,5];
nx=0:4;
h=1;
nh=0:0;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 5 0 6]);
set(gca,'xtick',-1:5,'ytick',0:6,'LineWidth',1,'FontSize',8);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');
axis([-1 1 0 2]);
set(gca,'xtick',-1:4,'ytick',0:2,'LineWidth',1,'FontSize',8);

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)');
axis([-1 5 0 6]);
set(gca,'xtick',-1:5,'ytick',0:6,'LineWidth',1,'FontSize',8);

%e
x=[1,-2,3];
nx=0:2;
h=[0,0,1,1,1,1];
nh=0:5;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 3 -3 4]);
set(gca,'xtick',-3:4,'ytick',-3:4,'LineWidth',1,'FontSize',8);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');
axis([-1 6 0 2]);
set(gca,'xtick',-1:6,'ytick',0:2,'LineWidth',1,'FontSize',8);

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)');
axis([-1 8 -2 4]);
set(gca,'xtick',-1:8,'ytick',-2:4,'LineWidth',1,'FontSize',8);

%f
x=[0,0,1,1,1,1];
nx=0:5;
h=[1,-2,3];
nh=-1:1;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 6 0 2]);
set(gca,'xtick',-1:6,'ytick',0:2,'LineWidth',1,'FontSize',8);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');
axis([-2 2 -3 4]);
set(gca,'xtick',-2:2,'ytick',-3:4,'LineWidth',1,'FontSize',8);

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)');
axis([-2 7 -2 4]);
set(gca,'xtick',-2:7,'ytick',-2:4,'LineWidth',1,'FontSize',8);

%g
x=[0,1,4,-3];
nx=0:3;
h=[1,0,-1,-1];
nh=0:3;

[y, ny] = ConvolucionDiscreta(x, nx, h, nh, 1);

figure('Color','w');
subplot(3, 1, 1);
stem(nx, x);
title('x(n)')
axis([-1 4 -4 5]);
set(gca,'xtick',-1:4,'LineWidth',1,'FontSize',8);

subplot(3, 1, 2);
stem(nh, h);
title('h(n)');
axis([-1 4 -2 2]);
set(gca,'xtick',-1:4,'ytick',-2:2,'LineWidth',1,'FontSize',8);

subplot(3, 1, 3);
stem(ny, y);
title('x(n)h(n-k)');
axis([-1 7 -6 5]);
% set(gca,'xtick',-2:7,'ytick',-2:4,'LineWidth',1,'FontSize',8);

% %h
% x=[2, 3, 5, 7];
% nx=-2:1;
% h=[1, 2, 3, 4];
% nh=-1:2;
% 
% %i
% x=[2, 3, 5, 7];
% nx=-2:1;
% h=[1, 2, 3, 4];
% nh=-1:2;
