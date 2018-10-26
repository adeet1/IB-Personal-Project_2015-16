clc

fprintf('BASIC MATHEMATICAL FUNCTIONS\n')
fprintf('WITH ONE NUMBER\n')
fprintf('==============================\n\n')

fprintf('List of Functions:\n')
fprintf('ABS: Calculates the absolute value of a number.\n')
fprintf('LN: Calculates the natural logarithm (base e) of a number.\n')
fprintf('SQRT: Calculates the square root of a number.\n')
fprintf('\n')

x = input('Enter a number: ');
func = input('Enter a function: ', 's');

if strcmp(func, 'abs')
    if x >= 0
        ans = x
    elseif x < 0
        -x
    end
elseif strcmp(func, 'ln')
    log(x)
elseif strcmp(func, 'sqrt')
    sqrt(x)
end