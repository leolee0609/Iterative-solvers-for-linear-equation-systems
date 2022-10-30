function [u_exact,z]=set_image(n)

%
% Set up 2D image for image denoising.
%
nsq = n*n;
h = 1/(n+1);

% n_s_ratio is the noise_to_signal ratio which controls the size of
% the noise. You may increase or decrease it.
n_s_ratio = 1.0;
    
%  Evaluate exact solution at point P = [x,y].
xvec = [h:h:1-h];
yvec = [h:h:1-h];
[x,y] = meshgrid(xvec,yvec);
r1 = sqrt((x - .5).^2 +(y - .5).^2) ;
r2 = sqrt((x-.5).^2/2 + (y-.5).^2);
u_exact = -.5*(r1<.2) + (r2<.3);
    
%  Add random noise to data.
randn('seed',0);
stddev = norm(u_exact,'fro') * n_s_ratio / sqrt(nsq);
z = u_exact + stddev * randn(n,n);
end
