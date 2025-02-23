function [phi, psi] = Vortex(x, y, Gamma, xv, yv)
    r = sqrt((x - xv).^2 + (y - yv).^2);
    theta = atan2(y - yv, x - xv);

    % Avoid log singularity
    r(r < 0.1) = 0.1;

    % Potential and Stream function
    phi = -(Gamma / (2 * pi)) * theta;
    psi = (Gamma / (2 * pi)) * log(r);
end

