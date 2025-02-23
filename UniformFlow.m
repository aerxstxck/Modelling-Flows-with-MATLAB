function [phi, psi] = UniformFlow(x, y, U, alpha)
    phi = U * (x * cos(alpha) + y * sin(alpha));
    psi = U * (y * cos(alpha) - x * sin(alpha));
end
