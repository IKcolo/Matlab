function yp = unforced1(t,y)
global c m k
yp = [y(2);(-((c./m).*y(2))-((k./m).*y(1)))]; 