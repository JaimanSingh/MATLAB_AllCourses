clc
clear all

n = -5:15;
u = (n >= 0);
t = (n >= 6);

x = u - t;
h = x;

% Compute the linear convolution using conv function
y = conv(x, h);

% Plotting figure

% x(n)
subplot(3,1,1);
stem(n, x, 'k', 'linewidth', 1);
title('Input Signal x(n)');
xlabel('n');
ylabel('x(n)');

% h(n)
subplot(3,1,2);
stem(n, h, 'k', 'linewidth', 1);
title('Impulse Response h(n)');
xlabel('n');
ylabel('h(n)');

% Convolution
subplot(3,1,3);
stem(-10:30,y, 'k', 'linewidth', 1);
 xlim([-5,15]);
title('Output Signal y(n)');
xlabel('n');
ylabel('y(n)');