t=-10:0.001:10;
a=zeros(size(t));


%u(t-1)
a(t>=1)=1;
subplot(2,2,1)
plot(t,a,'k','linewidth',2)
xlabel('t')
ylabel('amplitude')
title('u(t-1)')

axis([-2 2 -1 2]);

%u(2t+1)
m=zeros(size(t));
m(t>=(-0.5))=1;
subplot(2,2,2)
plot(t,m,'k','linewidth',2)
xlabel('t')
ylabel('amplitude')
title('u(2t+1)')
axis([-1 1 -1 2]);

%r(t-1)
r=zeros(size(t));
r=(t-1).*(t>=1);
subplot(2,2,3)
plot(t,r,'k','linewidth',2)
xlabel('t')
ylabel('amplitude')
title('r(t-1)')
axis([-1 2 -1 2]);

s=sin(t);
subplot(2,2,4)
plot(t,s,'k','linewidth',2)
xlabel('t')
ylabel('amplitude')
title('sinc(t)')
axis([-10 10 -0.4 1.2]);