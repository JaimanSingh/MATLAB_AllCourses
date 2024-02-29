%PENDING!! 


%Function to draw a circle of radius 'r'
function[x,y] = circlefn(r)
theta = linspace(0,2*pi,100);
x = r*cos(theta);
y = r*sin(theta);
plot(x,y);
axis('equal');
title(['Circle of radius r=', num2str(r)]);

%Convert temperature from celcius and farenheit temperature
fuction temptable = ctof (tinitial, tfinal);
F = (9/5)*C+32;
temptable = [C F];
end
