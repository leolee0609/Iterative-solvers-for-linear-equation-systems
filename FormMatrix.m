function A = FormMatrix(u, alpha)

size_u = size(u);  % get the size of u
n = size_u(1);  % get the n
m = sqrt(n);
% store the coefficients
beta = 10.^(-6);
h = 1 / (m + 1);  % stores the cell size

% initialize the sparse matrix
A = sparse([], [], [], m.^2, m.^2);

% construct A as a sparse matrix
for i = 1: m
    for j = 1: m
        k0 = (j - 1) * m + i;  % k for ui, j
        k1 = (j - 1 - 1) * m + i;  % k for ui, j - 1
        k2 = (j + 1 - 1) * m + i;  % k for ui, j + 1
        k3 = (j - 1) * m + i - 1;  % k for ui - 1, j
        k4 = (j - 1) * m + i + 1;  % k for ui + 1, j       
        k5 = (j + 1 - 1) * m + i - 1;  % k for ui - 1, j + 1
        k6 = (j + 1 - 1) * m + i + 1;  % k for ui + 1, j + 1
        k7 = (j - 1 - 1) * m + i - 1;  % k for ui - 1, j - 1
        k8 = (j - 1 - 1) * m + i + 1;  % k for ui + 1, j - 1
        

        
        % store values of uk
        uk0 = u(k0);
        uk1 = 0;
        uk2 = 0;
        uk3 = 0;
        uk4 = 0;
        uk5 = 0;
        uk6 = 0;
        uk7 = 0;
        uk8 = 0;
        
        % implement the boundary conditions
        if j - 1 > 0
            uk1 = u(k1); 
        end
        
        if j + 1 < m + 1
            uk2 = u(k2);
        end
        
        if i - 1 > 0
            uk3 = u(k3); 
        end
        
        if i + 1 < m + 1
            uk4 = u(k4);
        end
        
        if i - 1 > 0 && j + 1 < m + 1
            uk5 = u(k5); 
        end
        
        if i + 1 < m + 1 && j + 1 < m + 1
            uk6 = u(k6);
        end
        
        if i - 1 > 0 && j - 1 > 0
            uk7 = u(k7); 
        end
        
        if i + 1 < m + 1 && j - 1 > 0
            uk8 = u(k8); 
        end
        
        % compute the required coefficients
        AW = (-alpha / (h.^2)) * (1 / (2 * sqrt(((uk0 - uk3) / h).^2 +...
            ((uk0 - uk1) / h).^2 + beta)) + 1 /...
            (2 * sqrt(((uk0 - uk3) / h).^2 + ...
            ((uk5 - uk3) / h).^2 + beta)));
        
        AE = (-alpha / (h.^2)) * (1 / (2 * sqrt(((uk4 - uk0) / h).^2 +...
            ((uk4 - uk8) / h).^2 + beta)) + 1 /...
            (2 * sqrt(((uk4 - uk0) / h).^2 + ...
            ((uk2 - uk0) / h).^2 + beta)));
        
        AS = (-alpha / (h.^2)) * (1 / (2 * sqrt(((uk0 - uk3) / h).^2 +...
            ((uk0 - uk1) / h).^2 + beta)) + 1 /...
            (2 * sqrt(((uk8 - uk1) / h).^2 + ...
            ((uk0 - uk1) / h).^2 + beta)));
        
        AN = (-alpha / (h.^2)) * (1 / (2 * sqrt(((uk4 - uk0) / h).^2 +...
            ((uk2 - uk0) / h).^2 + beta)) + 1 /...
            (2 * sqrt(((uk2 - uk5) / h).^2 + ...
            ((uk2 - uk0) / h).^2 + beta)));
        
        AC = -(AW + AE + AS + AN) + 1;
        
        A(k0, k0) = AC;
        
        if j - 1 > 0
             A(k0, k1) = AS;
        end
        
        if i - 1 > 0
             A(k0, k3) = AW;
        end
        
        if j + 1 < m + 1
             A(k0, k2) = AN;
        end
        
        if i + 1 < m + 1
             A(k0, k4) = AE;
        end
    end
end

end
