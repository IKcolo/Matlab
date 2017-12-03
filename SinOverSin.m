N=3;
r=-0.5:.001:0.5;
f=(sin(pi*N.*r)).^6./(sin(pi*r)).^6;
s6 = (3^6)*cos(pi.*r).^12;
plot(r,f,r,s6)
legend('sin(Nx)^6/sin(x)^6','Ncos(pi*x)^12')
xlabel('q (1/length)')
ylabel('Intensity')
title('Comparison of Function and Approximation as Cosine')