clc

fprintf('EXPLICIT DIFFERENTIATION\n')
fprintf('==============================\n\n')

fprintf('Loading...\n')
syms x

fprintf('Enter a function:\n')
f = input('f(x) = ');
order = input('Enter the order derivative to calculate: ');
fprintf('\n')

df = diff(f, order);
pretty(df)