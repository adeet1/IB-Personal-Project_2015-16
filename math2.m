clc

fprintf('BASIC MATHEMATICAL OPERATIONS\n')
fprintf('WITH TWO NUMBERS\n')
fprintf('==============================\n\n')

fprintf('List of Operators:\n')
fprintf('+: Adds the two numbers.\n')
fprintf('-: Subtracts the two numbers.\n')
fprintf('*: Multiplies the two numbers.\n')
fprintf('/: Divides the two numbers.\n')
fprintf('MOD: Calculates the remainder when a is divided by b.\n')
fprintf('ROOT: Calculates the bth root of a.\n')
fprintf('\n')

a = input('Enter first number: a = ');
op = input('Enter operator: ', 's');
b = input('Enter second number: b = ');

if strcmp(op, '+')
    a + b
elseif strcmp(op, '-')
    a - b
elseif strcmp(op, '*')
    a * b
elseif strcmp(op, '/')
    a / b
elseif strcmp(op, 'mod')
    mod(a, b)
elseif strcmp(op, 'root')
    nthroot(a, b)
else
    fprintf('ERROR: Invalid operator.\n')
end