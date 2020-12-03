function plotstreamlines(psi)
% plotstreamlines(psi)
% 
% Inputs:
%   psi - streamline data matrix
% 
% Outputs:
%   contour plot of streamlines

% Jim Finnegan
% ES-55 Final Project

% plot streamlines
figure
contour(psi); colorbar; title('streamlines'); xlabel('x'); ylabel('y')