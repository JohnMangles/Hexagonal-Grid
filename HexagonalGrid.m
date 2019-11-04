function [ output_args ] = HexagonalGrid(N, M, theta)
% Generate hexagonal grid
r= sqrt(3) / 2;
[x y] = meshgrid(0:1:N);%generates a grid of user specified size
n = size(x,1);
%for j=1:N
%x = r * x(j);
%end
x=x*r;
%for i=1:M
%y = y(i) + repmat([0 0.5],[n,n/2]);
% Plot the hexagonal grid
y=y+repmat([0 0.5],[n,n/2]);
[X Y] = voronoi(x(:),y(:));
o=x+cos(theta);%currently rotates the given grid 9 degrees by switching axes
p=y+sin(theta);%same
[O P] = voronoi(o(:),p(:));
plot(X,Y,'b-');%plots first grid in blue
hold on
plot(O,P,'r-')%plots rotated grid in red
axis equal, axis([0 M 0 N]), zoom on
end

