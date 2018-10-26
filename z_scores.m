clc

fprintf('STANDARDIZED SCORES (NORMAL\n')
fprintf('DISTRIBUTION)\n')
fprintf('==============================\n\n')

fprintf('Information for Distribution 1:\n')
mean1 = input('Mean: ');
stdev1 = input('Standard Deviation: ');
x1 = input('X: ');

Z1 = (x1 - mean1) / stdev1

fprintf('Information for Distribution 2:\n')
mean2 = input('Mean: ');
stdev2 = input('Standard Deviation: ');
x2 = input('X: ');

Z2 = (x2 - mean2) / stdev2

syms x
distr1 = 1 / (stdev1 * sqrt(2 * pi)) * exp(-(x - mean1)^2 / (2 * stdev1 ^ 2))
distr2 = 1 / (stdev2 * sqrt(2 * pi)) * exp(-(x - mean2)^2 / (2 * stdev2 ^ 2))

ezplot(distr1)
hold on
ezplot(distr2)
grid on