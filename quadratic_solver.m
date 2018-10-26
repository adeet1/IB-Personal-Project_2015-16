clc

fprintf('QUADRATIC EQUATION SOLVER\n')
fprintf('==============================\n\n')

fprintf('ax^2 + bx + c = 0\n')
a = input('a = ');
b = input('b = ');
c = input('c = ');

equ = [a, b, c]
disc = equ(1, 2) ^ 2 - 4 * equ(1, 1) * equ(1, 3);

Solution1 = (-equ(1, 2) + sqrt(disc)) / (2 * equ(1, 1))
Solution2 = (-equ(1, 2) - sqrt(disc)) / (2 * equ(1, 1))