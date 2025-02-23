clc; clear; close all;

[x, y] = meshgrid(linspace(-25, 25, 50));

U1 = 5; alpha1 = 0; 
K = 500; 

[phi_uniform, psi_uniform] = UniformFlow(x, y, U1, alpha1);
[phi_doublet, psi_doublet] = Doublet(x, y, K, 0, 0);

phi_total = phi_uniform + phi_doublet;
psi_total = psi_uniform + psi_doublet;

figure;
hold on;
contour(x, y, psi_total, 50, 'b');  
contour(x, y, phi_total, 50, 'r');  
plot(0, 0, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 8); 
axis equal;
xlabel('X'); ylabel('Y');
title('Combined Uniform Flows and Doublet');
legend('Streamlines (\psi)', 'Equipotential Lines (\phi)', 'Doublet Center');
hold off;
