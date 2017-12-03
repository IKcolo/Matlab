function yp = friction(t,y)
global c m k f w
yp = [y(2);((-f/m)*sign(y(2))-((k/m)*y(1)))];