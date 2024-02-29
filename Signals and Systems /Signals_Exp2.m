clc
clear all
%unit step continous
t=-5:0.01:5;
p=zeros(size(t));
p(t>2)=1;
subplot(5,2,1);
plot(t,p,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Shifted Continuous Unit Step Signal by 2s');

%Discrete unit step
t=-5:5;
p=zeros(size(t));
p(t>=3)=1;
subplot(5,2,2);
stem(t,p,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Shifted Discrete Unit Step Signal by 3s');

%Discrete unit impulse
t=-5:5;
p=zeros(size(t));
p(t==3)=1;
subplot(5,2,3);
stem(t,p,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Shifted Discrete Unit Impulse signal by 3s');

%continous Ramp function 
t=-5:0.001:5;
y=(t>=0).*t;
subplot(5,2,4);
plot(t,y,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Continous Ramp signal');

%Discrete Ramp function
t=-5:5;
y=(t>=0).*t;
subplot(5,2,5);
stem(t,y,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Discrete Ramp signal');

%unit continous Ramp function 
t=-1:0.001:1;
y=(t>=0).*t;
subplot(5,2,6);
plot(t,y,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Continous Unit Ramp signal');



%Continous Rectangular signal
wid=2;
t=-5:0.01:5;
x=zeros(size(t));
x(t>=-wid/2 & t<=wid/2)=1;
subplot(5,2,7);
plot(t,x,'k','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('Continous Rectangular signal');

%Discrete Rectangular signal
wid=2;
t=-5:1:5;
x=zeros(size(t));
x(t>=-wid/2 & t<=wid/2)=1;
subplot(5,2,8);
stem(t,x,'k');
xlabel('time');
ylabel('amplitude');
title('Discrete Rectangular signal');