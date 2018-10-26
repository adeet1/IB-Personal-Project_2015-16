clc

fprintf('COMPLETING THE SQUARE\n')
fprintf('==============================\n\n')

fprintf('y = ax^2 + bx + c\n')

a = input('a = ');

if a == 0
    fprintf('ERROR: Value of a cannot be zero.\n')
    PressOK
    break
end

b = input('b = ');
c = input('c = ');

% Values are computed using the form y = a(x - h)^2 + k

h = -b / (2 * a);
k = c - b ^ 2 / (4 * a);

if h > 0
    if k > 0
        fprintf(['y = ', num2str(a), '(x - ', num2str(h), ')^2 + ', num2str(k), '\n'])
    elseif k == 0
        fprintf(['y = ', num2str(a), '(x - ', num2str(h), ')^2\n'])
    elseif k < 0
        fprintf(['y = ', num2str(a), '(x - ', num2str(h), ')^2 - ', num2str(abs(k)), '\n'])
    end
elseif h == 0
    if k > 0
        fprintf(['y = ', num2str(a), 'x^2 +', num2str(k), '\n'])
    elseif k == 0
        fprintf(['y = ', num2str(a), 'x^2\n'])
    elseif k < 0
        fprintf(['y = ', num2str(a), 'x^2 -', num2str(abs(k)), '\n'])
    end
elseif h < 0
    if k > 0
        fprintf(['y = ', num2str(a), '(x + ', num2str(abs(h)), ')^2 + ', num2str(k), '\n'])
    elseif k == 0
        fprintf(['y = ', num2str(a), '(x + ', num2str(abs(h)), ')^2\n'])
    elseif k < 0
        fprintf(['y = ', num2str(a), '(x + ', num2str(abs(h)), ')^2 - ', num2str(abs(k)), '\n'])
    end
end