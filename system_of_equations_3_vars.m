clc

fprintf('SIMULTANEOUS EQUATIONS OF 3 VARIABLES\n')
fprintf('==============================\n\n')

x = 0;
y = 0;
z = 0;

fprintf('Equations are in the form:\n')
fprintf('a1x + a2y + a3z = a4\n')
fprintf('b1x + b2y + b3z = b4\n')
fprintf('c1x + c2y + c3z = c4\n')

a1 = input('Enter value of a1: ');
a2 = input('Enter value of a2: ');
a3 = input('Enter value of a3: ');
a4 = input('Enter value of a4: ');
b1 = input('Enter value of b1: ');
b2 = input('Enter value of b2: ');
b3 = input('Enter value of b3: ');
b4 = input('Enter value of b4: ');
c1 = input('Enter value of c1: ');
c2 = input('Enter value of c2: ');
c3 = input('Enter value of c3: ');
c4 = input('Enter value of c4: ');

fprintf([num2str(a1), 'x + ', num2str(a2), 'y + ', num2str(a3), 'z = ', num2str(a4), '\n'])
fprintf([num2str(b1), 'x + ', num2str(b2), 'y + ', num2str(b3), 'z = ', num2str(b4), '\n'])
fprintf([num2str(c1), 'x + ', num2str(c2), 'y + ', num2str(c3), 'z = ', num2str(c4), '\n'])

equations = [a1, a2, a3; b1, b2, b3; c1, c2, c3];
constants = [a4; b4; c4];
results = inv(equations) * constants;

x = results(1, 1)
y = results(2, 1)
z = results(3, 1)