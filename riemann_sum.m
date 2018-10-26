clc
close all

fprintf('RIEMANN SUMS\n')
fprintf('==============================\n\n')

syms x
f = input('Enter a function: f(x) = ');
subint = input('Enter the number of sub-intervals to use to calculate the Riemann sum: ');
int_l = input('Enter the left end of the interval: ');
int_r = input('Enter the right end of the interval: ');

% f = sin(x)^2;
% subint = 4;
% int_l = 0;
% int_r = pi/2;

int_ly = subs(f, int_l);
int_ry = subs(f, int_r);

% ezplot(f)
% grid on

delta = (int_r - int_l) / subint;
sum_L = 0;
sum_R = 0;
sum_M = 0;

for i = int_l : delta : (int_r - delta)
    f_num = subs(f, i);
    sum_L = sum_L + delta * f_num;
end
fprintf('\nLeft-hand Riemann sum:\n')
pretty(sum_L)

for i = (int_l + delta) : delta : int_r
    f_num = subs(f, i);
    sum_R = sum_R + delta * f_num;
end
fprintf('\nRight-hand Riemann sum:\n')
pretty(sum_R)

for i = (int_l + delta) / 2 : delta : int_r
    f_num = subs(f, i);
    sum_M = sum_M + delta * f_num;
end
fprintf('\nMidpoint Riemann sum:\n')
pretty(sum_M)