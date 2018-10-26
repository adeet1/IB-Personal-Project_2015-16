clc
close all

fprintf('VECTORS\n')
fprintf('==============================\n\n')

u_startx = input('Enter x-coordinate of the initial point of vector u: ');
u_starty = input('Enter y-coordinate of the initial point of vector u: ');
u_startz = input('Enter z-coordinate of the initial point of vector u: ');
v_startx = input('Enter x-coordinate of the initial point of vector v: ');
v_starty = input('Enter y-coordinate of the initial point of vector v: ');
v_startz = input('Enter z-coordinate of the initial point of vector v: ');
cross_startx = input('Enter x-coordinate of the initial point of the cross product: ');
cross_starty = input('Enter y-coordinate of the initial point of the cross product: ');
cross_startz = input('Enter z-coordinate of the initial point of the cross product: ');
u1 = input('Enter x component of vector u: ');
u2 = input('Enter y component of vector u: ');
u3 = input('Enter z component of vector u: ');
v1 = input('Enter x component of vector v: ');
v2 = input('Enter y component of vector v: ');
v3 = input('Enter z component of vector v: ');

u_start = [u_startx, u_starty, u_startz];
v_start = [v_startx, v_starty, v_startz];
cross_start = [cross_startx, cross_starty, cross_startz];
v = zeros(1, 3)
v(1, :) = [u1, u2, u3];
v(2, :) = [v1, v2, v3];

% Angle between vectors u and v
dot = v(1, 1) * v(2, 1) + v(1, 2) * v(2, 2) + v(1, 3) * v(2, 3);
mag_u = sqrt(v(1, 1) ^ 2 + v(1, 2) ^ 2 + v(1, 3) ^ 2);
mag_v = sqrt(v(2, 1) ^ 2 + v(2, 2) ^ 2 + v(2, 3) ^ 2);
disp(['Dot product of u and v: ', num2str(dot)])
angle = acos(dot / (mag_u * mag_v)) * (180 / pi);
disp(['Angle between vectors u and v: ', num2str(angle), ' DEG'])

% Cross product
i = det([v(1, 2), v(1, 3); v(2, 2), v(2, 3)]);
j = det([v(1, 1), v(1, 3); v(2, 1), v(2, 3)]);
k = det([v(1, 1), v(1, 2); v(2, 1), v(2, 2)]);
v(3, :) = [i, -j, k];

all_start = [u_start; v_start; cross_start]';
hold all
for i = 1:3
    quiver3(all_start(1, i), all_start(1, i), all_start(1, i), v(i, 1), v(i, 2), v(i, 3))
end
grid()