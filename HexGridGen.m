function X = HexGridGen( M, N, theta, l )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A1 = [1/2 1/2; sqrt(3)/2 -sqrt(3)/2]*l;%Haven't used cuz why?
X = zeros(2,M*N*4);%initialize
X1 = zeros(2,M*N*4);
X2 = zeros(2,M*N*4);
R = [cos(theta) -sin(theta); sin(theta) cos(theta)]
i = 1;

for n = 0:N-1
    for m = 0:M-1
       X(:,i) = [m;n];%Left edge point of hex's
       X(:,i+1) = [m+1/3;n];%Center point
       X(:,i+2*M) = [m+sqrt(3)/6+1/3;n+1/2];%Left edge of shifter hex (next y-value of shifter layer)
       X(:,i+2*M+1) = X(:,i+2*M) + [1/3;0];%Center point of guy
       i = i + 2;%Move to next hex with same y-value
    end
    i = i + 2*M;%Moves to next row of stacked and shifted hexs
end
X1 = X
X2 = R*X
end

