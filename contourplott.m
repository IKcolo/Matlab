f=1.0e6;
n=3; 
t=linspace(0,f,100);
phi=linspace(-pi,pi,100);
y=15*(cos(2*pi*t+phi));
plot3(t,phi,y);
figure(2)
[T Phi]=meshgrid(t,phi);
Y=15*(cos(2*pi*f*T));
surf(T,Phi,Y);