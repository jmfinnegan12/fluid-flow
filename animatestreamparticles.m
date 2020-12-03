function animatestreamparticles(VX,VY, x, y)
% animatestreamparticles(VX, VY)
%
% Inputs:
%   VX - horizontal fluid velocity matrix
%   VY - vertical fluid velocity matrix
% 
% Output:
%   plot of streamlines, animation of particles traveling on streamlines

% Jim Finnegan
% ES-55 Final Project

% code adapted from: https://www.mathworks.com/help/matlab/ref/...
%                               streamparticles.html?s_tid=doc_ta
%   streamparticles matlab function description

% and: https://www.mathworks.com/help/matlab/visualize/...
%           creating-stream-particle-animations.html
%   creating stream particle animations

% calculate streamlines
% start streamlines at x=1 for all y values
starty = y;
startx = ones(size(starty));
verts = stream2(x,y,VX,VY,startx,starty);

% plot streamlines and stream particles
figure
streamline(verts)
set(gca,'SortMethod','childorder');
streamparticles(verts,15,...
	'Animate',10,...
	'MarkerFaceColor','blue');