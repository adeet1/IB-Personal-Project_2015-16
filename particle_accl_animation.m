clc
close all

fprintf('GRAVITATIONAL ACCELERATION OF A\n')
fprintf('FREE-FALLING PARTICLE\n')
fprintf('==============================\n\n')

h0 = input('Enter initial height of object (m): ');
g = input('Enter the magnitude (absolute value) of gravitational acceleration of object (ms^-2): ');

v = -g / 2;

increment = 0.1;
xmin = 1;
xmax = sqrt(h0/(-v));

for i = xmin : increment : xmax
   axis([-1 1 0 h0])
   p = scatter(0, h0 + v*i^2);
   pausetime = (1/h0)/(g*i);
   
   p.MarkerEdgeColor = [0 0 0];
   p.MarkerFaceColor = [1 1 1];
   pause(pausetime)
   
   p.MarkerEdgeColor = [0 0 0];
   p.MarkerFaceColor = [1 1 1];
   pause(pausetime)
   
   p.MarkerEdgeColor = [0 0 0];
   p.MarkerFaceColor = [1 1 1];
   pause(pausetime)
   hold on
   
   delete(findobj(p, 'type', 'patch'));
   if i == xmax
       break
   end
end
%close all