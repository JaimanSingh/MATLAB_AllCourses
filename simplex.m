clc
clear all 

 c=[1 2 3 0 0];
 b=[20;30]; 
 A= [ 1 2 0 1 0; 3 0 4 0 1];

 c = [4 10 0 0 0];
 A = [2 1 1 0 0; 2 5 0 1 0;2 3 0 0 1];
 b = [50;100;90];
 
 c = [5 3 0 0 0];
 A = [1 1 1 0 0;5 2 0 1 0; 3 8 0 0 1];
 b = [2;10;12];
 
 
 M = 10^6;
 c = [3 2 1 0 0 -M];
 A = [4 1 1 0 0 1; 2 3 1 1 0 0; 1 2 1 0 1 0];
 b = [30;60;40];
 bv_index = [6 4 5];
m = size(A,1);  %no. of constraints
n = size(A,2);  %no. of variables 
bv_index= n-m+1:n 
Y = [A b]
for s=1:50 
cb=c(bv_index)
Xb=Y(:,end)
z=cb*Xb
zjcj=cb*Y(:,1:n)-c

if zjcj>=0
    disp('optimal sol achieved');
    Xb
    basic_variables = bv_index
    fprintf("Optimal objective function value = %f",z);
    break
else
    [a,EV]= min(zjcj)
    if Y(:,EV)<0
        disp("Unbounded solution")
    else
        for j=1:m
            if Y(j,EV)>0
                ratio(j)=Xb(j)/Y(j,EV)
            else
                ratio(j)= 1000
            end
        end
    end
    [k,LV]=min(ratio)
    bv_index(LV)=EV
    
end
 pivot = Y(LV,EV)
 Y(LV,:)=Y(LV,:)./pivot
for i = 1:m
     if i~=LV
 Y(i,:)=Y(i,:)-Y(i,EV)*Y(LV,:)
     end
end
end
