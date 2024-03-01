clc
clear
x=[1,2];
h=[1 2 4];
subplot(4,1,1);
stem(x,'linewidth',2);
xlim([-1,3]);
xlabel('n');
ylabel('x[n]');
title('x(n)')


subplot(4,1,2);

stem(h,'linewidth',2);
xlim([-1,4]);
xlabel('n');
ylabel('h[n]');
title('h(n)')

r=conv(x,h)
subplot(4,1,3);
stem(r,'linewidth',2);
xlim([-1,5]);
xlabel('n');
ylabel('x[n]*h[n]');
title('convolution using inbuilt command  ');
                                                                             
l=length(x);
m=length(h);
x1=[x,zeros(1,l+m-1)];
h1=[h,zeros(1,l+m-1)];
y=zeros(1,l+m-1);
for i=1:l+m-1
    sum=0;
    for j=1:i
        sum=sum+(x1(j)*h1(i-j+1));
    end
    y(i)=sum;
end
subplot(4,1,4)
stem(y,'linewidth',2)
xlim([-1,5]);
xlabel('n')

ylabel('y[n]=h[n]*x[n]')
title('without convolution function ')