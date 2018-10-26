clc

fprintf('GRAPHS\n')
fprintf('==============================\n\n')

fprintf('Loading...\n')

syms x
y = input('Enter a function: f(x) = ');
fprintf('Graphing...\n')
ezplot(y)