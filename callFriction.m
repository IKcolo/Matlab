clear all;clc
global c m k f w
c = 0;
m = 20;
k = 1000;
f = 20;
w = 0.5;
tspan=[0 10];
y0=[1;0];
[t,y]=ode45('friction',tspan,y0);
plot(t,y);
[t1,y1]=ode45('unforced',tspan,y0);
plot(t1,y1);
grid on
xlabel('time')
ylabel('Displacement')
title('Displacement,Velocity Vs Time')
legend('Displacement', 'Velocity')
hold on;