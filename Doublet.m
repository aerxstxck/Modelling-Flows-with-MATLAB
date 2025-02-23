function [phi, psi] = Doublet(x, y, K, xc, yc)
    r2 = (x - xc).^2 + (y - yc).^2;
    phi = (K * (x - xc)) ./ r2;
    psi = (K * (y - yc)) ./ r2;
end
