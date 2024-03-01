format short;
clear all
clc

%%%Phase-1: Input Parameters
C = [2 3 4 7];  %%%Cost function
A = [2 3 -1 4; 1 -2 6 -7]; %%%LHS of the constraints 
b = [8; -3]; %%%RHS of the constraints 

%%%Phase-2: No. of constraints and Variables
m = size(A,1); %Total no. of basic solution 
n = size(A,2); %Pairs of Basic Solution 

%%%Phase-3: Compute nC_m BFS
nv = nchoosek(n,m);
t = nchoosek(1:n,m);

%%%Phase-4: Construct the Basic Solution
sol = [];   %%Default solution is zero 
if n>=m
    for i=1:nv
        y = zeros(n,1);
        x = A(:,t(i,:))\b;
        %%%Checking the feasibility condition 
        if all(x>=0 & x~=inf & x~=-inf)
            y(t(i,:))=x;
            sol = [sol y];
        end
    end 
else
    error('Equations is larger than the variables')
end

%%%Objective Function 
Z = C*sol;

%%%Finding the Optimal Value
[Zmax, Zind] = max(Z);
BFS = sol(:, Zind); %%%Optimal BFS Values 

%%%Print all the solutions
Opt_Val = [BFS' Zmax]; %%Index corresponding to the Max. Value
Optimal_BFS = array2table(Opt_Val); %%Print in Table 
Optimal_BFS.Properties.VariableNames(1:size(Optimal_BFS, 2)) = {'x1', 'x2', 'x3', 'x4', 'Value of Z'};


