% Jim Finnegan
% ES-55 Final Project
% Fluid Flow Around and Airfoil

% choose which shape to analyze
%   options:
%       airfoil (default)
%       circle
sheet = choosesheet;

% read streamline data from excel
psi = xlsread('streamline data', sheet);

% plot streamline absolute values
psi = 100*psi; % amplify for plotting purposes
plotstreamlines(psi)

% adjust psi so velocity can be calculated  with correct sign conventions
%   all values above middle become negative
x = find(psi==0);
for i = 1:x(1)
    psi(i,:) = -psi(i,:);
end

% calculate velocities
%   vx = dPsi/dy
%   vy = -dPsi/dx
%   vtotal = magnitude of component vectors
[m,n] = size(psi); x = 1:n; y = 1:m;
[VY, VX] = gradient(psi);
VY = -VY;
V = sqrt(VX.^2 + VY.^2);

% plot velocities
plotvelocities(VX, VY, V)

% plot quivers
plotquivers(VX,VY)

% surface fit for psi with goodness of fit data
[vyfit, vxfit, vfit, rmse, rsquare] = velocityFit(x, y, psi);

% plot velocities from fit with goodness of fit data
plotfitvelocities(vxfit, vyfit, vfit)

% display goodness of fit data
str = ['Fit Accuracy:' newline '   R^2: ' num2str(rsquare) newline ...
    '   Root mean square error: ' num2str(rmse)];
disp(str);

% plot streamlines and stream particles
animatestreamparticles(VX,VY, x, y)