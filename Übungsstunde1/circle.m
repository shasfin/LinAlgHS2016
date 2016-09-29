% Student: Alexandra Maximova
% Lineare Algebra HS2016
function circle(r, pos)

phi = linspace(0,2*pi,100);
x = r*cos(phi)+pos(1);
y = r*sin(phi) + pos(2);

plot(x,y)
end