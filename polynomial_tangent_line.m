clc

fprintf('TANGENT LINE CALCULATION\n')
fprintf('==============================\n\n')

fprintf('Polynomial is in form ax^5 + bx^4 + cx^3 + dx^2 + ex + f\n')
a = input('Enter value of a: ');
b = input('Enter value of b: ');
c = input('Enter value of c: ');
d = input('Enter value of d: ');
e = input('Enter value of e: ');
f = input('Enter value of f: ');
tan_x = input('Enter value of x to calculate tangent line slope at: ');
x_rmin = input('Enter minimum value for X-axis: ');
x_rmax = input('Enter maximum value for X-axis: ');
interval = input('Enter step value to graph at (lower values result in a smoother graph; 0.1 is recommended): ');

fprintf('Calculating...\n')
x = [x_rmin : interval : x_rmax];
y = a*x.^5 + b*x.^4 + c*x.^3 + d*x.^2 + e*x + f;

plot(x, y)
grid on
hold on

% Calculate slope of tangent line
syms x

y = a*x^5 + b*x^4 + c*x^3 + d*x^2 + e*x + f
dy = diff(y, 1);
tan_slope = subs(dy, x, tan_x)
tan_intercept = -tan_slope * tan_x + subs(y, x, tan_x)

p = [tan_x, tan_intercept];
d = [1, tan_slope];
xl = [x_rmin : interval : x_rmax];
yl = tan_slope * xl + tan_intercept;

plot(xl, yl)