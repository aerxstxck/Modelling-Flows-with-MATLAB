clc; clear; close all;

[x, y] = meshgrid(linspace(-5, 5, 50));

Q = 10;
xs = -2; ys = 0;
xd = 2;  yd = 0;

[phi_1, psi_1] = Source(x, y, Q, xs, ys);
[phi_2, psi_2] = Sink(x, y, Q, xd, yd);
phi = phi_1 + phi_2;
psi = psi_1 + psi_2;

figure;
hold on;
contour(x, y, psi, 50, 'b');  
contour(x, y, phi, 50, 'r');  
plot(xs, ys, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 8); 
plot(xd, yd, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8); 
axis equal;
xlabel('X'); ylabel('Y');
title('Source-Sink Flow: Streamlines (\psi) and Equipotential Lines (\phi)');
legend('Streamlines (\psi)', 'Equipotential Lines (\phi)', 'Source', 'Sink');
hold off;
