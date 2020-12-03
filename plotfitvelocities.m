function plotfitvelocities(vxfit, vyfit, vfit)
% plotvelocities
% 
% Inputs:
%   vxfit - horizontal fluid velocity matrix, differentiated from fit
%   vyfit - vertical fluid velocity matrix, differentiate from fit
%   vfit - total fluid velocity matrix, differentiated from fit
%
% Outputs:
%   Contour plots of each input on a 3x1 subplot figure

% Jim Finnegan
% ES-55 Final Project

% plot velocities from fit with goodness of fit data
figure
subplot(3,1,1)
contour(vxfit); title('Horizontal Fluid Velocity from Surface Fit')
colorbar; xlabel('x'); ylabel('y')

subplot(3,1,2)
contour(vyfit); title('Vertical Fluid Velocity from Surface Fit')
colorbar; xlabel('x'); ylabel('y')

subplot(3,1,3)
contour(vfit); title('Total Fluid Velocity from Surface Fit')
colorbar; xlabel('x'); ylabel('y')