function plotvelocities(VX, VY, V)
% plotvelocities
% 
% Inputs:
%   VX - horizontal fluid velocity matrix
%   VY - vertical fluid velocity matrix
%   V - total fluid velocity matrix
%
% Outputs:
%   Contour plots of each input on a 3x1 subplot figure

% Jim Finnegan
% ES-55 Final Project

% plot velocities
figure
subplot(3,1,1)
contour(VX) % horizontal velocity
colorbar; title('Horizontal Fluid Velocity'); xlabel('x'); ylabel('y')

subplot(3,1,2)
contour(VY) % vertical velocity
colorbar; title('Vertical Fluid Velocity'); xlabel('x'); ylabel('y')

subplot(3,1,3)
contour(V) % total velocity
colorbar; title('Total Fluid Velocity'); xlabel('x'); ylabel('y')