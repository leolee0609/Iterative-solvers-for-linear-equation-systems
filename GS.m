function [x,iter] = GS(A,b,x_initial,maxiter,tol)
x = x_initial;  % iterate over x
size_A = size(A);  % get the size of A
n = size_A(1);
D = sparse([], [], [], n, n);  % get  matrix D
for i = 1: n
    D(i, i) = A(i, i);
end

% get L of A
L = sparse([], [], [], n, n);  % initialize L
for i = 2: n
    for j = 1: i - 1
        L(i, j) = -A(i, j); 
    end
end

resi = b - A * x;  % initialize r
b_norm = norm(b);  % get the norm of b
iter = 0;  % initialize iter
% start iterating
for k = 1: maxiter
    % get y
    y = (D - L) \ resi;
    x = x + y;
    
    iter = iter + 1;
    
    % update the residual and check whether the solution is within tol
    resi = b - A * x;
    resi_norm = norm(resi);
    if resi_norm <= b_norm * tol
        break 
    end
end

end