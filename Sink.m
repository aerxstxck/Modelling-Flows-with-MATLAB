function [phi, psi] = Sink(x, y, Q, xs, ys)
    [phi, psi] = Source(x, y, -Q, xs, ys); % Call Source with -Q
end
