function [vyfit, vxfit, vfit, rmse, rsquare, sse] = velocityFit(x, y, psi)
% velocityFit(x, y, psi)
% Surface fit of streamline data to find velocity
%
% Inputs
%   x: input x vector
%   y: inpup y vector
%   psi: streamline matrix
%
% Outputs
%   vyfit: y velocity of fluid 
%   vxfit: x velocity of fluid
%   gof: goodness of fit data

% Jim Finnegan
% ES-55 Final Project


% create, plot fit
[fitresult, gof] = createFit(x, y, psi);

% goodness of fit data
rmse = gof.rmse;
rsquare = gof.rsquare;

% calculate velocities by differentiating fit%   
%   vx = dPsi/dy
%   vy = -dPsi/dx
%   vtotal = magnitude of component vectors
[xx, yy] = meshgrid(x, y);
[vyfit, vxfit] = differentiate(fitresult, xx, yy);
vyfit = -vyfit;
vfit = sqrt(vyfit.^2 + vxfit.^2);

