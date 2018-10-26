clc

fprintf('EQUATION OF A LINE BASED ON POINTS\n')
fprintf('==============================\n\n')

x1 = input('Enter x-coordinate of first point: ');
y1 = input('Enter y-coordinate of first point: ');
x2 = input('Enter x-coordinate of second point: ');
y2 = input('Enter y-coordinate of second point: ');

m = (y2 - y1) / (x2 - x1)

%{
Calculation steps for the y-intercept:  

y = mx + b

Substitute (x1, y1):
y1 = mx1 + b
b = y1 - mx1
%}

b = y1 - m * x1