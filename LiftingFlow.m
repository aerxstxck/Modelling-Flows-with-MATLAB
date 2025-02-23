clc; clear; close all;

[x, y] = meshgrid(linspace(-5, 5, 100));

U = 5; alpha = 0;
K = 5; 
Gamma = 50; 
xc = 0; yc = 0; 

[phi_uniform, psi_uniform] = UniformFlow(x, y, U, alpha);
[phi_doublet, psi_doublet] = Doublet(x, y, K, xc, yc);
[phi_vortex, psi_vortex] = Vortex(x, y, Gamma, xc, yc);

phi = phi_1 + phi_2 + phi_3;
psi = psi_1 + psi_2 + psi_3;

figure;
hold on;
contour(x, y, psi, 50, 'b');  
%contour(x, y, phi, 50, 'r');  
plot(xc, yc, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 8);
axis equal;
xlabel('X'); ylabel('Y');
title('Lifting Flow Over a Cylinder');
legend('Streamlines (\psi)', 'Cylinder Center');
hold off;
