%Step-1:
C = [2 3 7];
A = [2 3 -1 4; 1 -2 6 -7];
B = [8;-3];

%Step-2:
n = size(A,2);
m = size(A,1);

%Step-3:
S_no = nchoosek(n,m); %nchoosek is an inbuilt function
t = nchoosek(1:n,m);

%Step-4 & 5:
sol = [];
if (n>m)
    for (i = 1:S_no)
        y = zeros(n,1);
        x = A(:, t(i,:))\B; %either "inv(A),B" or "A\B" 
        if all(x > 0 & x ~= inf & x ~= -inf)
            y(t(i,:)) = x;
            sol = [sol y];
        end
    end
else
    error('Number of variables are less than the number of constraints.');
end

%Step-6:
% Z = C*sol;
% [Zmax, Z_index] = mov(Z);
% BFS = sol(:, Z_index);
% 
% %Step-7
% OptVal = [BFS' Zmax];
% Optimal_BFS = array2table(Optval);
% Optimal_BFS.Properties.VariableNames(1: size(Optimal_BFS,2)) = {'x1', 'x2' ,'x3', 'x4', 'Value of Z'};




