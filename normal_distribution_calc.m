clc

fprintf('NORMAL DISTRIBUTION (NORMALCDF\n')
fprintf('AND INVNORM)\n')
fprintf('==============================\n\n')

mean = input('Mean = ');
stdev = input('Standard Deviation = ');
fprintf('\n')

fprintf('Calculations:\n')
fprintf('1 = normalcdf, 2 = invNorm\n')

choice = input('Enter your choice: ');
fprintf('\n')
if choice == 1
    lower = input('Lower bound: ');
    upper = input('Upper bound: ');
    if lower > upper
        fprintf('ERROR: Lower bound is greater than upper bound.\n')
        PressOK
    end
    x = [lower, upper];
    
    area = normcdf(x, mean, stdev);
    Area = area(1, 2) - area(1, 1)
elseif choice == 2
    area = input('Area (must be between 0 and 1): ');
    X = norminv(area, mean, stdev)
end