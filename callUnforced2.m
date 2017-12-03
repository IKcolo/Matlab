clear all;clc
global wn zeta
zeta = 0;
wn = 1;
tspan=[0:0.01:6*pi];
y0=[0;1];
[t,y]=ode45('unforced2',tspan,y0);
j = diff(y)./(diff(t));
plot(t,y,t(1:length(t)-1),j);
grid on
xlabel('time')
ylabel('Displacement')
title('Displacement,Velocity, and Position Vs Time')
legend('Displacement', 'Velocity','Acceleration')
hold on;