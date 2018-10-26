clc

fprintf('VOLUME OF A SOLID OF REVOLUTION AROUND HORIZONTAL LINES\n')
fprintf('==============================\n\n')

syms x

f = cos(x) % f(x)
g = x^2 % g(x)

disp('Bounds: ')
a = 0
b = 0.824

% Horizontal line to revolve around
y = 0*x + 1;

if y ~= g
    R = f - y;
    r = g - y;
elseif y == g
    R = f - g;
    r = 0;
elseif y == f
    R = g;
    r = 0;
end

disp('Volume: ')
V_exact = abs(pi * int(R^2 - r^2, x, a, b));
pretty(V_exact)
V = double(V_exact)

disp('Graphing...')
ezplot(f)
hold on
grid on
ezplot(g)
ezplot(y)

f1 = -f + 2*y;
g1 = -g + 2*y;
ezplot(f1)
ezplot(g1)
axis([a b double(subs(g, a)) 2*double(y)])
hold on

xt = @(t) 0;
yt = @(t) 1;
zt = @(t) cos(t);
ezplot3(xt,yt,zt)