%%Undamped %%
wnt = 0:0.001:4*3.14;
figure(1)
y=sin(wnt);
plot(wnt,y)
xlabel('\omega_n t')
ylabel('x \omega_n/v_0') 
title('Undamped System (\zeta = 0)')
xlim([0 4*pi])
%%Critially Damped%%
figure(2)
plot(wnt,wnt.*exp(-wnt))
xlabel('\omega_n t')
ylabel('x \omega_n/v_0') 
title('Critically Damped System (\zeta = 1)')
xlim([0 4*pi])
%%Over Damped%%
z = 2;
y = 0.577.*exp(-2*wnt).*sinh(1.732.*wnt); 
figure(3)
plot(wnt,y)
xlabel('\omega_n t')
ylabel('x \omega_n/v_0') 
title('Overdamped System (\zeta = 2)')
xlim([0 4*pi])
%%Under Damped%%
wnt = 0:0.001:9*3.14;
z = [0.01,0.05,0.1,0.5];
figure(4)
for i = 1:length(z)
f = (exp(-z(i).*wnt)).*(1/sqrt(1-z(i)^2)).*sin(sqrt(1-z(i)^2).*wnt);
plot(wnt,f)
hold on
end
xlabel('\omega_n t')
ylabel('x \omega_n/v_0') 
title('Underdamped Systems (\zeta = 0.01,0.05,0.1,0.5)')
legend('\zeta = 0.01','\zeta = 0.05','\zeta = 0.1','\zeta = 0.5')
xlim([0 9*pi])