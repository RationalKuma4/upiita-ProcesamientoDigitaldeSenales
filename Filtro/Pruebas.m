% t=0:pi/100:2*pi;
% mt=@(t) 5*cos(200*pi*t)+2*cos(400*pi*t)+cos(800*pi*t);
% mx=@(t) 3*sin(100*pi*t);
% plot(t, mx(t));
% 
%  %% Time specifications:
%    Fs = 8000;                   % samples per second
%    dt = 1/Fs;                   % seconds per sample
%    StopTime = 0.25;             % seconds
%    t = (0:dt:StopTime-dt)';     % seconds
%    %% Sine wave:
%    Fc = 60;                     % hertz
%    x = cos(2*pi*Fc*t);
%    % Plot the signal versus time:
%    figure;
%    plot(t,x);
%    xlabel('time (in seconds)');
%    title('Signal versus Time');


Fs = 9000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds

fm=1;
Tm=1/fm;
mt=@(t) 5*cos(2*pi*t*100)+2*cos(2*pi*fm*t*200)+cos(2*pi*fm*t*400);
figure(1);
plot(t, mt(t));
axis([0 .05 -10 10]);

% Tc=800;
% fc=1/Tc;
% ct=@(t) cos(2*pi*t*fc*1800);
% 
% % Grafica
% t=-15:0.01:15;
% figure(1);
% subplot(2,1,1);
% plot(t, mt(t));
% grid on;
% subplot(2,1,2);
% plot(t, ct(t));
% axis([-2 2 -1.5 1.5]);
% grid on;