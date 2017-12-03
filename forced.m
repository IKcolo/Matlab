function yp = forced(t,y)
global c m k f w
yp = [y(2);(((f/m)*sin(w*t))-((c/m)*y(2))-((k/m)*y(1)))]; 