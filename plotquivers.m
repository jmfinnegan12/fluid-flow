function plotquivers(VX,VY)
% plotquivers(VX,VY)
%
% Inputs:
%   VX - horizontal fluid velocity matrix
%   VY - vertical fluid velocity matrix
% 
% Output:
%   quiver plot of velocity vectors

% Jim Finnegan
% ES-55 Final Project

% plot quivers
figure
quiver(VX,VY)
title('Quiver Plot of Velocity Vectors'); xlabel('x'); ylabel('y')