function yp = unforced2(t,y)
global wn zeta
yp = [y(2);(-((2*zeta*wn)*y(2))-((wn^2)*y(1)))]; 