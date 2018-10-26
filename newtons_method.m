clear all
clc

syms x

y = cos(x) - x;
i = 3;
n = zeros(1, 1);
n(1, 1) = 1; % Initial guess

dy = diff(y);

for i = 2:i
    yi = subs(n(i - 1, 1), y);
    dyi = subs(n(i - 1, 1), dy);
    yi
    dyi
    n(i, 1) = n(i - 1, 1) - yi / dyi
end

n(i, 1)