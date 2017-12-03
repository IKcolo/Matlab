tspan=[0 10];
y0=[1.57;0]
[t,y]=ode45('pendulum1',tspan,y0);
plot(t,y(:,1));grid
xlabel('Time')
ylabel('Theta')
title('Theta Vs Time')
hold on; 