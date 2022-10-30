function [x,iter] = SOR(omega,A,b,x_initial,maxiter,tol)
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
b_norm = norm(b, 2);  % get the norm of b
iter = 0;  % initialize iter
% start iterating
for k = 1: maxiter
    % get y
    y = ((1 / omega) * D - L) \ resi;
    x = x + y;
    
    iter = iter + 1;
    
    % update the residual and check whether the solution is within tol
    resi = b - A * x;
    resi_norm = norm(resi, 2);
    if resi_norm <= b_norm * tol
        break 
    end
end

end