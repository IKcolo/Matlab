clear all;clc
global c m k f w
c = 3;
m = 1;
k = 10;
f = 10;
w = 0.5;
tspan=[0:.001:30];
y0=[1;0];
[t,y]=ode45('forced',tspan,y0);
j = diff(y(:,2))./(diff(t));
plot(t,y,t(1:length(t)-1),j);
grid on
xlabel('time')
ylabel('Displacement')
title('Displacement,Velocity, and Position Vs Time')
legend('Displacement', 'Velocity','Acceleration')
hold on;