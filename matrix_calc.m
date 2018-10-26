clc

fprintf('MATRIX OPERATIONS\n')
fprintf('==============================\n\n')

fprintf('Operator Help:\n')
fprintf('+: Adds the matrices A and B input by the user.\n')
fprintf('-: Subtracts the matrices A and B input by the user.\n')
fprintf('*: Multiplies the matrices A and B input by the user.\n')
fprintf('INV: Calculates the inverse matrices of A and B.\n')
fprintf('INV+: Adds the inverses of the matrices A and B.\n')
fprintf('INV-: Subtracts the inverses of the matrices A and B.\n')
fprintf('INV*: Multiplies the inverses of the matrices A and B.\n')
fprintf('SCAL: Multiplies matrix A by a scalar and then matrix B by another scalar.\n\n')

rowsA = input('Enter number of rows in matrix A: ');
colsA = input('Enter number of columns in matrix A: ');
rowsB = input('Enter number of rows in matrix B: ');
colsB = input('Enter number of columns in matrix B: ');

A = zeros(rowsA, colsA);
B = zeros(rowsB, colsB);
clc

for i = 1:rowsA
    for j = 1:colsA
        A
        A(i, j) = input(['Enter component (', num2str(i), ', ', num2str(j), ') for matrix A: '])
        clc
    end
end

for i = 1:rowsB
    for j = 1:colsB
        B
        B(i, j) = input(['Enter component (', num2str(i), ', ', num2str(j), ') for matrix B: '])
        clc
    end
end

oper = input('Enter operator (+, -, *, inv, inv+, inv-, inv*, scal): ', 's');
if strcmp(oper, '+')
    A + B
elseif strcmp(oper, '-')
    A - B
elseif strcmp(oper, '*')
    A * B
elseif strcmp(oper, 'inv')
    A_inv = inv(A)
    B_inv = inv(B)
elseif strcmp(oper, 'inv+')
    inv(A) + inv(B)
elseif strcmp(oper, 'inv-')
    inv(A) + inv(B)
elseif strcmp(oper, 'inv*')
    inv(A) * inv(B)
elseif strcmp(oper, 'scal')
    kA = input('Enter scalar to multiply matrix A: ');
    kB = input('Enter scalar to multiply matrix B: ');
    A_scal = kA * A
    B_scal = kB * B
else
    fprintf('ERROR: Invalid operand.\n')
end