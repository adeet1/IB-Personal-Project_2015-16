clc

fprintf('SIMULTANEOUS EQUATIONS OF 4 VARIABLES\n')
fprintf('==============================\n\n')

x = 0;
y = 0;
z = 0;
w = 0;

fprintf('Equations are in the form:\n')
fprintf('a1x + a2y + a3z + a4w = a5\n')
fprintf('b1x + b2y + b3z + b4w = b5\n')
fprintf('c1x + c2y + c3z + c4w = c5\n')
fprintf('d1x + d2y + d3z + d4w = d5\n')

a1 = input('Enter value of a1: ');
a2 = input('Enter value of a2: ');
a3 = input('Enter value of a3: ');
a4 = input('Enter value of a4: ');
a5 = input('Enter value of a5: ');
b1 = input('Enter value of b1: ');
b2 = input('Enter value of b2: ');
b3 = input('Enter value of b3: ');
b4 = input('Enter value of b4: ');
b5 = input('Enter value of b5: ');
c1 = input('Enter value of c1: ');
c2 = input('Enter value of c2: ');
c3 = input('Enter value of c3: ');
c4 = input('Enter value of c4: ');
c5 = input('Enter value of c5: ');
d1 = input('Enter value of d1: ');
d2 = input('Enter value of d2: ');
d3 = input('Enter value of d3: ');
d4 = input('Enter value of d4: ');
d5 = input('Enter value of d5: ');

fprintf([num2str(a1), 'x + ', num2str(a2), 'y + ', num2str(a3), 'z + ', num2str(a4), 'w = ', num2str(a5), '\n'])
fprintf([num2str(b1), 'x + ', num2str(b2), 'y + ', num2str(b3), 'z + ', num2str(b4), 'w = ', num2str(b5), '\n'])
fprintf([num2str(c1), 'x + ', num2str(c2), 'y + ', num2str(c3), 'z + ', num2str(c4), 'w = ', num2str(c5), '\n'])
fprintf([num2str(d1), 'x + ', num2str(d2), 'y + ', num2str(d3), 'z + ', num2str(d4), 'w = ', num2str(d5), '\n'])

equations = [a1, a2, a3, a4; b1, b2, b3, b4; c1, c2, c3, c4; d1, d2, d3, d4];
constants = [a5; b5; c5; d5];
results = inv(equations) * constants;

x = results(1, 1)
y = results(2, 1)
z = results(3, 1)
w = results(4, 1)