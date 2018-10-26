clc

fprintf('LINEAR TRANSFORMATIONS\n')
fprintf('==============================\n\n')
fprintf('Below are instructions on how linear transformations work:\n\n')
fprintf('This is a system of linear transformation equations:\n')
fprintf('x = ax0 + by0\n')
fprintf('y = cx0 + dx0\n')
fprintf('where x and y are the coordinates of the new point, and x0 and y0 are the coordinates of the initial point.\n\n')
fprintf('The above system of equations can also be written in matrix form:\n')
fprintf('| x | = | a  b | | x0 |\n')
fprintf('| y |   | c  d | | y0 |\n\n')

fprintf('Which values would you like to calculate?\n')
fprintf('1 = I have the transformation matrix and initial point. I want to calculate the new point.\n')
fprintf('2 = I have the transformation matrix and new point. I want to calculate the initial point.\n')
fprintf('3 = I have two initial points and two new points. I want to calculate the transformation matrix.\n')
fprintf('To exit the linear transformation command, press Enter.\n\n')
mode = input('Enter the number that corresponds with your choice: ');
fprintf('\n')

if mode == 1
    a = input('a = ');
    b = input('b = ');
    c = input('c = ');
    d = input('d = ');
    x0 = input('x0 = ');
    y0 = input('y0 = ');

    init = [x0; y0];
    trans = [a, b; c, d];
    new = trans * init;
    x = new(1, 1)
    y = new(2, 1)
elseif mode == 2
    a = input('a = ');
    b = input('b = ');
    c = input('c = ');
    d = input('d = ');
    x = input('x = ');
    y = input('y = ');

    new = [x; y];
    trans = [a, b; c, d];
    init = inv(trans) * new;
    x0 = init(1, 1)
    y0 = init(2, 1)
elseif mode == 3
    fprintf('Point format: (x0_1, y0_1) -> (x_1, y_1)\n');
    fprintf('              (x0_2, y0_2) -> (x_2, y_2)\n\n');
    x0_1 = input('x0 (1st initial point): ');
    y0_1 = input('y0 (1st initial point): ');
    x_1 = input('x (1st new point): ');
    y_1 = input('y (1st new point): ');
    x0_2 = input('x0 (2nd initial point): ');
    y0_2 = input('y0 (2nd initial point): ');
    x_2 = input('x (2nd new point): ');
    y_2 = input('y (2nd new point): ');
    
    init = [x0_1, x0_2; y0_1, y0_2];
    new = [x_1, x_2; y_1, y_2];
    trans = new * inv(init)
else
    fprintf('ERROR: Invalid choice.\n')
    PressOK
    MATHBOX_Application
end