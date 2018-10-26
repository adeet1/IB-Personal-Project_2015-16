clc
format bank

fprintf('COMPOUND INTEREST\n')
fprintf('==============================\n\n')

cont = input('Is the compounding continuous? (Y, N) ', 's');

if strcmp(cont, 'Y')
    principal = input('Enter the principal amount: $');
    intrate = input('Enter the interest rate per period as a number (e.g. for 6%, enter 6): ');
    time = input('Enter the time in years: ');
    
    amount = principal * exp(intrate / 100 * time)
    interest = amount - principal
    
    time_future = input('Enter the number of years to project amount: ');
    time_proj = time + time_future;
    x = [0 : 1 : time_proj];
    y = principal * exp(intrate / 100 * x);
    plot(x, y)
    grid on
    
elseif strcmp(cont, 'N')
    principal = input('Enter the principal amount: $');
    intrate = input('Enter the interest rate per period as a number (e.g. for 6%, enter 6): ');
    comps = input('Enter the number of compoundings per year (e.g. for monthly compounding, enter 12): ');
    time = input('Enter the time in years: ');
    
    Amount = principal * (1 + intrate / (100 * comps)) ^ (comps * time)
    TotalInterestAccumulated = Amount - principal
    GrowthRate = (Amount - principal) / principal * 100
    
    time_future = input('Enter the number of years to project amount: ');
    time_proj = time + time_future;
    x = [0 : 1 : time_proj];
    y1 = principal * (1 + (intrate / 100) / comps) .^ (comps * x);
    y2 = principal * exp(intrate / 100 * x);
    plot(x, y1)
    hold on
    plot(x, y2)
    grid on
    
    fprintf(['The blue curve represents the investment growth with the interest compounding ', num2str(comps), ' times per year.\n'])
    fprintf('The red curve represents the investment growth with the interest compounding continuously.\n')
end

format