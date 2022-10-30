function u0 = FormRHS(X)
size_X = size(X);
m = size_X(1);
% flatten X using k = (j - 1)m + i
u0 = zeros(m.^2, 1);  % initialize an empty u0
for i = 1: m
    for j = 1: m
        k = (j - 1) * m + i;
        u0(k) = X(i, j);
    end
    
end

end