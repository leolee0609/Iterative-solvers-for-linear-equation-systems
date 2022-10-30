function [x,iter] = CG(A,b,x_initial,maxiter,tol)
x = x_initial;  % iterate over x
size_A = size(A);  % get the size of A
n = size_A(1);

r0 = b - A * x;  % initialize r
r = 0;
p = r0;
b_norm = abs(norm(b, 2));  % get the norm of b


iter = 0;  % initialize iter
% start iterating
for k = 0: maxiter - 1
    if k == 0
        r = r0; 
    end
    
    beta = 0;
    if k > 0
        beta = (r.' * r) / (r0.' * r0);
    end
    
    if k > 0
        p = r + beta * p; 
    end
    
    alpha = (r.' * r) / (p.' * A * p);
    x = x + alpha * p;
    r0 = r;
    r = r - alpha * A * p;
    
    iter = iter + 1;  % increment iter
    
    %  check whether the solution is within tol
    resi_norm = abs(norm(r, 2));
    if resi_norm <= b_norm * tol
        break
    end
end

end