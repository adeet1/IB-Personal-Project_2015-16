clc

fprintf('SIMULTANEOUS EQUATIONS OF 2 VARIABLES\n')
fprintf('==============================\n\n')

x = 0;
y = 0;

fprintf('Equations are in the form:\n')
fprintf('a1x + a2y = a3\n')
fprintf('b1x + b2y = b3\n')

a1 = input('Enter value of a1: ');
a2 = input('Enter value of a2: ');
a3 = input('Enter value of a3: ');
b1 = input('Enter value of b1: ');
b2 = input('Enter value of b2: ');
b3 = input('Enter value of b3: ');

equations = [a1, a2; b1, b2];
constants = [a3; b3];
results = inv(equations) * constants;

x = results(1, 1)
y = results(2, 1)