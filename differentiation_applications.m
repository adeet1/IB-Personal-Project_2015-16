clc
close all

fprintf('APPLICATIONS OF DERIVATIVES\n')
fprintf('==============================\n\n')
fprintf('   n      n - 1      n - 2\n')
fprintf('a x  + a x      + a x      + ... + a  = 0\n')
fprintf(' 1      2          3                n\n\n')

deg = input('Enter degree of polynomial (1 = linear, 2 = quadratic, 3 = cubic, 4 = quartic, and so on): ');
a = zeros(1, deg);
CurrentPolynomial = 0;
syms x

for i = 1 : deg
    fprintf('Enter value for a\n')
    a(1, i) = input(['                 ', num2str(i), ': ']);
    CurrentPolynomial = CurrentPolynomial + a(1, i) * x^(deg - i + 1)
end

% Ask for y-intercept of graph
fprintf('Enter value for a\n')
a(1, deg + 1) = input(['                 ', num2str(deg + 1), ': ']);
CurrentPolynomial = CurrentPolynomial + a(1, deg + 1)

fprintf('Graph Window:\n')
xmin = input('Minimum X value: ');
xmax = input('Maximum X value: ');
ymin = input('Minimum Y value: ');
ymax = input('Maximum Y value: ');

fprintf('\n')
fprintf('The interval you specify will be used for calculating any values of a constant c at which the tangent line''s slope is either 0 or equal to the slope of the secant line between the two points.\n\n')
left = input('Enter left bound: ');
right = input('Enter right bound: ');

clc
y = CurrentPolynomial
Interval = [left, right]

% Find x-intercepts
X_Intercepts = [solve(y, x), 0]

% Find critical points using the first derivative test
dy = diff(y);
d2y = diff(dy);
d3y = diff(d2y);

xcrit = solve(dy, x);
ycrit = subs(y, xcrit);
CriticalPoints = [xcrit, ycrit]

fprintf('Note that these are only the critical points where the derivative at that point is zero.\n\n')

% Find inflection points using the second derivative test
xinfl_possible = solve(d2y, x);
yinfl_possible = subs(y, xinfl_possible);

PossibleInflectionPoints = [xinfl_possible, yinfl_possible]

%{
if d3y == 0
    inflcheck_left = d2y;
    inflcheck_right = d2y;
else
    inflcheck_left = subs(d2y, xinfl_possible - 1);
    inflcheck_right = subs(d2y, xinfl_possible + 1);
end

if inflcheck_left < 0
    if inflcheck_right > 0
        
    end
elseif inflcheck_left > 0
    if inflcheck_right < 0
        InflectionPoints = [xinfl_possible, yinfl_possible]
    end
elseif inflcheck_left < 0 && inflcheck_right < 0
    fprintf('There are no inflection points.\n\n')    
elseif inflcheck_left > 0 && inflcheck_right > 0
    fprintf('There are no inflection points.\n\n')
end
%}
fprintf('Black dots represent x-intercepts*.\n')
fprintf('Red dots represent critical points (where the derivative is zero).\n')
fprintf('Blue dots represent inflection points.\n\n')
fprintf('Note that only the real part of a complex number point will be shown on the graph. For this reason, points that are complex numbers may not appear on the curve.\n')
ezplot(y)
axis([xmin xmax ymin ymax])
grid on
hold on

for i = 1 : deg
    int = scatter(X_Intercepts(i, 1), 0);
    int.MarkerEdgeColor = [0 0 0];
    int.MarkerFaceColor = [0 0 0];
end

for i = 1 : (deg - 1)
int = scatter(xcrit(i, 1), ycrit(i,1));
int.MarkerEdgeColor = [1 0 0];
int.MarkerFaceColor = [1 0 0];
end
