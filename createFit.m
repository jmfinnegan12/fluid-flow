function [fitresult, gof] = createFit(x, y, psi)
%CREATEFIT(X,Y,PSI)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : x
%      Y Input : y
%      Z Output: psi
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 07-Dec-2017 17:27:16
%       using 'cftool' app


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( x, y, psi );

% Set up fittype and options.
ft = fittype( 'poly55' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, 'Normalize', 'on' );

% Plot fit with data.
figure( 'Name', 'Surface Fit' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'Surface Fit', 'psi vs. x, y', 'Location', 'NorthEast' );
% Label axes
xlabel x
ylabel y
zlabel psi
grid on


