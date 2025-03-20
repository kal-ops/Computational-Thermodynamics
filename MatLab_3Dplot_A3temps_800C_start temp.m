clc

data = A3tempscleanedup;

% Load the data table 
dataTable = readtable('A3 temps cleaned up.csv');

% Extract the columns from the table
Mn = dataTable.MassPercentMn;  % Column for Mn
Si = dataTable.MassPercentSi;  % Column for Si
Al = dataTable.MassPercentAl;  % Column for Al
A3 = dataTable.A3;  % Column for A3 (used for coloring)


% Create the 3D scatter plot with colormap
scatter3(Mn, Si, Al, 50, A3, 'filled');  % '50' is the marker size

% Apply a colormap
colormap(hot);

% Add labels and title
xlabel('Mn');
ylabel('Si');
zlabel('Al');
title('3D Scatter Plot of Mn, Si, and Al (Colored by A3)');

% Enable grid for better visualization
grid on;

% Add a colorbar to indicate A3 values
colorbar;
clim([min(A3) max(A3)]);
disp([min(A3_normalized), max(A3_normalized)]);
colormap