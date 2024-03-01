%Write a program to decompose x(n)
n=-20:1:20;
a=[zeros(1,20) ones(1,21)];
subplot(3,2,1);
stem(n,a,'black','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('u(n)');

n=-20:1:20;
b=[zeros(1,30) ones(1,11)];
subplot(3,2,2);
stem(n,b,'black','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('u(n-10)');

y=a-b;
subplot(3,2,3);
stem(n,y,'black','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('x(n)');

m=fliplr(y);
subplot(3,2,4);
stem(n,m,'black','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('x(-n)');

even=(y+m)/2;
subplot(3,2,5);
stem(n,even,'black','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('even');

odd=(y-m)/2;
subplot(3,2,6);
stem(n,odd,'black','linewidth',2);
xlabel('time');
ylabel('amplitude');
title('odd');