clc

fprintf('CARTESIAN AND POLAR EQUATION CONVERSION\n')
fprintf('==============================\n\n')

fprintf('Loading...\n')
syms x y r a

fprintf('Enter your equation like this: Left Side == Right Side\n')
fprintf('For example, to enter 2x + 3y = 6, type: 2*x + 3*y == 6\n')

eq = input('Enter an equation in Cartesian form: ');
x = r * cos(a);
y = r * sin(a);
eq = subs(subs(eq, x), y);
r = solve(eq, r);
pretty(r)