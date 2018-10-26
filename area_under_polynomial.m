clear all
clc

fprintf('THE AREA PROBLEM\n')
fprintf('==============================\n\n')

fprintf('y = ax^5 + bx^4 + cx^3 + dx^2 + ex + f\n\n')
a = input('Enter value of a: '); % x^5
b = input('Enter value of b: '); % x^4
c = input('Enter value of c: '); % x^3
d = input('Enter value of d: '); % x^2
e = input('Enter value of e: '); % x
f = input('Enter value of f: '); % constant

syms x
y = a*x^5 + b*x^4 + c*x^3 + d*x^2 + e*x + f;
m = input('Enter left bound: x = ');
n = input('Enter right bound: x = ');

fprintf('Calculating area...\n')
y_int = int(y);
area = abs(subs(y_int, n) - subs(y_int, m))

fprintf('Graphing...\n')
x_range = 5;
interval = 0.5;
x = [-x_range : interval : x_range];
y_graph = a*x.^5 + b*x.^4 + c*x.^3 + d*x.^2 + e*x + f;

plot(x, y_graph)
grid on
hold on

line([m, m], [0, subs(y, m)])
line([n, n], [0, subs(y, n)])
line([m, n], [0, 0])