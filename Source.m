function [phi, psi] = Source(x, y, Q, xs, ys)
    r = sqrt((x - xs).^2 + (y - ys).^2);
    theta = atan2(y - ys, x - xs);

    r(r < 0.1) = 0.1; 

    phi = (Q / (2 * pi)) * log(r);
    psi = (Q / (2 * pi)) * theta;
end
