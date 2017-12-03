w=pi;
t = 0:.0001:pi;
i = [1,2,3,5,25];
wn = (sqrt(20));
figure(1)
for n = 1:length(i)
    z = i(n);
    f = 0;
    while z > 0;
        f = (0.06/(pi*(z)))*sin((z)*w*t)+f;
        z = z-1;
    end 
        hold on
        plot(t,f)
        hold off
end
xlabel('Time (s)')
ylabel('Amplitude (m)')
title('Forcing Function')
xlim([0 pi])
legend('i = 1','i = 3','i = 3','i = 5','i = 25','Location','southeast')
figure(2)
for n = 1:length(i)
    z = i(n);
    f = 0;
    while z > 0;
        f = (0.06*wn^2/(pi*(z)*(wn^2-(((z))^2)*w^2)))*sin((z)*w*t)+f;
        z = z-1;
    end 
        hold on
        plot(t,f)
        hold off
end
xlabel('Time (s)')
ylabel('Amplitude (m)')
title('Response')
xlim([0 pi])
legend('i = 1','i = 3','i = 3','i = 5','i = 25','Location','southeast')