c1=@(x1,x2) x1+x2-5;
c2=@(x1,x2) 3*x1+2*x2-12;
c3=@(x1,x2) 0.475*x1+3*x2-60;
z=@(x1,x2) 6*x1+5*x2; % Objective function
A = [1 1; 3 2; 0.475 3];
B = [5;12;60]
 %PLOTTING GRAPH
X1=0:1:max(B)+100;
for i= 1:3
    X2=(B(i)-A(i,1).*X1)./A(i,2);
    X2=max(0,X2);
    plot(X1,X2)
    hold on
end
%FIND POINT OF INTERSECTION
sol=[];
for i=1:length(B)
A1=A(i,:);
B1=B(i,:);
for j=i+1:length(B)
    A2=A(j,:);
    B2=B(j,:);
    A3=[A1;A2];
    B3=[B1;B2];
    X=inv(A3)*B3;
    sol=[sol,X]
end
end
%FIND THE FEASIBLE REGION
FP=[];
Z=[];
for i=1:length(sol)
    PT1=sol(1,i); 
    PT2=sol(2,i); 
if (c1(PT1,PT2)<= 0  && c2(PT1,PT2)<= 0 && c3(PT1,PT2)<= 0)% && c4(PT1,PT2)<=0)
    FP =[FP sol(:,i)];
    plot(PT1,PT2,'*r',"markerSize",10);
      cost=z(PT1,PT2);
      Z=[Z cost];
end
end
FP=[];
Z=[];
[optimal_value,index]= max(Z);
output_variables = ["x1","x2", "optimalZ"];
final_ans  = [FP(:,index)' optimal_value];