clear all;clc
global c m k
c = 1;
m = 1;
k = 100;
tspan=[0:0.01:4];
y0=[0.02;0];
[t,y]=ode45('unforced1',tspan,y0);
c = 1;
m = 10;
k = 100;
[t2,y2]=ode45('unforced1',tspan,y0);
plot(t,y(:,1),t2,y2(:,1));
grid on
xlabel('time')
ylabel('Displacement')
title('Displacement Vs Time')
hold on; 
