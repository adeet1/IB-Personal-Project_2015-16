clc

fprintf('SUM OF ARITHMETIC AND GEOMETRIC\n')
fprintf('SERIES\n')
fprintf('==============================\n\n')

fprintf('Below are the choices to calculate the sum of the following types of series:\n')
fprintf('1 = arithmetic series (using # of terms, first term, and last term)\n')
fprintf('2 = arithmetic series (using # of terms, first term, and common difference)\n')
fprintf('3 = geometric series\n')
fprintf('4 = infinite geometric series\n')
seq = input('Enter the number that corresponds to the series you would like to calculate the sum of: ');

if seq == 1
    n = input('Enter the # of terms in the series: ');
    a1 = input('Enter the first term of the series: ');
    an = input('Enter the last term of the series: ');
    sum = n / 2 * (a1 + an)
elseif seq == 2
    n = input('Enter the # of terms in the series: ');
    a1 = input('Enter the first term of the series: ');
    d = input('Enter the common difference of the series: ');
    sum = n / 2 * (2 * a1 + (n - 1) * d)
elseif seq == 3
    n = input('Enter the # of terms in the series: ');
    a1 = input('Enter the first term of the series: ');
    r = input('Enter the common ratio of the series: ');
    sum = a1 * (r^n - 1) / (r - 1)
elseif seq == 4
    a1 = input('Enter the first term of the series: ');
    r = input('Enter the common ratio of the series: ');
    fprintf('\n')

    if abs(r) < 1
        sum = a1 / (1 - r)
    else
        fprintf('Sum does not exist. The series diverges.\n')
        pause(3)
    end
end