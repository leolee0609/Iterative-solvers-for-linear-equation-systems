function [x,iter] = Jacobi(A,b,x_initial,maxiter,tol)
x = x_initial;  % iterate over x
size_A = size(A);  % get the size of A
n = size_A(1);
D_inv = diag(1./diag(A));  % get the inverse of D

iter = 0  % initialize iter
resi = b - A * x;  % initialize the residual
b_norm = norm(b);  % get the norm of b
for k = 1: maxiter
    x = x + D_inv * resi;
    iter = iter + 1;  % increment iter
    
    % update the residual and check whether the solution is within tol
    resi = b - A * x;
    resi_norm = norm(resi);
    if resi_norm <= b_norm * tol
        break 
    end
end
end