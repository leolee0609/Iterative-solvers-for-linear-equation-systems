%  get the optimal omega
%  denoise 16×16, 32×32, and 64×64 images, omega = 1.55
m = 16;
while m <= 64
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.55;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.65
m = 16;
while m <= 64
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.65;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.85
m = 16;
while m <= 64
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.85;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.95
m = 16;
while m <= 64
    tic  % record for optimal omega
    
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.95;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    m = m * 2;
    
    
    toc
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.94
m = 16;
while m <= 64
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.94;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.93
m = 16;
while m <= 64
    tic  % record for optimal omega
    
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.93;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
    
    toc
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.92
m = 16;
while m <= 64
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.92;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
end

%  denoise 16×16, 32×32, and 64×64 images, omega = 1.91
m = 16;
while m <= 64
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using SOR
    overall_iter = 0;
    u = u0;
    omega = 1.91;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = SOR(omega, A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
end

%  denoise 16×16, 32×32, and 64×64 images usintg Jacobi
m = 16;
while m <= 64
    tic  % record for Jacobi
    
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using Jacobi
    overall_iter = 0;
    u = u0;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = Jacobi(A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
    
    toc
end

%  denoise 16×16, 32×32, and 64×64 images usintg GS
m = 16;
while m <= 64
    tic  % record for GS
    
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using GS
    overall_iter = 0;
    u = u0;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = GS(A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    
    m = m * 2;
    
    toc
end

%  denoise 16×16, 32×32, and 64×64 images usintg CG
m = 16;
while m <= 64
    tic  % record for CG
    
    maxiter = 20000;
    tol = 10.^(-2);
    % decide alpha
    alpha = 0;  
    if m == 16
        alpha = 6.4 * 10.^(-2);
    end
    
    if m == 32
        alpha = 3.2 * 10.^(-2);
    end
    
    if m == 64
        alpha = 1.6 * 10.^(-2); 
    end
    
    if m == 128
        alpha = 8 * 10.^(-3); 
    end
    
    % generate the image
    [u_exact, z] = set_image(m);
    u0 = FormRHS(z);  % Given noisy image u0
    
    % start denoising
    % using CG
    overall_iter = 0;
    u = u0;
    for k = 0: 8
        A = FormMatrix(u, alpha);
        [u_new, iter] = CG(A, u0, u, maxiter,tol);
        u = u_new;
        overall_iter = overall_iter + iter;
    end
    disp(overall_iter);
     
    
    % Convert the output vector back to a matrix
    u = reshape(u, m, m);
    imagesc(u); 
    colormap(gray);
    m = m * 2;
    
    toc
end